import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal Facility Warehouse Manager',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFCEBBFD)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Warehouse manger'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Categoria { dpi, materialePulizia, altro}

class _MyHomePageState extends State<MyHomePage> {

  // Counters variables

  int guantiSCounter = 0;
  int guantiMCounter = 0;
  int guantiLCounter = 0;
  int bobinaCounter = 0;
  int candegginaCounter = 0;
  int calzariBianchiCounter = 0;
  int calzariBluCounter = 0;
  int tuteCounter = 0;
  int cuffieCounter = 0;

  // Decremental functions

  void decrementGuantiSCounter() {
    setState(() {
      if (guantiSCounter > 0) guantiSCounter--;
    });
  }

  void decrementGuantiMCounter() {
    setState(() {
      if (guantiMCounter > 0) guantiMCounter--;
    });
  }

  void decrementGuantiLCounter() {
    setState(() {
      if (guantiLCounter > 0) guantiLCounter--;
    });
  }

  void decrementBobinaCounter() {
    setState(() {
      if (bobinaCounter > 0) bobinaCounter--;
    });
  }

  void decrementCandegginaCounter() {
    setState(() {
      if (candegginaCounter > 0) candegginaCounter--;
    });
  }

  void decrementCalzariBianchiCounter() {
    setState(() {
      if (calzariBianchiCounter > 0) calzariBianchiCounter--;
    });
  }

  void decrementCalzariBluCounter() {
    setState(() {
      if (calzariBluCounter > 0) calzariBluCounter--;
    });
  }

  void decrementTuteCounter() {
    setState(() {
      if (tuteCounter > 0) tuteCounter--;
    });
  }

  void decrementCuffieCounter() {
    setState(() {
      if (cuffieCounter > 0) cuffieCounter--;
    });
  }

  // Incremental functions

  void incrementGuantiSCounter() {
    setState(() {
      guantiSCounter++;
    });
  }

  void incrementGuantiMCounter() {
    setState(() {
      guantiMCounter++;
    });
  }

  void incrementGuantiLCounter() {
    setState(() {
      guantiLCounter++;
    });
  }

  void incrementBobinaCounter() {
    setState(() {
      bobinaCounter++;
    });
  }

  void incrementCandegginaCounter() {
    setState(() {
      candegginaCounter++;
    });
  }

  void incrementCalzariBianchiCounter() {
    setState(() {
      calzariBianchiCounter++;
    });
  }

  void incrementCalzariBluCounter() {
    setState(() {
      calzariBluCounter++;
    });
  }

  void incrementTuteCounter() {
    setState(() {
      tuteCounter++;
    });
  }

  void incrementCuffieCounter() {
    setState(() {
      cuffieCounter++;
    });
  }

  Categoria categoriaSelezionata = Categoria.dpi;


  @override
  Widget build(BuildContext context) {
    Widget selectionSection = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(margin: const EdgeInsets.only(top: 8), child: const Spacer()),
          Container(margin: const EdgeInsets.all(15),
              child: const Text('Seleziona categoria',
                style: TextStyle(color: Colors.black,
                  fontSize: 20,fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins-Regular'))),
          Container(margin: const EdgeInsets.only(bottom:50), child: const SelezionaCategoria())
          ]
    );


// First row: Guanti
    Widget firstButtonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: _buildButtonColumn(
              Icons.pan_tool_outlined,
              'Guanti S',
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(mini: true,
                      backgroundColor: const Color(0xFFCEBBFD),
                      foregroundColor: Colors.black,
                      onPressed: decrementGuantiSCounter,
                      child: const Icon(Icons.remove)),
                  Text('$guantiSCounter',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins-Regular')),
                  FloatingActionButton(mini: true,
                      backgroundColor: const Color(0xFFCEBBFD),
                      foregroundColor: Colors.black,
                      onPressed: incrementGuantiSCounter,
                      child: const Icon(Icons.add)),],),)),

        Expanded(
            child: _buildButtonColumn(
              Icons.pan_tool_outlined,
              'Guanti M',
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(mini: true,
                      backgroundColor: const Color(0xFFCEBBFD),
                      foregroundColor: Colors.black,
                      onPressed: decrementGuantiMCounter,
                  child: const Icon(Icons.remove)),
                  Text('$guantiMCounter',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins-Regular')),
                  FloatingActionButton(mini: true,
                    backgroundColor: const Color(0xFFCEBBFD),
                    foregroundColor: Colors.black,
                    onPressed: incrementGuantiMCounter,
                    child: const Icon(Icons.add))],),)),

        Expanded(
            child: _buildButtonColumn(
              Icons.pan_tool_outlined,
              'Guanti L',
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(mini: true,
                      backgroundColor: const Color(0xFFCEBBFD),
                      foregroundColor: Colors.black,
                      onPressed: decrementGuantiLCounter,
                      child: const Icon(Icons.remove)),
                  Text('$guantiLCounter',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins-Regular')),
                  FloatingActionButton(mini: true,
                      backgroundColor: const Color(0xFFCEBBFD),
                      foregroundColor: Colors.black,
                      onPressed: incrementGuantiLCounter,
                      child: const Icon(Icons.add)),],),)),],);

