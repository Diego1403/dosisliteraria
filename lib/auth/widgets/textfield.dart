part of '../auth.dart';

class AuthTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscureText;
  final IconData prefixIcon;

  AuthTextfield(this.controller, this.hint, this.obscureText, this.prefixIcon);

  factory AuthTextfield.email(TextEditingController controller,
      {String text = 'Correo'}) {
    return AuthTextfield(controller, text, false, Icons.mail_outline);
  }

  factory AuthTextfield.password(TextEditingController controller,
      {String text = 'Contraseña'}) {
    return AuthTextfield(controller, text, true, Icons.lock);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: textTheme.bodyText1,
        decoration: InputDecoration(
          //filled: true,

          labelText: hint,
          labelStyle: textTheme.bodyText2,
          focusColor: theme.accentColor,
          /* enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ), */
          /* focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: pcolor.darkblue),
          ), */
          prefixIcon: Icon(
            prefixIcon,
            size: 18,
            color: theme.accentColor,
          ),
        ),
      ),
    );
  }
}
