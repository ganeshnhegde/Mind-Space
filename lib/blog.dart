//
// import 'package:flutter/material.dart';
// import 'package:mind_space/blogview.dart';
// class Blog extends StatelessWidget {
//   const Blog({Key? key}) : super(key: key);
//
//   @override
//
//   Widget build(BuildContext context) {
//     return Center(
//       child: Card(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//
//             const ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: AssetImage("lib/img/Home.jpg"), // no matter how big it is, it won't overflow
//               ),
//               title: Text('Your food is good?'),
//               subtitle: Text('You think you are taking the right..'),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 TextButton(
//                   child: const Text('Read More'),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const BlogView ()),
//                     );
//                   },
//                 ),
//                 const SizedBox(width: 6),
//               ],
//             ),
//
//             const ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: AssetImage("lib/img/Home.jpg"), // no matter how big it is, it won't overflow
//               ),
//               title: Text('Your food is good?'),
//               subtitle: Text('You think you are taking the right..'),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 TextButton(
//                   child: const Text('Read More'),
//                   onPressed: () {/* ... */},
//                 ),
//                 const SizedBox(width: 6),
//               ],
//             ),
//
//             const ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: AssetImage("lib/img/Home.jpg"), // no matter how big it is, it won't overflow
//               ),
//               title: Text('Your food is good?'),
//               subtitle: Text('You think you are taking the right..'),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 TextButton(
//                   child: const Text('Read More'),
//                   onPressed: () {/* ... */},
//                 ),
//                 const SizedBox(width: 6),
//               ],
//             ),
//             const ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: AssetImage("lib/img/Home.jpg"), // no matter how big it is, it won't overflow
//               ),
//               title: Text('Your food is good?'),
//               subtitle: Text('You think you are taking the right..'),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 TextButton(
//                   child: const Text('Read More'),
//                   onPressed: () {/* ... */},
//                 ),
//                 const SizedBox(width: 6),
//               ],
//             ),
//             const ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: AssetImage("lib/img/Home.jpg"), // no matter how big it is, it won't overflow
//               ),
//               title: Text('Your food is good?'),
//               subtitle: Text('You think you are taking the right..'),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 TextButton(
//                   child: const Text('Read More'),
//                   onPressed: () {/* ... */},
//                 ),
//                 const SizedBox(width: 8),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




































import 'package:flutter/material.dart';
// import 'package:flutter_ui_challenges/src/pages/animations/animation1/animation1.dart';
// import 'package:flutter_ui_challenges/src/widgets/network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mind_space/blogview.dart';
import 'package:mind_space/exercise.dart';
import 'package:mind_space/homepage.dart';

