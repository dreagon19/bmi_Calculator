import 'package:flutter/material.dart';
import 'constants.dart';

///Containers
class ReusableContainer extends StatelessWidget {
  ReusableContainer({@required this.containerColor, this.cardChild,this.onPress});
  final containerColor;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

/// Icons



class IconsContents extends StatelessWidget {
  IconsContents({@required this.iconType, @required this.textFields});
  final IconData iconType;
  final String textFields;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconType,
          size: 100,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          textFields,
          style: kTextFieldsStyle,
        ),
      ],
    );
  }
}

class BottomButton extends StatelessWidget {

  BottomButton({@required this.buttonTitle, @required this.onTap});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Container(
        child: Center(child: Text(buttonTitle, style:kBottomBarStyle,),),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 10,
    );
  }
}


///