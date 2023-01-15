import 'dart:io';
import 'package:boiler/model/boilerModel.dart';
import 'package:boiler/pdf_genarate/pdf_api.dart';
import 'package:boiler/view/ExistingBoilerSystemDetails/ExistingBoilerSystemDetails.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';

class PdfBoilerApi {
  static Future<File> generate(BoilerModel boilerModel) async {
    final pdf = Document();
    List<Widget> images = [];
    for (int i = 0; i < boilerModel.images!.length; i++) {
      images.add(await buildImage(boilerModel.images![i]));
    }
    //final font = await PdfGoogleFonts.nunitoExtraLight();

    pdf.addPage(MultiPage(
      build: (context) {
        return [
          //buildHeader(boilerModel),
          buildTitle(),
          Divider(),

          SizedBox(height: 1 * PdfPageFormat.cm),
          buildSubTitle('BOILER TECHNICAL SURVEY'),
          buildBoilerTechSurvey(boilerModel),

          SizedBox(height: 0.5 * PdfPageFormat.cm),
          buildSubTitle('CUSTOMER/PROPERTY DETAILS'),
          buildCustPropDetailsSurvey(boilerModel),


          SizedBox(height: 0.5 * PdfPageFormat.cm),
          buildSubTitle('EXISTING BOILER SYSTEM DETAILS'),
          buildExistingBoilerSystemDetails(boilerModel),

          SizedBox(height: 0.5 * PdfPageFormat.cm),
          buildSubTitle('PROPOSED NEW BOILER SYSTEM DETAILS'),
          buildProposedNewBoilerSystemDetails(boilerModel),


          SizedBox(height: 0.5 * PdfPageFormat.cm),
          buildSubTitle('ELECTRICAL WORKS'),
          buildElectricalSystem(boilerModel),

          SizedBox(height: 0.5 * PdfPageFormat.cm),
          buildSubTitle('Required images'),
          buildRequiredImages(images)
        ];
      },
      //footer: (context) => buildFooter(invoice),
    ));
    return PdfApi.saveDocument(
        name: 'Boiler_Survey ${boilerModel.surveydate}.pdf', pdf: pdf);
  }

  static Future<Widget> buildImage(String url) async {
    final netImage = await networkImage(url);
    return Padding(
        padding: EdgeInsets.all(5 * PdfPageFormat.mm),
        child: Center(
          child: Image(netImage, width: 12 * PdfPageFormat.cm),
        ));
  }

  static Widget buildTitle() {
    return Center(
      child: Text(
        'Boiler Survey',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  static Widget buildSubTitle(String subtitle) {
    return Text(
      subtitle,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  static buildSimpleText({
    required String title,
    required String value,
  }) {
    final style = TextStyle(fontWeight: FontWeight.bold);

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(title, style: style),
        SizedBox(width: 2 * PdfPageFormat.mm),
        Text(value),
      ],
    );
  }

  static buildText({
    required String title,
    required String value,
    double width = double.infinity,
    TextStyle? titleStyle,
    bool unite = false,
  }) {
    final style = titleStyle ?? TextStyle(fontWeight: FontWeight.bold);

    return Container(
      width: width,
      child: Row(
        children: [
          Expanded(child: Text(title, style: style)),
          Text(value, style: unite ? style : null),
        ],
      ),
    );
  }

  static buildBoilerTechSurvey(BoilerModel boilerModel) {
    return SizedBox(
        width: 15 * PdfPageFormat.cm,
        child: Padding(
          padding: EdgeInsets.all(5 * PdfPageFormat.mm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(title: 'Install date: ', value: boilerModel.installDate!),
              buildText(title: 'Install type: ', value: boilerModel.installType!),
              buildText(title: 'Manpower: ', value: boilerModel.manPower!),
              buildText(title: 'Survey Date: ', value: boilerModel.surveydate!),
            ],
          ),
        ));
  }

  static buildCustPropDetailsSurvey(BoilerModel boilerModel) {
    return SizedBox(
        width: 15 * PdfPageFormat.cm,
        child: Padding(
          padding: EdgeInsets.all(5 * PdfPageFormat.mm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(
                  title: 'Customer Name: ', value: boilerModel.customername!),
              buildText(
                  title: 'Property address: ',
                  value: boilerModel.propertyaddress!),
              buildText(title: 'Post code: ', value: boilerModel.postcode!),
              buildText(
                  title: 'Customer contact: ',
                  value: boilerModel.customerContact!),
              buildText(title: 'Fuel Type: ', value: boilerModel.fuelType!),
              buildText(title: 'Lime Scale Reducer Required: ', value: boilerModel.limeScaleReducerRequired!),
            ],
          ),
        ));
  }



  static buildExistingBoilerSystemDetails(BoilerModel boilerModel) {
    return SizedBox(
        width: 15 * PdfPageFormat.cm,
        child: Padding(
          padding: EdgeInsets.all(5 * PdfPageFormat.mm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              buildText(title: 'Make/Model: ', value: boilerModel.newMakeModel!),
              buildText(title: 'Boiler type: ', value: boilerModel.newBoilerType!),
              buildText(title: 'Boiler Position: ', value: boilerModel.newBoilerPosition!),
              buildText(title: 'Boiler location: ', value: boilerModel.newBoilerLocation!),
              buildText(title: 'Existing heating control: ', value: boilerModel.existingHeatingControl!),
              buildText(title: 'Asbestos Removal: ', value: boilerModel.existingRemoval!),
              buildText(title: 'Comments: ', value: boilerModel.existingComments!),

            ],
          ),
        ));
  }

