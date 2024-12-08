```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, process the data
      final jsonData = jsonDecode(response.body);
      // ... process jsonData ...
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    // Handle socket exceptions specifically
    print('Network error: $e');
    // Additional handling for network issues.
  } on FormatException catch (e) {
    // Handle JSON decoding errors specifically
    print('JSON decoding error: $e');
  } catch (e) {
    // Handle other exceptions
    print('An unexpected error occurred: $e');
    // Rethrow the exception to handle it at a higher level
    rethrow; 
  }
}
```