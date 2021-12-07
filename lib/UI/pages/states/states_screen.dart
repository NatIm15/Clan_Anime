import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/domain/controllers/state_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StateScreen extends StatelessWidget {
  final StateController _controller = Get.find();
  StateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StateController>(
        init: _controller,
        builder: (_) => Scaffold(
              backgroundColor: _.colors,
              appBar: buildAppStateBar(),
              body: BodyState(),
              floatingActionButton: PostButton(),
            ));
  }

  AppBar buildAppStateBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
          onPressed: () => Get.close(1),
          icon: const Icon(
            Icons.close_rounded,
            size: 40,
          )),
      title: Container(
        alignment: Alignment.centerRight,
        child: IconButton(
            onPressed: () => _controller.changeColor(),
            icon: const Icon(
              Icons.palette_outlined,
              size: 40,
            )),
      ),
    );
  }
}

class PostButton extends StatelessWidget {
  const PostButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      elevation: 0,
      icon: Icon(Icons.send_rounded),
      label: Text('Publicar',
          style:
              GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 15)),
      backgroundColor: kPrimaryColor,
    );
  }
}

class BodyState extends StatelessWidget {
  const BodyState({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0, right: 20, bottom: 40, left: 20),
      child: Center(
        child: TextFormField(
          textAlign: TextAlign.center,
          minLines: 1,
          maxLines: null,
          style: GoogleFonts.salsa(fontSize: 40, color: Colors.white),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Escribe un Estado',
              hintStyle: GoogleFonts.salsa(color: Colors.white54)),
        ),
      ),
    );
  }
}
