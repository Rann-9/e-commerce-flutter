part of '../page.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buttonUpdate() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Container(
          margin: EdgeInsets.only(top: 15),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'Update',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    Widget nameInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            top: 15,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'Muhammad Jahran',
              fillColor: backgroundColor4,
              filled: true,
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
              color: Colors.white,
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      );
    }

    Widget usernameInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              top: 15,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: backgroundColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: primaryTextStyle,
                hintText: 'Rann-9',
                fillColor: backgroundColor4,
                filled: true,
                icon: const Icon(
                  Icons.verified_user,
                  color: Colors.white,
                ),
              ),
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
                color: Colors.white,
              ),
              keyboardType: TextInputType.text,
            )),
      );
    }

    Widget emailInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            top: 15,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'jahran@gmail.com',
              fillColor: backgroundColor4,
              filled: true,
              icon: const Icon(
                Icons.email,
                color: Colors.white,
              ),
            ),
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
              color: Colors.white,
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage(
                  'assets/image_shoes.png',
                ),
              ),
            ),
            Text(
              'Muhammad Jahran',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
            buttonUpdate(),
          ],
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
