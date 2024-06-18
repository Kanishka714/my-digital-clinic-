import 'package:digital_clinic_final/Content/expanded_article.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:digital_clinic_final/Reusables/hashtags.dart';
import 'package:digital_clinic_final/Reusables/news_container.dart';
import 'package:digital_clinic_final/AdminCare/firestore.dart';

class RelatedArticles extends StatefulWidget {
  const RelatedArticles({Key? key}) : super(key: key);

  @override
  _RelatedArticlesState createState() => _RelatedArticlesState();
}

class _RelatedArticlesState extends State<RelatedArticles> {
  final FirestoreService firestoreService = FirestoreService();

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
                Tab(child: Text("Today", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
                Tab(child: Text("Week", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
                Tab(child: Text("Month", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
              ],
            ),
            leading: Icon(Icons.arrow_back),
            title: Text('Related Articles', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: firestoreService.getArticles(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
              return Center(child: Text('No articles found.'));
            }
            final articles = snapshot.data!.docs;

            return SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        HashTags(text: '#All'),
                        HashTags(text: '#COVID-19'),
                        HashTags(text: '#FEVER'),
                        HashTags(text: '#HEADACHE'),
                        HashTags(text: '#RESEARCH'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 20.0, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Hot Themes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        Text("See All", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: articles.map((article) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ExpandedArticle(article: article),
                              ),
                            );
                          },
                          child: NewsContainer(
                            date: article['timestamp'].toDate().toString().substring(0, 10),
                            title: article['title'],
                            description: article['description'],
                            imageUrl: article['imageUrl'],
                            orientation: "horizontal",
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 20, bottom: 8.0),
                    child: Row(
                      children: [
                        Text("Related Articles", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        Spacer(),
                        Text("More"),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: articles.map((article) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ExpandedArticle(article: article),
                              ),
                            );
                          },
                          child: NewsContainer(
                            date: article['timestamp'].toDate().toString().substring(0, 10),
                            title: article['title'],
                            description: article['description'],
                            imageUrl: article['imageUrl'],
                            orientation: "vertical",
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}