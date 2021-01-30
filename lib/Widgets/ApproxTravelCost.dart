import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobility_sqr/Constants/AppConstants.dart';
import 'package:mobility_sqr/ModelClasses/PerDiemModelClass.dart';
import 'package:sizer/sizer.dart';
import 'package:currency_pickers/country.dart';
import 'package:flutter/cupertino.dart';
import 'package:currency_pickers/currency_pickers.dart';
import 'package:mobility_sqr/ModelClasses/AddReqPayLoad.dart';

class ApproxTravelCost extends StatefulWidget {
  TravelReqPayLoad list;
  PerDiemModel perDiem;

  ApproxTravelCost(TravelReqPayLoad this.list,this.perDiem);

  @override
  _ApproxTravelCostState createState() => _ApproxTravelCostState(list,perDiem);
}

class _ApproxTravelCostState extends State<ApproxTravelCost> {
  @override
  String dropdownValue = 'Select Currency';
  PerDiemModel perDiem;
   TravelReqPayLoad list;
  int _current = 0;

  Country _selectedDialogCountry;

  _ApproxTravelCostState(this.list,this.perDiem);


  Widget build(BuildContext context) {
    List<Widget> CostList = list.travelCity.map((item) {
      int index = list.travelCity.indexOf(item);
      return
        Container(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(height: 40,),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Reporting Currency",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: AppConstants.APP_THEME_COLOR,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _openCurrencyPickerDialog();
                          },
                          child: Container(
                            child: Text(
                              "Select Currency",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20.0),
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              ApproxTravelRowWidget("City Name", "${item.destinationCity+"("+item.currency+")"}"),
              SizedBox(height: 30),
              ApproxTravelRowWidget("Per-diems", "${list.travelCity[index].perDiemCost}"),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Airfare",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20.0),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 35,
                      child: TextField(
                        keyboardType:
                        TextInputType.numberWithOptions(signed: true),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.0),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                    AppConstants.APP_THEME_COLOR))),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              ApproxTravelRowWidget("Hotel", "${list.travelCity[index].hotelCost}"),
              SizedBox(height: 30),
              ApproxTravelRowWidget("Transportation", "${list.travelCity[index].transportationCost}"),
              SizedBox(height: 30),
              ApproxTravelRowWidget("Total", "${list.travelCity[index].totalCost}"),
              SizedBox(height: 30),
              ApproxTravelRowWidget("Total (Currency)", "10,000"),
            ],
          ),
      ));
      }).toList();
    return Container(
      height: 100.0.h,
      width: 100.0.w,
      child: Column(
          children: [
            CarouselSlider(
              items: CostList,
              options: CarouselOptions(
                    enableInfiniteScroll: false,
                  aspectRatio: 2.0,
                  height: 60.0.h,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: CostList.map((url) {
                int index = CostList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? AppConstants.APP_THEME_COLOR
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
          ]
      ),

    );
  }






  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CurrencyPickerUtils.getDefaultFlagImage(country),
          SizedBox(width: 8.0),
          Text("+${country.currencyCode}"),
          SizedBox(width: 8.0),
          Flexible(child: Text(country.name))
        ]
      );

  void _openCurrencyPickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
            data: Theme.of(context).copyWith(primaryColor: Colors.pink),
            child: CurrencyPickerDialog(
                titlePadding: EdgeInsets.all(8.0),
                searchCursorColor: Colors.pinkAccent,
                searchInputDecoration: InputDecoration(hintText: 'Search...'),
                isSearchable: true,
                title: Text('Select your Currency'),
                onValuePicked: (Country country) =>
                    setState(() => _selectedDialogCountry = country),
                itemBuilder: _buildDialogItem)),
      );
}

class ApproxTravelRowWidget extends StatelessWidget {
  ApproxTravelRowWidget(this.keyName, this.value);

  final String keyName;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Container(
            child: Text(
              keyName,
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
            ),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          flex: 6,
          child: Container(
            child: Text(
              value,
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
            ),
          ),
        ),
      ],
    );
  }
}



class CostModel{
  double _hotel=0;
  double _transportation=0;
  double _perDiems=0;
  double _airfare=0;
  double _total=0;
  double _totalCurrency=0;


  CostModel(this._hotel, this._transportation, this._perDiems, this._airfare,
      this._total, this._totalCurrency);

  double get hotel => _hotel;

  set hotel(double value) {
    _hotel = value;
  }

  double get transportation => _transportation;

  set transportation(double value) {
    _transportation = value;
  }

  double get perDiems => _perDiems;

  set perDiems(double value) {
    _perDiems = value;
  }

  double get airfare => _airfare;

  set airfare(double value) {
    _airfare = value;
  }

  double get total => _total;

  set total(double value) {
    _total = value;
  }

  double get totalCurrency => _totalCurrency;

  set totalCurrency(double value) {
    _totalCurrency = value;
  }
}


