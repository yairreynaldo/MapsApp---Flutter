import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/blocs.dart';

class GpsAccesScreen extends StatelessWidget {
  const GpsAccesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<GpsBloc, GpsState>(
          builder: (context, state) {
            return !state.isGpsEnabled ? const _EnableGpsMessage() : const _AccesButton();
          },
        ),
      ),
    );
  }
}

class _AccesButton extends StatelessWidget {
  const _AccesButton();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Es necesario el acceso al GPS'),
        MaterialButton(
          onPressed: () {
            final gpsBloc = BlocProvider.of<GpsBloc>(context);
            gpsBloc.askGpsAccess();
          },
          color: Colors.black,
          elevation: 0,
          shape: const StadiumBorder(),
          splashColor: Colors.transparent,
          child: const Text('Solicitar Acceso', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}

class _EnableGpsMessage extends StatelessWidget {
  const _EnableGpsMessage();

  @override
  Widget build(BuildContext context) {
    return const Text('Debe habilitar el GPS', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300));
  }
}
