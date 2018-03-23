import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:navigation/main.dart';


Future<List> getCurrencies() async {
  String apiUrl = 'https://api.coinmarketcap.com/v1/ticker/?limit=50';
  // Make a HTTP GET request to the CoinMarketCap API.
  // Await basically pauses execution until the get() function returns a Response
  http.Response response = await http.get(apiUrl);
  // Using the JSON class to decode the JSON String
  return JSON.decode(response.body);
}