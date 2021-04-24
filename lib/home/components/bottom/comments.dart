import 'package:dosis_literaria/comments/comments.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:like_button/like_button.dart';

class Comments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            LikeButton(
                size: 50,
                circleColor: CircleColor(
                    start: Color(0xff00ddff), end: Color(0xff0099cc)),
                bubblesColor: BubblesColor(
                  dotPrimaryColor: Color(0xff33b5e5),
                  dotSecondaryColor: Color(0xff0099cc),
                ),
                likeBuilder: (bool isLiked) {
                  return Icon(
                    Icons.comment,
                    color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
                    size: 30,
                  );
                },
                likeCount: 50,
                countBuilder: (int count, bool isLiked, String text) {
                  var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                  Widget result;
                  if (count == 0) {
                    result = Text(
                      "love",
                      style: TextStyle(color: color),
                    );
                  } else
                    result = Text(
                      text,
                      style: TextStyle(color: color),
                    );
                  return result;
                },
                onTap: _gocomments(context)),
            LikeButton(
              size: 30,
              circleColor:
                  CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
              bubblesColor: BubblesColor(
                dotPrimaryColor: Color(0xff33b5e5),
                dotSecondaryColor: Color(0xff0099cc),
              ),
              likeCount: 665,
              countBuilder: (int count, bool isLiked, String text) {
                var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                Widget result;
                if (count == 0) {
                  result = Text(
                    "love",
                    style: TextStyle(color: color),
                  );
                } else
                  result = Text(
                    text,
                    style: TextStyle(color: color),
                  );
                return result;
              },
            ),
            LikeButton(
              size: 50,
              circleColor:
                  CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
              bubblesColor: BubblesColor(
                dotPrimaryColor: Color(0xff33b5e5),
                dotSecondaryColor: Color(0xff0099cc),
              ),
              likeBuilder: (bool isLiked) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Center(
                          child: Text(
                            "Mas sobre el texto",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  _gocomments(context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => CommentScreen(),
    ));
  }
}
