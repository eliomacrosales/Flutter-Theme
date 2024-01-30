enum ButtonSize { big, medium, small }

double heightFromButtonSize(ButtonSize size) {
  switch (size) {
    case ButtonSize.big:
      return 48.0;
    case ButtonSize.medium:
      return 36.0;
    case ButtonSize.small:
      return 24.0;
    default:
      return 36.0;
  }
}

enum ButtonWidth { infinity, wide, standard, narrow }

double widthFromButtonWidth(ButtonWidth width) {
  switch (width) {
    case ButtonWidth.infinity:
      return double.infinity;
    case ButtonWidth.wide:
      return 350; // Use double.infinity for full-width buttons
    case ButtonWidth.standard:
      return 200.0; // Example standard width, adjust as needed
    case ButtonWidth.narrow:
      return 100.0; // Example narrow width, adjust as needed
    default:
      return 200.0; // Default to standard if not specified
  }
}