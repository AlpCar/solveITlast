/*
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

Widget build(BuildContext context) {
  return Mutation(
      options: MutationOptions(
          document: gql(createPost),
          update: (cache, result) => result,
          onCompleted: (data) {
            //mutation이 완료되었을 때 실행되는 부분
          },
          onError: (e) {
            //error시 실행되는 부분
          }),
      builder: (runMutation, result) => IconButton(
        onPressed: () async {
          runMutation({
            "post": {
              "data": {
                "title": */
/*내용*//*
,
                "description": */
/*내용*//*
,
              }
            }
          });
        },
        icon: result!.isLoading
            ? CircularProgressIndicator()
            : Icon(Icons.upload_rounded),
      ));
}
*/
