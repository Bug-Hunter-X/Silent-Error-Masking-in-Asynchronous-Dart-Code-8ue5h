# Silent Error Masking in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code:  failure to properly handle exceptions in `async` functions, leading to silent errors. The `bug.dart` file showcases the problematic code, and `bugSolution.dart` provides a corrected version.

The issue arises from catching exceptions and not rethrowing them, thus preventing higher-level error handling mechanisms from working correctly.

**To reproduce:** Run `bug.dart`. Observe that even if the API call fails, the program might continue without explicit error messages.  Compare this with the improved handling in `bugSolution.dart`.