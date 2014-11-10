# VOKUtilities

Assorted category and utility classes for iOS

## UIColor+VOKAL
This category on `UIColor` adds convenience creation methods to create colors based on their hex representations, both as integers (`0xA4C53F`) and as strings (`@"A4C53F"`), and an instance method to get the hex-string representation of a color.  The methods that generate `UIColor` objects from strings are particularly flexible, ignoring leading/trailing non-hexadecimal characters (such as leading `#`) and allowing various shorthands:
- `X` for `XXXXXX`
- `XY` for `XYXYXY`
- `XYZ` for `XXYYZZ`