import 'package:excuela_widget_master/loading_screen/bloc/loading_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  String mapTypeToString(LoadingAnimationType type) {
    switch (type) {
      case LoadingAnimationType.inkDrop:
        return 'InkDrop';
      case LoadingAnimationType.fourRotatingDots:
        return 'FourRotatingDots';
      case LoadingAnimationType.discreteCircular:
        return 'DiscreteCircular';
      case LoadingAnimationType.threeArchedCircle:
        return 'ThreeArchedCircle';
      case LoadingAnimationType.flickr:
        return 'Flickr';
      case LoadingAnimationType.beat:
        return 'Beat';
      case LoadingAnimationType.twoRotatingArc:
        return 'TwoRotatingArc';
    }
  }

  LoadingAnimationType stringToMapType(String type) {
    switch (type) {
      case 'InkDrop':
        return LoadingAnimationType.inkDrop;
      case 'FourRotatingDots':
        return LoadingAnimationType.fourRotatingDots;
      case 'DiscreteCircular':
        return LoadingAnimationType.discreteCircular;
      case 'ThreeArchedCircle':
        return LoadingAnimationType.threeArchedCircle;
      case 'Flickr':
        return LoadingAnimationType.flickr;
      case 'Beat':
        return LoadingAnimationType.beat;
      case 'TwoRotatingArc':
        return LoadingAnimationType.twoRotatingArc;
      default:
        return LoadingAnimationType.inkDrop;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widgetSize = size.height * 0.25;
    final bloc = context.read<LoadingScreenBloc>();
    final List<LoadingAnimationType> types = [
      LoadingAnimationType.inkDrop,
      LoadingAnimationType.fourRotatingDots,
      LoadingAnimationType.discreteCircular,
      LoadingAnimationType.threeArchedCircle,
      LoadingAnimationType.flickr,
      LoadingAnimationType.beat,
      LoadingAnimationType.twoRotatingArc
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading Screen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.35,
            width: size.width * 0.8,
            child: BlocBuilder<LoadingScreenBloc, LoadingScreenState>(
              builder: (context, state) {
                switch (state.loadingAnimationType) {
                  case LoadingAnimationType.inkDrop:
                    return LoadingAnimationWidget.inkDrop(
                        color: state.primaryColor, size: widgetSize);
                  case LoadingAnimationType.fourRotatingDots:
                    return LoadingAnimationWidget.fourRotatingDots(
                        color: state.primaryColor, size: widgetSize);
                  case LoadingAnimationType.discreteCircular:
                    return Center(
                      child: LoadingAnimationWidget.discreteCircle(
                          color: state.primaryColor,
                          secondRingColor: state.secondaryColor,
                          size: widgetSize),
                    );
                  case LoadingAnimationType.threeArchedCircle:
                    return LoadingAnimationWidget.threeArchedCircle(
                        color: state.primaryColor, size: widgetSize);
                  case LoadingAnimationType.flickr:
                    return LoadingAnimationWidget.flickr(
                        leftDotColor: state.primaryColor,
                        rightDotColor: state.secondaryColor,
                        size: widgetSize);
                  case LoadingAnimationType.beat:
                    return LoadingAnimationWidget.beat(
                        color: state.primaryColor, size: widgetSize);
                  case LoadingAnimationType.twoRotatingArc:
                    return Center(
                      child: LoadingAnimationWidget.twoRotatingArc(
                          color: state.primaryColor, size: widgetSize),
                    );
                }
              },
            ),
          ),
          SizedBox(height: size.height * 0.05),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Tipo de animación', style: TextStyle(fontSize: 20)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                  items: types
                      .map((e) => DropdownMenuItem<String>(
                          value: mapTypeToString(e),
                          child: Text(mapTypeToString(e))))
                      .toList(),
                  value: mapTypeToString(bloc.state.loadingAnimationType),
                  onChanged: (value) {
                    bloc.add(LoadingScreenEvent.newAnimationSelected(
                        newAnimationType: stringToMapType(value!)));
                  })
            ],
          ),
          SizedBox(height: size.height * 0.05),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Color primario del widget',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    bloc.add(const LoadingScreenEvent.newPrimaryColorSelected(
                        newColor: Colors.red));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Text('Rojo')),
              ElevatedButton(
                  onPressed: () {
                    bloc.add(const LoadingScreenEvent.newPrimaryColorSelected(
                        newColor: Colors.blue));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Text('Azul')),
              ElevatedButton(
                  onPressed: () {
                    bloc.add(const LoadingScreenEvent.newPrimaryColorSelected(
                        newColor: Colors.green));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Text('Verde')),
              ElevatedButton(
                  onPressed: () {
                    bloc.add(const LoadingScreenEvent.newPrimaryColorSelected(
                        newColor: Colors.yellow));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Text('Amarillo')),
            ],
          ),
          SizedBox(height: size.height * 0.05),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Color secundario del widget',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    bloc.add(const LoadingScreenEvent.newSecondaryColorSelected(
                        newColor: Colors.black));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Text('Negro')),
              ElevatedButton(
                  onPressed: () {
                    bloc.add(const LoadingScreenEvent.newSecondaryColorSelected(
                        newColor: Colors.orange));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Text('Naranja')),
              ElevatedButton(
                  onPressed: () {
                    bloc.add(const LoadingScreenEvent.newSecondaryColorSelected(
                        newColor: Colors.pink));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Text('Rosa')),
              ElevatedButton(
                  onPressed: () {
                    bloc.add(const LoadingScreenEvent.newSecondaryColorSelected(
                        newColor: Colors.purple));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Text('Morado')),
            ],
          )
        ],
      ),
    );
  }
}
