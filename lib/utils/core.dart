import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;

enum TypePlatfom
{
  web,
  ios,
  android
}

class Core
{
  static TypePlatfom getCurrentPlatform()
  {
    if (kIsWeb)
    {
      return TypePlatfom.web;
    }
    else
    {
      if (Platform.isIOS)
      {
        return TypePlatfom.ios;
      }
      else if (Platform.isAndroid)
      {
        return TypePlatfom.android;
      }
      else
        {
          throw Exception('Not Spported Platform');
        }
    }
  }
}