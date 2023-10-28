import 'package:flutter/material.dart';
import 'package:weather_app/controller/core/constant.dart';
import 'package:weather_app/view/settings/widget/app_bar.dart';
import '../widget/common_heading.dart';

class PrivacyAndPolicy extends StatelessWidget {
  const PrivacyAndPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWidget(context: context, title: 'Privacy And Policy'),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Last updated: October 27, 2023',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              CustomHeights.commonHeight(context),
              const Text(
                'This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.',
              ),
              CustomHeights.minHeight(context),
              commonHeading(title: "Interpretation"),
              CustomHeights.minHeight(context),
              const Text(
                'The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the samemeaning regardless of whether they appear in singular or in plural.',
              ),
              commonHeading(title: "Definitions"),
              CustomHeights.minHeight(context),
              const Text(
                'For the purposes of this Privacy Policy:',
              ),
              CustomHeights.minHeight(context),
              const Text(
                'Account means a unique account created for You to access our Service orparts of our Service.',
              ),
              CustomHeights.minHeight(context),
              const Text(
                'Affiliate means an entity that controls, is controlled by or is under common control with a party, where "control" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote  for election of directors or other managing authority.',
              ),
              CustomHeights.minHeight(context),
              const Text(
                'Application refers to Wether App, the software program provided by the Company.',
              ),
              CustomHeights.minHeight(context),
              const Text(
                'Company (referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to Wether App.',
              ),
              CustomHeights.minHeight(context),
              const Text(
                'Device means any device that can access the Service such as a computer, a cellphone or a digital tablet.',
              ),
              CustomHeights.minHeight(context),
              const Text(
                'Personal Data is any information that relates to an identified or identifiable individual.',
              ),
              CustomHeights.minHeight(context),
              const Text(
                'Service Provider means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide  the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.',
              ),
              CustomHeights.minHeight(context),
              const Text(
                ' You means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.',
              ),
              CustomHeights.commonHeight(context),
              commonHeading(title: "Collecting and Using Your Personal Data"),
              CustomHeights.minHeight(context),
              commonHeading(title: 'Personal Data'),
              const Text(
                  'While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You.Personally identifiable information may include, but is not limited to:'),
              CustomHeights.minHeight(context),
              commonHeading(title: 'Usage Data'),
              CustomHeights.minHeight(context),
              commonHeading(title: 'Personal Data'),
              const Text(
                  'Usage Data is collected automatically when using the Service.'),
              CustomHeights.minHeight(context),
              const Text(
                  'Usage Data may include information such as Your Device s Internet Protocol address , browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.'),
              CustomHeights.minHeight(context),
              const Text(
                  'When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.'),
              CustomHeights.minHeight(context),
              const Text(
                  'We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.'),
              CustomHeights.commonHeight(context),
              commonHeading(
                  title: 'Information Collected while Using the Application'),
              CustomHeights.minHeight(context),
              const Text(
                  'While using Our Application, in order to provide features of Our Application, We may collect, with Your prior permission:'),
              CustomHeights.minHeight(context),
              const Text('Information regarding your location'),
              CustomHeights.minHeight(context),
              const Text(
                  'We use this information to provide features of Our Service, to improve andcustomize Our Service. The information may be uploaded to the Company s server or it may be simply stored on Youdevice.You can enable or disable access to this information at any time, through YourDevice settings.'),
              CustomHeights.commonHeight(context),
              commonHeading(title: 'Use of Your Personal Data'),
              CustomHeights.minHeight(context),
              const Text(
                  'To provide and maintain our Service , including to monitor the usage of our Service.'),
              CustomHeights.minHeight(context),
              const Text(
                  'To manage Your Account: to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.'),
              CustomHeights.minHeight(context),
              const Text(
                  'For the performance of a contract: the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.'),
              CustomHeights.minHeight(context),
              const Text(
                  'To contact You: To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application s push notifications regarding updates or informative communications related to the functionalities, products or contracted  services, including the security updates, when necessary or reasonable fortheir implementation.'),
              CustomHeights.minHeight(context),
              const Text(
                  'To provide You with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.'),
              CustomHeights.minHeight(context),
              const Text(
                  'For business transfers: We may use Your information to evaluate or conducta merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.'),
              CustomHeights.minHeight(context),
              const Text(
                  'For other purposes : We may use Your information for other purposes, suchas data analysis, identifying usage trends, determining the effectivenessof our promotional campaigns and to evaluate and improve our Service,products, services, marketing and your experience.'),
              CustomHeights.minHeight(context),
              const Text(
                  'With Service Providers: We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.'),
              CustomHeights.minHeight(context),
              const Text(
                  'For business transfers: We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to  another company.'),
              CustomHeights.commonHeight(context),
              commonHeading(title: 'Retention of Your Personal Data'),
              CustomHeights.minHeight(context),
              const Text(
                  'The Company will retain Your Personal Data only for as long as is necessaryfor the purposes set out in this Privacy Policy. We will retain and use YourPersonal Data to the extent necessary to comply with our legal obligations(for example, if we are required to retain your data to comply with applicablelaws), resolve disputes, and enforce our legal agreements and policies.'),
              CustomHeights.minHeight(context),
              const Text(
                  'The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.'),
              CustomHeights.commonHeight(context),
              commonHeading(title: 'Transfer of Your Personal Data'),
              CustomHeights.minHeight(context),
              const Text(
                  'Your information, including Personal Data, is processed at the Company s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.'),
              CustomHeights.minHeight(context),
              const Text(
                  'The Company will take all steps reasonably necessary to ensure that Your datais treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.'),
              CustomHeights.commonHeight(context),
              commonHeading(title: 'Contact Us'),
              CustomHeights.minHeight(context),
              const Text(
                  'If you have any questions about this Privacy Policy, You can contact us:'),
              CustomHeights.minHeight(context),
              const Text('By email: sajusajuptl@gmail.com')
            ],
          ),
        ));
  }
}
