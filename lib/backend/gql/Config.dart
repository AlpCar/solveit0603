
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Config {
  static final HttpLink _httpLink =
  HttpLink("http://3.36.229.240:/4000");
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




/*
class GraphQLConfiguration {
  static HttpLink httpLink = HttpLink(
      "http://3.36.229.240:4000/"
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
    ),
  );

  GraphQLClient clientToQuery() {
    return GraphQLClient(
      cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
      link: httpLink,
    );
  }*/