  static buildProposedNewBoilerSystemDetails(BoilerModel boilerModel) {
    return SizedBox(
        width: 15 * PdfPageFormat.cm,
        child: Padding(
          padding: EdgeInsets.all(5 * PdfPageFormat.mm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(
                  title: 'Make and model: ', value: boilerModel.newMakeModel!),
              buildText(
                  title: 'Boiler Type: ', value: boilerModel.newBoilerType!),
              buildText(
                  title: 'Boiler Position: ',
                  value: boilerModel.newBoilerPosition!),
              buildText(
                  title: 'Boiler Location: ',
                  value: boilerModel.newBoilerLocation!),
              buildText(
                  title: 'Flue Orientation: ',
                  value: boilerModel.newFuelOrientation!),
              buildText(
                  title: 'Plume kit required: ',
                  value: boilerModel.newPlumeKitReq!),
              buildText(
                  title: 'New heating control: ',
                  value: boilerModel.newHeatingControl!),
              buildText(
                  title: 'New heating control location(s): ',
                  value: boilerModel.newHeatingControlLocation!),
              buildText(
                  title: 'Gas Upgrade Required: ',
                  value: boilerModel.newUpgradeReq!),
              buildText(
                  title: 'New Condensate location: ',
                  value: boilerModel.newCondensateLocation!),
              buildText(
                  title: 'New pumps(s) to be installed: ',
                  value: boilerModel.newPumpInstalled!),
              buildText(
                  title: 'New zone Valve to be installed: ',
                  value: boilerModel.newZoneValve!),
              buildText(
                  title: 'Is a brick up required: ',
                  value: boilerModel.newIsBrickUpReq!),
              buildText(
                  title: 'New radiator & Trv\'s & lock-shield: ',
                  value: boilerModel.newRadiaterTrv!),
              buildText(
                  title: 'Gas: ',
                  value: boilerModel.newGas!),
              buildText(
                  title: 'GFlow and Return: ',
                  value: boilerModel.newGFlowReturn!),
              buildText(
                  title: 'Hot and Cold: ',
                  value: boilerModel.newHotAndCold!),
              buildText(
                  title: 'Condensate: ',
                  value: boilerModel.newCondensate!),
              buildText(
                  title: 'Access: ',
                  value: boilerModel.newAccess!),
              buildText(
                  title: 'Ladders: ',
                  value: boilerModel.newLadders!),
              buildText(
                  title: 'Additional Notes: ',
                  value: boilerModel.makeAdditionalNotes!),
            ],
          ),
        ));
  }


  static buildElectricalSystem(BoilerModel boilerModel) {
    return SizedBox(
        width: 15 * PdfPageFormat.cm,
        child: Padding(
          padding: EdgeInsets.all(5 * PdfPageFormat.mm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(
                  title: 'Electrician required on site: ',
                  value: boilerModel.electricianReq!),
              buildText(
                  title: 'What does the electrician need to do: ', value: boilerModel.whatElectricianDo!),
              buildText(
                  title: 'What controls are we fitting: ',
                  value: boilerModel.whatControlFitting!),
            ],
          ),
        ));
  }

  static buildRequiredImages(List<Widget> images) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return images[index];
        },
        itemCount: images.length);
  }
}
