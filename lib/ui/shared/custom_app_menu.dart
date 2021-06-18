import 'package:flutter/material.dart';

import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';

import '../../locator.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return constraints.maxWidth >= 520 ? _TableDesktopMenu() : _MovilMenu();
      },
    );
  }
}

class _TableDesktopMenu extends StatelessWidget {
  const _TableDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () =>
                locator<NavigationService>().navigationTo('/stateful'),
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contador Provider',
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, '/provider'),
            onPressed: () =>
                locator<NavigationService>().navigationTo('/provider'),
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Otra pagina',
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, '/statesadaful'),
            onPressed: () =>
                locator<NavigationService>().navigationTo('/statesadaful'),
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'stateful 100',
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, '/statesadaful'),
            onPressed: () =>
                locator<NavigationService>().navigationTo('/stateful/100'),
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Provider 200',
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, '/statesadaful'),
            onPressed: () =>
                locator<NavigationService>().navigationTo('/provider?q=200'),
          ),
        ],
      ),
    );
  }
}

class _MovilMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () =>
                locator<NavigationService>().navigationTo('/stateful'),
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contador Provider',
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, '/provider'),
            onPressed: () =>
                locator<NavigationService>().navigationTo('/provider'),
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Otra pagina',
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, '/statesadaful'),
            onPressed: () =>
                locator<NavigationService>().navigationTo('/statesadaful'),
          ),
        ],
      ),
    );
  }
}