// Second row: Tute, calzari bianchi, calzari blu
    Widget secondButtonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: _buildButtonColumn(
                Icons.accessibility_new,
                'Tute',
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(mini: true,
                        backgroundColor: const Color(0xFFCEBBFD),
                        foregroundColor: Colors.black,
                        onPressed: decrementTuteCounter,
                        child: const Icon(Icons.remove)),
                    Text('$tuteCounter',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins-Regular')),
                    FloatingActionButton(mini: true,
                        backgroundColor: const Color(0xFFCEBBFD),
                        foregroundColor: Colors.black,
                        onPressed: incrementTuteCounter,
                        child: const Icon(Icons.add)),],),)),

        Expanded(
            child: _buildButtonColumn(
                Icons.do_not_step_outlined,
                'Calzari bianchi',
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(mini: true,
                        backgroundColor: const Color(0xFFCEBBFD),
                        foregroundColor: Colors.black,
                        onPressed: decrementCalzariBianchiCounter,
                        child: const Icon(Icons.remove)),
                          Text('$calzariBianchiCounter',
                          style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins-Regular')),
                    FloatingActionButton(mini: true,
                        backgroundColor: const Color(0xFFCEBBFD),
                        foregroundColor: Colors.black,
                        onPressed: incrementCalzariBianchiCounter,
                        child: const Icon(Icons.add)),],),)),

        Expanded(
            child: _buildButtonColumn(
                Icons.do_not_step_outlined,
                'Calzari blu',
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(mini: true,
                        backgroundColor: const Color(0xFFCEBBFD),
                        foregroundColor: Colors.black,
                        onPressed: decrementCalzariBluCounter,
                        child: const Icon(Icons.remove)),
                        Text('$calzariBluCounter',
                        style: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins-Regular')),
                    FloatingActionButton(mini: true,
                        backgroundColor: const Color(0xFFCEBBFD),
                        foregroundColor: Colors.black,
                        onPressed: incrementCalzariBluCounter,
                        child: const Icon(Icons.add)),],),))],);

    // Third row: Tute, calzari bianchi, calzari blu
    Widget thirdButtonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: _buildButtonColumn(
              Icons.face_6_outlined,
              'Cuffie',
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(mini: true,
                      backgroundColor: const Color(0xFFCEBBFD),
                      foregroundColor: Colors.black,
                      onPressed: decrementCuffieCounter,
                      child: const Icon(Icons.remove)),
                  Text('$cuffieCounter',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins-Regular')),
                  FloatingActionButton(mini: true,
                      backgroundColor: const Color(0xFFCEBBFD),
                      foregroundColor: Colors.black,
                      onPressed: incrementCuffieCounter,
                      child: const Icon(Icons.add)),],),)),

        Expanded(
            child: _buildButtonColumn(
              Icons.sanitizer_outlined,
              'Candeggina',
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(mini: true,
                      backgroundColor: const Color(0xFFCEBBFD),
                      foregroundColor: Colors.black,
                      onPressed: decrementCandegginaCounter,
                      child: const Icon(Icons.remove)),
                  Text('$candegginaCounter',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins-Regular')),
                  FloatingActionButton(mini: true,
                      backgroundColor: const Color(0xFFCEBBFD),
                      foregroundColor: Colors.black,
                      onPressed: incrementCandegginaCounter,
                      child: const Icon(Icons.add)),],),)),

        Expanded(
            child: _buildButtonColumn(
              Icons.battery_std,
              'Bobina carta',
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(mini: true,
                      backgroundColor: const Color(0xFFCEBBFD),
                      foregroundColor: Colors.black,
                      onPressed: decrementBobinaCounter,
                      child: const Icon(Icons.remove)),
                  Text('$bobinaCounter',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins-Regular')),
                  FloatingActionButton(mini: true,
                      backgroundColor: const Color(0xFFCEBBFD),
                      foregroundColor: Colors.black,
                      onPressed: incrementBobinaCounter,
                      child: const Icon(Icons.add)),],),))],);

    return MaterialApp(
        title: 'Animal Facility Warehouse Manager',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFCEBBFD)),
          useMaterial3: true,
        ),
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: const Text('Animal Facility Warehouse Manager',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      fontFamily: 'Poppins-Regular')),
              leading: const Icon(
                Icons.pest_control_rodent,
                size: 50,),),
            body: SizedBox(
              height: 2000,
              child: ListView(
                shrinkWrap: true,
                children: [
                  selectionSection,
                  firstButtonSection,
                  secondButtonSection,
                  thirdButtonSection],),)));
  }
}

class SelezionaCategoria extends StatefulWidget {
  const SelezionaCategoria({super.key});

  @override
  State<SelezionaCategoria> createState() => _SelezionaCategoriaState();
}

class _SelezionaCategoriaState extends State<SelezionaCategoria> {
  Categoria categoriaSelezionata = Categoria.dpi;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Categoria>(
        showSelectedIcon: false,
        style: ButtonStyle(
            side: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
              return const BorderSide(width: 2.0, color: Colors.black);
            }),
            backgroundColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
              return states.contains(MaterialState.selected)
                  ? const Color(0xFFCEBBFD)
                  : Colors.white;
            })),
        segments: const <ButtonSegment<Categoria>>[
          ButtonSegment<Categoria>(
              value: Categoria.dpi,
              label: Text('DPI'),
              icon: Icon(Icons.masks, size: 25)),
          ButtonSegment<Categoria>(
              value: Categoria.materialePulizia,
              label: Text('Pulizia'),
              icon: Icon(Icons.cleaning_services,size: 25)),
          ButtonSegment<Categoria>(
              value: Categoria.altro,
              label: Text('Altro'),
              icon: Icon(Icons.widgets_outlined, size: 25))],
        selected: <Categoria>{categoriaSelezionata},
        onSelectionChanged: (Set<Categoria> newSelection) {
          setState(() {categoriaSelezionata = newSelection.first;
          });
        }
    );
  }
}

Column _buildButtonColumn(
    IconData icon, String label, Row row) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Icon(
        icon,
        size: 70,
      ),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,),),),
      Container( child: row),],);
}