final List<Map> articles = [
  {
    "title": "Setting New Years Resolutions: 3 Ways to Prioritize Your Mental Health",
    "author": "Susan K. Gurley",
    "time": """
We have all seen it before. The days of December are flying by and there you are—hand clenching your pen, hunched back, trying to come up with the perfect list: your New Year’s resolutions.  More and more adults in America set New Years resolutions. Last year, an estimated 74% of the U.S. adult population set at least one.Many of us struggle with perfectionism and deciding on New Year’s resolutions can add stress to a process that’s supposed to be helpful. Fortunately, evidence shows that optimal goal setting promotes mental health when the goals are measurable, obtainable, psychologically safe, and prioritize health and wellness. 

Goals are better if they incorporate self-compassion and positivity. ADAA member Karen Cassiday, PhD, explains:  “If you want to be less negative, less complaining and more optimistic, make a pact with your friends and yourself to limit the negative news, to avoid complaining and to find the funny and the uplifting every day.”        As featured in journals of the National Institutes of Health, SMART goals are Specific, Measurable, Achievable, Realistic, and Timed. By incorporating the SMART guidelines into your 2022 New Year’s resolutions, you are promoting the attainment of your goals while prioritizing your mental health and overall wellbeing.  """,
  },
  {
    "title": "Coping with Grief and Trauma During the Pandemic",
    "author": "Lara Effland",
    "time": """As a result of this collective pandemic experience, more of us have experienced loss, both expected and unexpected. Grieving our losses over the last 18 months is critical to our individual and collective well-being. We all need the space, support, and time to grieve, whatever our losses, be they loved ones, relationships, lifestyles, or overall functioning. We all have endured enough to allow ourselves the right to grieve. 

We all know we will experience grief and its many moods in our lifetimes. We all have loved and lost. Death, divorce, moving, retirement, and similar life changes affect us all at some point. For expected losses, grieving commonly takes place before, during, and after the loss. The experiences of grief heighten in both intensity and duration, however, when we face unexpected losses, such as untimely/tragic death, loss of pregnancy, loss of health, abrupt endings, job termination, loss of home, loss of safety, etc. But our experiences of both expected and unexpected grief can push us into a vulnerable and high-risk space. We all need to cope with our feelings, especially the challenging and negative ones.""",
  },
  {
    "title": "6 WAYS TO INITIATE A CONVERSATION ON MENTAL HEALTH AT THE WORKPLACE. FIND A THERAPIST IN BANGALORE TO SEEK HELP.",
    "author": "Sahana Tantry",
    "time": """Mental health issues always have had a stigma surrounding them. Negative judgements from others are unpleasant for anyone. When it comes to speaking about it in our work place, it is followed by a lot of fear - Fear of not getting promoted, fear of being discriminated, fear of losing the job and much more.
The pandemic however, has helped people understand the importance of mental health and how it is required for an individual to function normally. This has definitely opened up avenues for people to know and speak about their mental health concerns. However, there is still a lot of discomfort associated with such talks.


Know what the problem is: Understanding your problem and the impact it is having on you is important. Only when we know and learn about our problem, will we be able to convey it well. It is important that we help the other person also understand what we are experiencing.
Plan the conversation: Once we know what we are suffering from, we need to know how much information we are comfortable sharing. One needs to gauge their colleagues/managers and how they will receive this information. Share your experiences with a trusted colleague first, so that they help understand how to go about it.

""",
  },
  {
    "title": "MY STORY: I Am Fighting Depression. Every Day. And You Can Too!",
    "author": "Harika Bantupalli",
    "time": """A couple weeks ago, I went to see a shrink on the insistence of my friend, who happens to be a doctor.

“I don’t mean to imply otherwise, but please seek professional help” she said, “the symptoms are crystal clear.” She was subtle in putting across her message because talking about mental illness is no less than a taboo in our society. It might even be offensive if someone takes it in the wrong way.

I’m never the kind to turn my back on things that are considered stigmatic in our society. However, when things were not going well in my life, I attributed them to stress and my inability to manage things well.
depression11

That’s what people would tell you too. You cannot dare think that you have a mental illness in a society like ours. So I brushed those thoughts away, telling myself that I am stronger than those blues of life – even when hours of research on the internet tried to warn me of something grave. But I was wrong. The feeling of emptiness and worthlessness continued. Suicidal thoughts took over my mind and there was always a chaos in my head. So I chose to take advice of my doctor friend, and consult a psychiatrist.

“It’s so obvious, you are depressed!” the doc confirmed what I dreaded most. """,
  },
  // {
  //   "title": "HOW HAS SOCIAL MEDIA IMPACTED OUR MENTAL HEALTH? 5 WAYS TO DEAL WITH SOCIAL MEDIA ANXIETY.",
  //   "author": "Janvi Sutaria",
  //   "time": "4 min read",
  // },
  {
    "title": "HOW HAS SOCIAL MEDIA IMPACTED OUR MENTAL HEALTH? 5 WAYS TO DEAL WITH SOCIAL MEDIA ANXIETY",
    "author": "Janvi Sutaria",
    "time": """The world we live in is one where we're no longer watching reality – we're living it. Social media has given everyone the chance to share every aspect of their lives, for better or worse. And as social media continues to expand and evolve, those negative aspects are becoming more and more prevalent.

With all the social media out there, it can become hard to keep up with what's going on in our friends' lives. But have you ever thought about how it might also have an impact on your mental health? Social media can be a double-edged sword - just as it can help us stay connected with others, it can also cause feelings of dissatisfaction and loneliness.

Social media is everywhere these days. Businesses, brands, and even individuals use it to promote themselves, get their message out or just interact with friends and family. Social Media is a great way to connect with other people, but it can also be problematic due to its addictive nature and the potential for cyber-bullying.

A new study found that the more people used social media, the worse they reported feeling about their lives. They may be connecting with others and keeping up with friends' and family's latest news, but it seems that they're not getting anything out of these connections.""",
  },
  {
    "title": "WHAT THINGS TO SAY TO A COLLEAGUE WHO IS STRUGGLING WITH LOW SELF-ESTEEM?",
    "author": "Heena Shethia",
    "time": """How do you feel about yourself? Do you like yourself? How do you feel about your achievements? Are you doing okay and able to manage your work-life balance? Or like so many, you feel unworthy, low, and somehow bad at your core? If you feel any of them, you are definitely not alone. Everyday work and other responsibilities can make it very challenging to keep our self-worth healthy.

Self-esteem means “Individuals subjective evaluation of their own worth. Self-esteem is an attractive psychological construct as it predicts certain outcomes such as academic achievements, happiness, satisfaction in relationship or marriage, criminal behaviour, and many other aspects of life.

Low self-esteem makes a person feel incompetent and inadequate about self. Challenging life experiences and hard choices can be the triggering factor to low self-esteem. Examples include:

Being bullied
Any form of abuse
Experiencing prejudice, discrimination, or stigma
Losing job or challenge finding a new one
Problems while studying or at work
Ongoing everyday stress
Relationships, separation, or divorce
Anxiety about physical experiences
Low financial condition
Over responsibility, etc.""",
  },
  {
    "title": """
IRRITABILITY: WHAT TO UNDERSTAND, HOW TO MANAGE AND WHERE TO AVAIL MENTAL HEALTH SERVICE IN BANGALORE""",
    "author": "RACHNA MURALIDHAR",
    "time": """Irritability is a universal experience. It can range between mild irritability and more severe forms of it like agitation or rage on the lines of anger. Despite its commonality, if the feeling sustains for a long period of time, or the frequency increases as much as causing dysfunction on an everyday basis, it most often is indicative of an underlying mental health concern. Some of the underlying contributing factors to frequent irritability are as follows:
Prolonged high stress circumstances: Some of which could be:
Relationship difficulties
Stressful job situation
Life changing events and related adjustment
Mood disorders:
Depression: A mood disorder characterizing persistent low mood, lack of pleasure in earlier pleasurable things/activities, increased fatigability, low confidence, increased feelings of guilt, suicidal ideation and decreased attention and concentration lasting for over two weeks. Irritability can manifest in a mild to moderate range of depression.
Dysthymia: Long standing low grade depression where functionality isn’t affected, however experiencing irritability on almost an everyday basis but able to get through the day.""",
  },
];

