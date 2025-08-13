import 'package:formz/formz.dart';

enum EmailError { empty, format, maxLength }

class Email extends FormzInput<String, EmailError> {
  // static final RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  static final RegExp _emailRegExp = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(\.[a-zA-Z]{2,})+$",
  );

  const Email.pure() : super.pure('');
  const Email.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == EmailError.empty) return 'El campo es requerido';
    if (displayError == EmailError.format) return 'Formato del email inválido';
    if (displayError == EmailError.maxLength) return 'Máximo 40 caracteres';

    return null;
  }

  @override
  EmailError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return EmailError.empty;
    if (!_emailRegExp.hasMatch(value)) return EmailError.format;
    if (value.length > 40) return EmailError.maxLength;
    return null;
  }
}
