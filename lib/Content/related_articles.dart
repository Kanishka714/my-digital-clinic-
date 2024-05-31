import 'package:flutter/material.dart';
import 'package:digital_clinic_final/Reusables/hashtags.dart';
import 'package:digital_clinic_final/Reusables/news_container.dart';

class RelatedArticles extends StatefulWidget {
  const RelatedArticles({Key? key}) : super(key: key);

  @override
  _RelatedArticlesState createState() => _RelatedArticlesState();
}

class _RelatedArticlesState extends State<RelatedArticles> {
  bool showAllDoctors = false;
  bool showAddDoctorsFirst = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              tabs: [
                Tab(child: Text("Today",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
                Tab(child: Text("Week",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
                Tab(child: Text("Month",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
              ],
            ),
            leading: Icon(Icons.arrow_back),
            title: Text('Related Articles',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HashTags(
                      text: '#All',
                    ),
                    HashTags(
                      text: '#COVID-19',
                    ),
                    HashTags(
                      text: '#FEVER',
                    ),
                    HashTags(
                      text: '#HEADACHE',
                    ),
                    HashTags(
                      text: '#RESEARCH',
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 20.0,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hot Themes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                    Text("See All",style: TextStyle(color: Colors.grey),)
                  ],
                ),
              ),

              SizedBox(height: 5,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    NewsContainer(
                      date: "31.06.2024",
                      title: "Covid-19 Vaccination",
                      description: "Some Description",
                      imageUrl: "https://www.aamc.org/sites/default/files/styles/scale_and_crop_1200_x_666/public/vaccine-skeptics-1291678676.jpg?itok=b6MP_kaI",
                      orientation: "horizontal",
                    ),
                    NewsContainer(
                      date: "31.12.1624",
                      title: "Heart Transplant",
                      description: "Some Description",
                      imageUrl: "https://talkstar-photos.s3.amazonaws.com/uploads/286a195b-c576-4e00-b28e-e3aeac637f9f/hearttextless.jpg",
                      orientation: "horizontal",
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10,), // Add space between horizontal and vertical scroll views

              //related articles
              Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 8.0,right: 20, bottom: 8.0),
                child: Row(
                  children: [
                    Text("Related Articles",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                    Spacer(),
                    Text("More")
                  ],
                ),
              ),

              SingleChildScrollView( // Vertical scroll view for additional NewsContainers
                child: Column(
                  children: [
                    NewsContainer(
                      date: "31.06.2024",
                      title: "JellyFish Sting",
                      description: "Some Description",
                      imageUrl: "https://www.theolivepress.es/wp-content/uploads/2018/04/jellyfish.jpg",
                      orientation: "vertical",
                    ),
                    NewsContainer(
                      date: "31.06.2024",
                      title: "Deal with Toddlers",
                      description: "Some Description",
                      imageUrl: "https://media.wkyc.com/assets/WKYC/images/2ccdc12f-c52c-4813-9411-79e659eb18f2/2ccdc12f-c52c-4813-9411-79e659eb18f2_1920x1080.jpg",
                      orientation: "vertical",
                    ),
                    NewsContainer(
                      date: "31.06.2024",
                      title: "Ferry Accident",
                      description: "Some Description",
                      imageUrl: "https://keprtv.com/resources/media2/16x9/full/1015/center/80/b4c2ccd1-1c81-492b-861b-ee1a2dda5867-large16x9_IMG_0508.JPG",
                      orientation: "vertical",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
