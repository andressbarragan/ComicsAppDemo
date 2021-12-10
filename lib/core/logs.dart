
import 'package:logger/logger.dart';

class Logs
{
  static final Logger _logger = Logger();

  static void Show(String message)
  {
    _logger.d(message);
  }
}