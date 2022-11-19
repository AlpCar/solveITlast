import 'package:graphql_flutter/graphql_flutter.dart';

import '../Models/Config.dart';

class ViewModels {
  /**signUp**/
/*
  Config config = Config();
  GraphQLClient _client = config.clientToQuery();
  QueryResult result = await _client.mutate(
    MutationOptions(
      document: gql(AuthQueries.signUp,),
      variables: {
        "ID" : emailAddressController!.text,
        "hashedPW": passwordController!.text,
        "name": nameController!.text
      },
    ),
  );
*/

  /**login**/
/*
  Config config = Config();
  GraphQLClient _client = config.clientToQuery();
  QueryResult result = await _client.query(
    QueryOptions(
      document: gql(AuthQueries.logIn,),
      variables: {
        'ID': emailAddressController!.value.text,
        'hashedPW': passwordLoginController!.value.text,
      },
    ),
  );
*/

}
