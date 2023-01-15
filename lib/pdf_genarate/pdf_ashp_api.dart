import 'dart:io';
import 'package:boiler/model/ASHPModel.dart';
import 'package:boiler/pdf_genarate/pdf_api.dart';
import 'package:boiler/view/ExistingBoilerSystemDetails/ExistingBoilerSystemDetails.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';

class PdfASHPApi {
  static Future<File> generate(ASHPModel ashpModel) async {
    final pdf = Document();
    List<Widget> images = [];
    for (int i = 0; i < ashpModel.images!.length; i++) {
      images.add(await buildImage(ashpModel.images![i]));
    }
    //final font = await PdfGoogleFonts.nunitoExtraLight();

    pdf.addPage(MultiPage(
      build: (context) {
        return [
          //buildHeader(ashpModel),
          buildTitle(),
          Divider(),

          SizedBox(height: 1 * PdfPageFormat.cm),
          buildSubTitle('ASHP TECHNICAL SURVEY'),
          buildASHPTechSurvey(ashpModel),

          SizedBox(height: 0.5 * PdfPageFormat.cm),
          buildSubTitle('CUSTOMER/PROPERTY DETAILS'),
          buildCustPropDetailsSurvey(ashpModel),

          SizedBox(height: 0.5 * PdfPageFormat.cm),
          buildSubTitle('Property Details'),
          buildPropertyDetails(ashpModel),

          SizedBox(height: 0.5 * PdfPageFormat.cm),
          buildSubTitle('EXISTING BOILER SYSTEM DETAILS'),
          buildExistingBoilerSystemDetails(ashpModel),

          SizedBox(height: 0.5 * PdfPageFormat.cm),
          buildSubTitle('PROPOSED NEW ASHP SYSTEM DETAILS'),
          buildProposedNewASHPSystemDetails(ashpModel),

          SizedBox(height: 0.5 * PdfPageFormat.cm),
          buildSubTitle('PROPOSED NEW CYLINDER'),
          buildProposedNewCylinder(ashpModel),

          SizedBox(height: 0.5 * PdfPageFormat.cm),
          buildSubTitle('EXISTING RADIATOR AND LOCATION'),
          buildExistingRadiatorAndLocation(ashpModel),

          SizedBox(height: 0.5 * PdfPageFormat.cm),
          buildSubTitle('ELECTRICAL SYSTEM'),
          buildElectricalSystem(ashpModel),

          SizedBox(height: 0.5 * PdfPageFormat.cm),
          buildSubTitle('EXTRA INFORMATION AND MEASUREMENT'),
          buildExtraInformationAndMeasurements(ashpModel),

          SizedBox(height: 0.5 * PdfPageFormat.cm),
          buildSubTitle('Required images'),
          buildRequiredImages(images)
        ];
      },
      //footer: (context) => buildFooter(invoice),
    ));
    print('opening doc');
    return PdfApi.saveDocument(
        name: 'ASHP survey ${ashpModel.surveydate}.pdf', pdf: pdf);
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
        'ASHP Survey',
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

  static buildASHPTechSurvey(ASHPModel ashpModel) {
    return SizedBox(
        width: 15 * PdfPageFormat.cm,
        child: Padding(
          padding: EdgeInsets.all(5 * PdfPageFormat.mm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(title: 'Install date: ', value: ashpModel.installDate!),
              buildText(title: 'Install type: ', value: ashpModel.installType!),
              buildText(title: 'Manpower: ', value: ashpModel.manPower!),
              buildText(title: 'Survey Date: ', value: ashpModel.surveydate!),
              buildText(title: 'Survey Date: ', value: ashpModel.surveyby!),
              buildText(title: 'Survey by: ', value: ashpModel.surveydate!),
            ],
          ),
        ));
  }