class BlogHomeOnePage extends StatelessWidget {
  static const String path = "lib/src/pages/blog/bhome1.dart";
  final Color primaryColor = Color(0xff817dc0);
  final Color bgColor = Color(0xff817112);
  final Color secondaryColor = Color(0xff324558);

  // late BuildContext context;

  

  



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Theme(
        data: ThemeData(
          primaryColor: primaryColor,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            textTheme: TextTheme(
              headline6: TextStyle(
                color: secondaryColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            iconTheme: IconThemeData(color: secondaryColor),
            actionsIconTheme: IconThemeData(
              color: secondaryColor,
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: Theme.of(context).buttonColor,
          body: TabBarView(
            children: <Widget>[
              ListView.separated(
                padding: const EdgeInsets.all(16.0),
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return _buildArticleItem(context,index);
                },
                separatorBuilder: (context, index) =>
                const SizedBox(height: 16.0),
              ),
              Container(
                child: Text("Tab 2"),
              ),
              Container(
                child: Text("Tab 3"),
              ),
              Container(
                child: Text("Tab 4"),
              ),
              Container(
                child: Text("Tab 5"),
              ),
            ],
          ),


        ),
      ),
    );
  }

  Widget _buildArticleItem(BuildContext context,int index) {
    Map article = articles[index];
    
    return Container(
      color: Colors.white,
      child: InkWell (
      // onTap: () { Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => ProductPage()),
      //   );},
      child: Stack(
        children: <Widget>[
          
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
          //       Container(
          //         height: 100,
          //         color: Colors.white,
          //         width: 80.0,
          //         child: Column(              
          //   // children: <Widget>[  
          //   //   imagess[index]   
          //   // ],  
          // ),
          //       ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      TextButton(
                        onPressed:() {
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>  BlogView(article["title"],article["author"],article["time"])));
                          
                        },
                        child: Text(
                        article["title"],
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),)
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                           
                            WidgetSpan(
                              child: const SizedBox(width: 4.0),
                            ),
                            TextSpan(
                                text: article["author"],
                                style: const TextStyle(fontSize: 16.0)),
                            const WidgetSpan(
                              child: SizedBox(width: 20.0),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: 5.0),
                            ),
                            // TextSpan(
                            //   text: article["time"],
                            // ),
                          ],
                        ),
                        style: const TextStyle(height: 2.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    )
    );
  }
}