
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Config {
  static final HttpLink _httpLink =
  HttpLink("http://3.36.229.240:4000/");
  static ValueNotifier<GraphQLClient> initClient() {
    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: _httpLink,
        cache: GraphQLCache(),
      ),
    );
    return client;


  }
  GraphQLClient clientToQuery() {
    return GraphQLClient(
      cache: GraphQLCache(),
      link: _httpLink,
    );
  }
}



/*query characters(\$page: Int!) {
      characters(page: \$page) {
        results {
          id
          name
        }
      }
    }*/


/*
class Config {
  static final HttpLink _httpLink =
  HttpLink('https://api.github.com/graphql');
  static final AuthLink _authLink = AuthLink(
    getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
  );
  static final Link link = _authLink.concat(_httpLink);
  static ValueNotifier<GraphQLClient> initClient() {
    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: link,
        cache: GraphQLCache(),
      ),
    );
    return client;
  }
}

 */