  static buildCustPropDetailsSurvey(ASHPModel ashpModel) {
    return SizedBox(
        width: 15 * PdfPageFormat.cm,
        child: Padding(
          padding: EdgeInsets.all(5 * PdfPageFormat.mm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(
                  title: 'Customer Name: ', value: ashpModel.customername!),
              buildText(
                  title: 'Property address: ',
                  value: ashpModel.propertyaddress!),
              buildText(title: 'Post code: ', value: ashpModel.postcode!),
              buildText(
                  title: 'Customer contact: ',
                  value: ashpModel.customercontact!),
              buildText(title: 'Email: ', value: ashpModel.email!),
            ],
          ),
        ));
  }

  static buildPropertyDetails(ASHPModel ashpModel) {
    return SizedBox(
        width: 15 * PdfPageFormat.cm,
        child: Padding(
          padding: EdgeInsets.all(5 * PdfPageFormat.mm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(title: 'Parking: ', value: ashpModel.parking!),
              buildText(title: 'Skip needed: ', value: ashpModel.skipNeede!),
              buildText(
                  title: 'Skip permit required: ',
                  value: ashpModel.skipPermitrequired!),
              buildText(
                  title: 'Comments: ',
                  value: ashpModel.propertyDetailsComments!),
            ],
          ),
        ));
  }

  static buildExistingBoilerSystemDetails(ASHPModel ashpModel) {
    return SizedBox(
        width: 15 * PdfPageFormat.cm,
        child: Padding(
          padding: EdgeInsets.all(5 * PdfPageFormat.mm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(title: 'Boiler type: ', value: ashpModel.boilerType!),
              buildText(
                  title: 'Boiler location: ', value: ashpModel.boilerLocation!),
              buildText(title: 'Rip out: ', value: ashpModel.boilerRipOut!),
              buildText(title: 'Comments: ', value: ashpModel.BoilerComments!),
              buildText(title: 'Cylinder: ', value: ashpModel.cylinder!),
              buildText(
                  title: 'Cylinder location: ',
                  value: ashpModel.cylinderLocation!),
              buildText(title: 'Rip out: ', value: ashpModel.cylinderRipOut!),
              buildText(
                  title: 'Comments: ', value: ashpModel.cylinderComments3!),
              buildText(
                  title: 'Asbestos removal: ',
                  value: ashpModel.abbestosRemoval!),
              buildText(
                  title: 'Comments: ', value: ashpModel.abbestosComments4!),
              buildText(
                  title: 'Rip out Required: ',
                  value: ashpModel.ripOutrequired!),
            ],
          ),
        ));
  }

  static buildProposedNewASHPSystemDetails(ASHPModel ashpModel) {
    return SizedBox(
        width: 15 * PdfPageFormat.cm,
        child: Padding(
          padding: EdgeInsets.all(5 * PdfPageFormat.mm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(
                  title: 'Make and model: ', value: ashpModel.makeAndModel!),
              buildText(
                  title: 'ASHP location: ', value: ashpModel.ashpLocation!),
              buildText(
                  title: 'Do we need to build base: ',
                  value: ashpModel.doWeNeedToBuildABase!),
              buildText(
                  title: 'Base constructed with: ',
                  value: ashpModel.baseConstructedWith!),
              buildText(
                  title: 'Who is building the base: ',
                  value: ashpModel.whoIsBuildingTheBase!),
              buildText(
                  title: 'How many heating zones: ',
                  value: ashpModel.howManyHeatingZones!),
              buildText(
                  title: 'Describe flow and return routes: ',
                  value: ashpModel.describeFlow!),
              buildText(
                  title: 'Pipes need lagging/size: ',
                  value: ashpModel.pipesAndLagging!),
              buildText(
                  title: 'Do we need trunking/size/length: ',
                  value: ashpModel.doWeNeedTrunking!),
              buildText(
                  title: 'Do we need scaffold: ',
                  value: ashpModel.doweNeedScaffold!),
              buildText(
                  title: 'Do we need genie lift: ',
                  value: ashpModel.doWeNeedAGenie!),
              buildText(
                  title: 'Describe condensate run: ',
                  value: ashpModel.describeCondensate!),
              buildText(
                  title: 'Any pumps to replace & size: ',
                  value: ashpModel.anyPumps!),
              buildText(
                  title:
                      '25/1-8 system pump needed(more than 17 rads & 2 floors): ',
                  value: ashpModel.system25Pump!),
              buildText(
                  title: 'Any zone valve need to replace & size: ',
                  value: ashpModel.anyPumps!),
              buildText(
                  title: 'What type of floor do they have: ',
                  value: ashpModel.whatType!),
            ],
          ),
        ));
  }

  static buildProposedNewCylinder(ASHPModel ashpModel) {
    return SizedBox(
        width: 15 * PdfPageFormat.cm,
        child: Padding(
          padding: EdgeInsets.all(5 * PdfPageFormat.mm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(
                  title: 'Cylinder Make/Model/Size: ',
                  value: ashpModel.newCylinderMake!),
              buildText(
                  title: 'Cylinder location: ',
                  value: ashpModel.newCylinderLocation!),
              buildText(
                  title: 'Lime scale reducer required: ',
                  value: ashpModel.newLimeScale!),
              buildText(
                  title: 'Do we need build base: ', value: ashpModel.newDoWe!),
              buildText(
                  title: 'Base constructed with: ',
                  value: ashpModel.newBaseConStructed!),
              buildText(
                  title: 'Who is building base: ', value: ashpModel.newWhoIs!),
              buildText(
                  title: 'where do we run blow off D2/D1: ',
                  value: ashpModel.newWhereDo!),
              buildText(
                  title: 'Pipes need lagging size: ',
                  value: ashpModel.newPipes!),
              buildText(
                  title: 'Comments: ', value: ashpModel.newCylinderComments!),
            ],
          ),
        ));
  }

  static buildExistingRadiatorAndLocation(ASHPModel ashpModel) {
    return SizedBox(
        width: 15 * PdfPageFormat.cm,
        child: Padding(
          padding: EdgeInsets.all(5 * PdfPageFormat.mm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(title: 'Room: ', value: ashpModel.room!),
              buildText(title: 'Size: ', value: ashpModel.size!),
              buildText(title: 'Where is the room: ', value: ashpModel.where!),
              buildText(
                  title: 'New location if required: ',
                  value: ashpModel.existingRaidLocation!),
              buildText(title: 'PipeSize: ', value: ashpModel.pipeSize!),
              buildText(title: 'Total rads: ', value: ashpModel.totalRads!),
              buildText(
                  title: 'How many to change: ',
                  value: ashpModel.howManyToChange!),
              buildText(
                  title: 'PDO we need to re-pipe: ', value: ashpModel.pDo!),
              buildText(
                  title: 'How many TRV\'s ', value: ashpModel.howManyTrvs!),
              buildText(
                  title: 'How many lock-shields: ',
                  value: ashpModel.howManyLockshields!),
              buildText(
                  title: 'Comments: ',
                  value: ashpModel.existingRadiatorComments!),
            ],
          ),
        ));
  }

  static buildElectricalSystem(ASHPModel ashpModel) {
    return SizedBox(
        width: 15 * PdfPageFormat.cm,
        child: Padding(
          padding: EdgeInsets.all(5 * PdfPageFormat.mm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(
                  title: 'Main fuse board location: ',
                  value: ashpModel.mainFuse!),
              buildText(
                  title: 'Board Type/Menue: ', value: ashpModel.boardType!),
              buildText(
                  title: 'Number of spare ways: ',
                  value: ashpModel.numberOfSpare!),
              buildText(
                  title: 'Type of fuse/MCB Qty: ',
                  value: ashpModel.typeofFuse!),
              buildText(
                  title: 'Distance to ASHP: ',
                  value: ashpModel.distanceToASHP!),
              buildText(
                  title: 'Standard Materials: ',
                  value: ashpModel.standardMaterials!),
              buildText(
                  title: 'Comments: ',
                  value: ashpModel.electricalSystemComments!),
            ],
          ),
        ));
  }

  static buildExtraInformationAndMeasurements(ASHPModel ashpModel) {
    return SizedBox(
        width: 15 * PdfPageFormat.cm,
        child: Padding(
          padding: EdgeInsets.all(5 * PdfPageFormat.mm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(
                  title: 'Any property Information(Bedrooms/Type?): ',
                  value: ashpModel.anyProperty!),
              buildText(
                  title:
                      'Approximate distance between fuse board and outdoor unit: ',
                  value: ashpModel.approximate!),
              buildText(
                  title: 'Loft hatch dimension: ', value: ashpModel.loftHatch!),
              buildText(title: 'Loft boarded: ', value: ashpModel.loftBoarded!),
              buildText(
                  title: 'Loft have a light: ',
                  value: ashpModel.loftHaveLight!),
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
