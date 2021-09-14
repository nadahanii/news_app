/*class NewsListItem extends StatefulWidget {
  NewsItem newsItem;
  NewsListItem(this.newsItem);
  @override
  _NewsListItemState createState() => _NewsListItemState();
}*/

/*class _NewsListItemState extends State<NewsListItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                padding: EdgeInsets.all(8),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.transparent,
                ),
                child: Image.network(
                  widget.newsItem.urlToImage,
                  height: 240,
                  fit: BoxFit.fill,
                )),
            Text(
              widget.newsItem.author,
              textAlign: TextAlign.start,
              style:
              TextStyle(fontWeight: FontWeight.w400, color: Colors.black45),
            ),
            Text(
              widget.newsItem.title,
              textAlign: TextAlign.start,
              style:
              TextStyle(fontWeight: FontWeight.w700, color: Colors.black87),
            ),
            Text(
              widget.newsItem.publishedAt,
              textAlign: TextAlign.end,
              style:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.black45),
            ),
          ],
        ),
      )
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:news_app/NewsDetails/newspage.dart';
import 'package:news_app/model/NewsItem.dart';
import 'package:cached_network_image/cached_network_image.dart';

InkWell newsListItem(NewsItem newsItem,context)
{
  return InkWell(

      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewsPage(newsItem)),);
      },
      child: Container(
        padding: EdgeInsets.all(9),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: CachedNetworkImage(
                imageUrl: newsItem.urlToImage??'',
                height: 240,
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                newsItem.author??" ",
                textAlign: TextAlign.start,
                style:
                TextStyle(fontWeight: FontWeight.w400, color: Colors.black45),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              newsItem.title??" ",
              textAlign: TextAlign.start,
              style:
              TextStyle(fontWeight: FontWeight.w700, color: Colors.black87),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              newsItem.publishedAt?? " ",
              textAlign: TextAlign.end,
              style:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.black45),
            ),
          ],
        ),
      )
  );
}