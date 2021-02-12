import 'package:flutter/material.dart';
import 'package:hearing_landos/utils/TestimonialModel.dart';

import 'model/AppFeatureModel.dart';
import 'model/FeatureTileModel.dart';

/// All the data

Color headerColor = Colors.black87;

/// One
String playStoreUrl = "https://play.google.com/store/apps/details?id=ua.zt.mezon.audiology.hearingtest";
String appHeading = "Affordable mobile hearing testing solution for everyone, from children to adults mostly in underserved Areas:";
String appDescription = "hearing screening audiometer on a smartphone Download Now!";

/// Two
String maintitle = "Create, Test, and Share";
String maindescription = "app checked in place ambient noise level to prevent incorrect results, to help self-administration of the test.";

String closingTitle = "hearing screening audiometer on a smartphone Was Never This EASY";
String closingDescription = "so what are you waiting for, Download Now";
String coverImage = "woman-4581024.jpg";

String finaCalltoAction = "What are you waiting for? Download today!";
String youtubeVideoUrl = "https://www.youtube.com/channel/UC-WROSkR5KGAxMIpf2EaLBQ";

String aboutUsUrl = "https://www.linkedin.com/in/nickzt/";
String PrivacypolicyUrl = "";
String ContactUsUrl = "";

List<TestimonialModel> getTestimonials(){

  List<TestimonialModel> myAppTestimonials = new List<TestimonialModel>();
  TestimonialModel testimonialModel = new TestimonialModel();

  /// setting the testimonials

  //1
  testimonialModel.setDescription("Affordable mobile hearing testing solution for everyone, from children to adults mostly in underserved Areas");
  testimonialModel.setRating(4);
  testimonialModel.setImageAssetPath("mailservice.png");
  testimonialModel.setName("Silly Fox");
  testimonialModel.setDesignation("Educator");
  myAppTestimonials.add(testimonialModel);
  //
  testimonialModel = new TestimonialModel();

  //2
  testimonialModel.setDescription("Affordable mobile hearing testing solution for everyone, from children to adults mostly in underserved Areas");
  testimonialModel.setRating(4);
  testimonialModel.setImageAssetPath("dog.png");
  testimonialModel.setName("Test ");
  testimonialModel.setDesignation("Educator");
  myAppTestimonials.add(testimonialModel);
  //
  testimonialModel = new TestimonialModel();

  //3
  testimonialModel.setDescription("Affordable mobile hearing testing solution for everyone, from children to adults mostly in underserved Areas 2");
  testimonialModel.setRating(4);
  testimonialModel.setImageAssetPath("testimonial.jpg");
  testimonialModel.setName("Model 2");
  testimonialModel.setDesignation("Educator");
  myAppTestimonials.add(testimonialModel);
  //
  testimonialModel = new TestimonialModel();

  //4
  testimonialModel.setDescription("Affordable mobile hearing testing solution for everyone, from children to adults mostly in underserved Areas 3");
  testimonialModel.setRating(4);
  testimonialModel.setImageAssetPath("logo.png");
  testimonialModel.setName("44");
  testimonialModel.setDesignation("Educator");
  myAppTestimonials.add(testimonialModel);
  //
  testimonialModel = new TestimonialModel();

  //5
  testimonialModel.setDescription("Affordable mobile hearing testing solution for everyone, from children to adults mostly in underserved Areas 4");
  testimonialModel.setRating(4);
  testimonialModel.setImageAssetPath("mailservice.png");
  testimonialModel.setName("Mail");
  testimonialModel.setDesignation("Educator");
  myAppTestimonials.add(testimonialModel);
  //
  testimonialModel = new TestimonialModel();

  return myAppTestimonials;

}

List<AppFeatureModel> getAppFeatures(){

  List<AppFeatureModel> appFeatures = new List<AppFeatureModel>();
  AppFeatureModel appFeatureModel = new AppFeatureModel();

  // setting up the features

  //1
  appFeatureModel.setImagePath("phones.png");
  appFeatureModel.setFeatureTitle("Making  Hearing assesment at home Was Never So Easy");
  appFeatureModel.setFeatureDescription("Making a hearing assessment at home has never been easier. This is especially true with quarantine restrictions. Stay healthy.");
  appFeatures.add(appFeatureModel);

  appFeatureModel = new AppFeatureModel();

  //2
  appFeatureModel.setImagePath("phones_4.png");
  appFeatureModel.setFeatureTitle("Get Detailed Result Analysis");
  appFeatureModel.setFeatureDescription("Get Detailed analysis of each and every type of assesment you attempted with information about your stats.");
  appFeatures.add(appFeatureModel);

  appFeatureModel = new AppFeatureModel();

  //3
  appFeatureModel.setImagePath("1611324418801.JPEG");
  appFeatureModel.setFeatureTitle("Do test regularly");
  appFeatureModel.setFeatureDescription("If you need to monitor your progress, you need to have your hearing assessed regularly.");
  appFeatures.add(appFeatureModel);

  appFeatureModel = new AppFeatureModel();


  return appFeatures;


}

List<FeatureTileModel> getFeaturesTiles1(){

  List<FeatureTileModel> tileFeatures = new List<FeatureTileModel>();
  FeatureTileModel featureTileModel = new FeatureTileModel();

  //1
  featureTileModel.setImagePath("1611324467141.JPEG");
  featureTileModel.setTitle("Number of speaking test is Unlimited ");
  featureTileModel.setDescription("All of spoken test generates randomly.");
  tileFeatures.add(featureTileModel);

  featureTileModel = new FeatureTileModel();

  //2
  featureTileModel.setImagePath("1611324524091.JPEG");
  featureTileModel.setTitle("Shuffle questions answer");
  featureTileModel.setDescription("Answers of question are shuffled so no cheating allowed");
  tileFeatures.add(featureTileModel);

  featureTileModel = new FeatureTileModel();

  //3
  featureTileModel.setImagePath("1611324524091.JPEG");
  featureTileModel.setTitle("See Detailed Result Analysis");
  featureTileModel.setDescription("All student detailed result analysis is generated and student performance is send to Parents instantly");
  tileFeatures.add(featureTileModel);

  featureTileModel = new FeatureTileModel();

  return tileFeatures;
}

List<FeatureTileModel> getFeaturesTiles2(){

  List<FeatureTileModel> tileFeatures = new List<FeatureTileModel>();
  FeatureTileModel featureTileModel = new FeatureTileModel();

  //4
  featureTileModel.setImagePath("header_screenshot.png");
  featureTileModel.setTitle("5 User Categories");
  featureTileModel.setDescription("Personalized Interface for all use cases, Either its Teacher, Student Parents Or School Admin");
  tileFeatures.add(featureTileModel);

  featureTileModel = new FeatureTileModel();

  //5
  featureTileModel.setImagePath("1611324524091.JPEG");
  featureTileModel.setTitle("Create Daily Test");
  featureTileModel.setDescription("Teachers can create daily test to test student performance on a regular basis.");
  tileFeatures.add(featureTileModel);

  featureTileModel = new FeatureTileModel();

  //6
  featureTileModel.setImagePath("header_screenshot.png");
  featureTileModel.setTitle("Guest Mode");
  featureTileModel.setDescription("No need to create account to lets get started with hearing assesment, No Login Required!");
  tileFeatures.add(featureTileModel);

  featureTileModel = new FeatureTileModel();

  return tileFeatures;
}