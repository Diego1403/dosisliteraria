part of '../auth.dart';

class AuthButton extends StatelessWidget {
  final String title;
  final bool hasBorder;

  AuthButton(this.title, [this.hasBorder = false]);

  factory AuthButton.withBorder(String text) {
    return AuthButton(text, true);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          color: hasBorder
              ? Theme.of(context).primaryColor
              : Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(10),
          border: hasBorder
              ? Border.all(
                  color: Theme.of(context).accentColor,
                  width: 1.0,
                )
              : Border.fromBorderSide(BorderSide.none),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
              color: hasBorder
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(10),
              border: hasBorder
                  ? Border.all(
                      color: Theme.of(context).accentColor,
                      width: 1.0,
                    )
                  : Border.fromBorderSide(BorderSide.none),
            ),
            height: 60.0,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: hasBorder
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).accentColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  final ButtonType type;
  final String _text;
  final Function onPressed;

  SocialMediaButton(this.type, this._text, this.onPressed);

  factory SocialMediaButton.facebook({Function action}) {
    return SocialMediaButton(
        ButtonType.facebook, 'Continúa con Facebook', action);
  }
  factory SocialMediaButton.google({Function action}) {
    return SocialMediaButton(ButtonType.google, 'Continúa con google', action);
  }
  factory SocialMediaButton.mail({Function action}) {
    return SocialMediaButton(ButtonType.mail, 'Continúa con email', action);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: SignInButton.mini(
        buttonType: type,
        buttonSize: ButtonSize.large,
        //imagePosition: ImagePosition.right,
        //shape: BeveledRectangleBorder(),
        //btnText: _text,
        onPressed: onPressed,
      ),
    );
  }
}
