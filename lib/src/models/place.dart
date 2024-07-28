import 'package:win32/win32.dart';

/// Enum representing two possible places: [top] and [bottom].
enum Place {
  /// The top position.
  top,

  /// The bottom position.
  bottom
}

/// A class that combines an [IShellItem] with a [Place].
class CustomPlace {
  /// Creates a [CustomPlace] with the given [item] and [place].
  const CustomPlace(this.item, this.place);

  /// The shell item associated with this custom place.
  final IShellItem item;

  /// Where the item is located.
  final Place place;
}
