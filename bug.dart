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
  } catch (e) {
    // Handle exceptions, e.g., network errors
    print('Error: $e');
    // Rethrow the exception to be handled further up the call stack
    rethrow; 
  }
}
```