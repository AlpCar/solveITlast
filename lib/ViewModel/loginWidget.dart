/*
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

Widget build(BuildContext context) {
  return Query(
      options: QueryOptions(document: gql(getPostByID), variables: {"id": "${검색할 ID}"}),
      builder: (result, {refetch, fetchMore}) {
        if (result.isLoading) {
          return CircularProgressIndicator();
        }
        final post = result.data!['post'];
        return Scaffold(
          appBar: AppBar(title: Text(post['title'])),
          body: Container(
            child: Text(post['content']),
          ),
        );
      });
}*/
