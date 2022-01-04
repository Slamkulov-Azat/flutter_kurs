

import 'package:flutter/material.dart';
import '../models/reference_model.dart';

class RefernceProvider with ChangeNotifier {
  String referenceName;
  String referenceRuText;
  String referenceEnText;
  String referenceKgText;

  void setReference(
    String newReferenceName, 
    String newReferenceRuText,
    String newReferenceEnText, 
    String newReferenceKgText, 
      ) {
    referenceName = newReferenceName;
    referenceRuText = newReferenceRuText;
    referenceEnText = newReferenceEnText;
    referenceKgText = newReferenceKgText;

  }

  String getReferenceText(Locale locale) {
    switch (locale.languageCode) {
      case 'ru':
        return referenceRuText;
      case 'en':
        return referenceEnText;
      case 'it':
        return referenceKgText;
    }
  }

  final defaultStyle = const TextStyle(
    fontSize: 20,
  );
  final boldStyle = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  Map<String, Reference> referenceBank1 = {
    'AppBar': Reference(
      referenceName: 'AppBar',
      referenceRuText:
          'AppBar class - Материалдык дизайн виджети. AppBar тиркеменин эң жогорку компоненти болуп саналат. Бул виджет көбүнчө Scaffold классынын ичинде жайгашкан. Ошондой эле, AppBar беш бөлүктөн турат: leading, title, ToolBar (actions), flexiableSpace, bottom.',
      referenceEnText:
          'AppBar class - Material design widget. AppBar is the highest component of the application. This widget is usually located within the Scaffold class. AppBar also consists of five parts: leading, title, ToolBar (actions), flexiableSpace, bottom.',
      referenceKgText:
          'AppBar class - Материалдык дизайн виджети. AppBar тиркеменин эң жогорку компоненти болуп саналат. Бул виджет көбүнчө Scaffold классынын ичинде жайгашкан. Ошондой эле, AppBar беш бөлүктөн турат: leading, title, ToolBar (actions), flexiableSpace, bottom.',
      referenceText: RichText(
        text: const TextSpan(
            style: TextStyle(fontSize: 20),
            children: <InlineSpan>[
              WidgetSpan(
                //style: TextStyle(fontSize: 20),
                child: Text(
                    "    <b>GestureDetector<b> - это не визуальный виджет, который в основном используется для определения жестов пользователя. Чтобы идентифицировать жест, нацеленный на виджет, виджет можно поместить внутри виджета GestureDetector. Если GestureDetector не имеет вложенного виджета, то он занимает все пространство своего родительского контейнера, делая всю его площадь кликабельной.\n",
                    style: TextStyle(fontSize: 20)),
              ),
              WidgetSpan(
                  //style: TextStyle(fontSize: 20),
                  child: Text(
                      "Некторые методы использования GestureDetector - Tap, Double Tap,Drag,Flick ,Pinch, Spread/Zoom, Panning.\n",
                      style: TextStyle(fontSize: 20))),
              TextSpan(
                text: "RaisedButton",
                style: TextStyle(
                  //fontSize: 20, 
                  fontWeight: FontWeight.bold,
                  //color: Theme.of(context).primaryColor
                ),
              ),
              TextSpan(
                  text:
                      " - это главный вид кнопки в MaterialDesign. Однако этот класс считается устаревшим и чаще используется ElevatedButton.\n",
                  //style: TextStyle(fontSize: 20),
              ),
              WidgetSpan(child: Text('\n')),
              TextSpan(
                text: "ElevatedButton",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    " - представляет кнопку, основная задача которой - реагировать на нажатия и по нажатию выполнять некоторое действие.\n",
                //style: TextStyle(fontSize: 20),
              ),
              TextSpan(
                text:
                    "параметры: onPressed, onLongPress,  style, child: содержимое кнопки в виде другого виджета (обычно надпись на кнопке), key: ключ элемента",
                //style: TextStyle(fontSize: 20),
              ),
            ]),
      ),
    ),
    'Center': Reference(
      referenceName: 'Center',
      referenceRuText:
          'Center - өзүнүн ичинде жайгашкан компонентерди борборлоштуруучу виджет.  Center виджеттин негизги төрт компоненти бар: widthFactor, heightFactor, child жана alignment.',
      referenceEnText:
          'Center is a widget that centralizes its components. The Center widget has four main components: widthFactor, heightFactor, child and alignment.',
      referenceKgText:
          'Center - өзүнүн ичинде жайгашкан компонентерди борборлоштуруучу виджет.  Center виджеттин негизги төрт компоненти бар: widthFactor, heightFactor, child жана alignment.',
    ),
  };

  List<Reference> referenceBank = [
    Reference(
      referenceName: 'Material',
      referenceRuText:
          'Material - содержит в себе набор инструментов(widgets), которые помогают в создании новых приложений.',
      referenceEnText:
          'Material has a package of widgets which make it easier to create new apps..',
      referenceKgText:
          'Material - тиркеме жасоодо ар түрдүү виджеттер менен камсыздоо үчүн колдонулат.',
      // referenceRuImage: Image.asset('assets/images/load/Untitled.png'),
      // referenceEnImage: Image.asset('assets/images/load/main_image.png'),
      // referenceKgImage: Image.asset('assets/images/load/logo.png'),
    ),
    Reference(
        referenceName: 'Cupertino',
        referenceRuText:
            'Cuperino - используется в создании приложений для IOS платформы.',
        referenceEnText:
            'Cupertino is used to create applications for the IOS platform.',
        referenceKgText: 'Cupertino - iOS тиркемелерди түзүү үчүн колдонулат.'),
    Reference(
        referenceName: 'Widget',
        referenceRuText:
            "Widgets - это объекты высокого уровня, используемые для описания любой части приложения. Виджеты могут быть  всем . В flutter почти все, что вы будете кодировать, будет находиться внутри виджета. (Padding, Margin, Center, Row, Column ...etc).  И даже ваше приложения является Виджетом. 'StaelessWidget(не имеют состояния)' -  Виджеты в процессе работы приложения не изменяют своих свойств.  Они могут изменяться лишь посредством внешних событий, которые возникают на родительских виджетах-контейнерах.. Этот класс подходит для создания виджетов, которые не хранят состояние. При создании своего подкласса необходимо переопределить метод build(). StatefulWidget - является динамичным по своей природе. Это означает, что он может отслеживать изменения и обновлять пользовательский интерфейс на основе этих изменений. Пользователь может взаимодействовать с StatefulWidget. Например, если вы нажимаете кнопку, и она выполняет любую задачу то это SatefulWidget, если вы перемещаете slider, и он что-либо делает, то это SatefulWidget. (CheckBox, Radio, Slider, InkWell, Form и TextField).",
        referenceEnText:
            "Widget is a way to declare and construct UI. It is not just a piece of UI but a lot more than just structural elements like buttons, text, image, list or slider. A widget might display Something, it might help define design, it might help with layout, it may handle user interaction, etc.( For example, Padding is a widget, Margin is a widget, Center is a widget, Layout rows and columns are also widgets). Here also remember that in flutter everything is a widget. Even your app itself is a widget. StatelessWidget - They are static in nature. Stateless widgets don’t store any state,  they don’t store values that might change. You can also say that stateless widgets are “DATALESS” widgets. As they don’t store any real-time data. For example, if you have a simple Text widget on the screen, but it doesn’t do anything then its Stateless Widget. Icon, IconButton, and Text are an example of stateless widgets. When creating StatelessWidget you need to override the build () method. If a widget is not changing, it’s a Stateless Widget. StatefulWidget is dynamic in nature. That means it can keep track of changes and update the UI based on those changes. The user can interact with a stateful widget. For example, If you press a button and it performs any task its a Stateful Widget, If you are moving a slider and it does anything then its a Stateful Widget, If you swipe item from a list and item gets deleted then that list a Stateful Widget. (CheckBox, Radio, Slider, InkWell, Form, and TextField). If a widget changes, it’s a Stateful Widget",
        referenceKgText:
            "Виджет – бул колдонуучунун интерфейсинин бир бөлүгүнүн өзгөрүлбөс сүрөттөлүшү. Flutterде визуалдык, структуралык, платформа жана интерактивдүү колдонмолордун жыйнагын  кооз жана тезирээк түзүүгө жардам берет.  Флаттер аркылуу жасалган тиркеме жалпысынан   widgets аркылуу курулат. Ал эми Widgets дин 2 түрү кездешет, Алар: 'StatelessWidget' - Бул интерфейсте өзгөрүү болбой турган учурларда колдонула турган 'Widget' тердин топтому. Көпчүлүк учурда маалыматтар бир жарыяланган боюнча колдонуучу тарабынан кандайдыр бир өзгөрүү кылынбай турган болсо 'StatelessWidget Widget'терин колдонуу абдан ыңглайуу болот. Ал эми өзгөрүүнү талап кылган интервес үчүн төмөнкүнү караңыз. 'StateFulWidget' - Бул интерефсте колдонуучу тарабынан өзгөртүү кылына турган болсо, же кандайдыр өзгөрүүлөрдү көргүбүз келгенде колдоунула турган 'Widget' топтому."),
    Reference(
        referenceName: 'AppBar',
        referenceRuText:
            'AppBar (панель приложений) состоит из одной панели инструментов (Tool Bar) и других потенциальных виджетов (Widget). В частности, AppBar разделена на пять областей: leading, title, Tool Bar (actions), flexiableSpace, bottom.',
        referenceEnText:
            'AppBar consists of  Tool Bar and other potential Widgets. Specifically, the AppBar is divided into five areas: leading, title, Tool Bar (actions), flexiableSpace, bottom.',
        referenceKgText:
            'AppBar - тиркеме жасоодо колдонулуучу material widget. Биз ар бир тиркемеде көрүп турган инструменттер панели AppBar Widgetи аркылуу жасалат.'),
    Reference(
        referenceName: 'Scaffold',
        referenceRuText:
            'Scaffold - это виджет, который способен расширить и заполнить доступное пространство или экран. Он предоставляет API для отображения основных виджетов приложения, таких как Drawer, SnackBar, Bottom-Sheet, FloatingActionButton, AppBar, body, BottomNavigationBar.',
        referenceEnText:
            'Scaffold expands or occupies the whole device screen.  It is a Widget Scaffold which provides many widgets likeDrawer, SnackBar, Bottom-Sheet, FloatingActionButton, AppBar, body, BottomNavigationBar.',
        referenceKgText:
            'Scaffold - интерфейсти Material Design стилинде  түзүүдө колдонулуучу  эң маанилүү  виджеттердин бири.  Бул виджет өзүнө 3 параметрди камтыйт: AppBar, Body жана NavBar. '),
    Reference(
        referenceName: 'Container',
        referenceRuText:
            'Container — Это один из базовых виджетов верстки во Flutter, представляющий собой комбинацию нескольких простых виджетов. Помимо встроенных Padding, Margin, Alignment, он также имеет DecoratedBox (для цвета фона, границы и т. д.) И ConstrainedBox (для ограничений размера).',
        referenceEnText:
            'Container -  basic layout widget in Flutter, which is a combination of  simple widgets. Besides the built-in Padding, Margin, Alignment, it also has a DecoratedBox (for background color, border, etc.) and ConstrainedBox (for size constraints).',
        referenceKgText:
            'Container- өзүнүн ичине кандайдыр бир компонентти камтуу үчүн колдонулуучу виджет.  Бул виджетке padding, margin, alignment  касиеттер  колдонулат.'),
    Reference(
        referenceName: 'Buttons',
        referenceRuText:
            'GestureDetector это не визуальный виджет, который в основном используется для определения жестов пользователя. Чтобы идентифицировать жест, нацеленный на виджет, виджет можно поместить внутри виджета GestureDetector. Если GestureDetector не имеет вложенного виджета, то он занимает все пространство своего родительского контейнера, делая всю его площадь кликабельной.Некторые методы использования GestureDetector - Tap − прикосновение к поверхности устройства кончиком пальца на короткое время.- Double Tap − двойное короткое нажатие. - Drag − прикосновение к поверхности устройства кончиком пальца, затем плавное перемещение. - Flick −схожее с методом Drag, чуточку быстрее. - Pinch − ущипнуть поверхность двумя пальцами. - Spread/Zoom − противоположно методу Pinch. - Panning − прикосновение к поверхности устройства и перемещение в любом направлении. RaisedButton - это главный вид кнопки в MaterialDesign. Однако этот класс считается устаревшим и чаще используется ElevatedButton. ElevatedButton -представляет кнопку, основная задача которой - реагировать на нажатия и по нажатию выполнять некоторое действие. параметры: - onPressed: описывает действие, которое вызывается при нажатии - onLongPress: описывает действие, которое вызывается при долгом нажатии - style: стиль кнопки - child: содержимое кнопки в виде другого виджета (обычно надпись на кнопке) - key: ключ элемента',
        referenceEnText:
            "GestureDetector - is a non-visual widget primarily used for detecting the user’s gesture. To identify a gesture targeted on a widget, the widget can be placed inside GestureDetector widget.  If the GestureDetector isn't placed inside the widget, then it takes up the entire space and its entire area becomes clickable. Some of the widely used gestures are mentioned here − - Tap − Touching the surface of the device with fingertip for a short period and then releasing the fingertip. - Double Tap − Tapping twice in a short time. - Drag − Touching the surface of the device with fingertip and then moving the fingertip in a steady manner and then finally releasing the fingertip. - Flick − Similar to dragging, but doing it in a speeder way. - Pinch − Pinching the surface of the device using two fingers. - Spread/Zoom − Opposite of pinching. - Panning − Touching the surface of the device with fingertip and moving it in any direction without releasing the fingertip. RaisedButton - is the main button  in MaterialDesign. However, this class is deprecated and is often used by ElevatedButton. ElevatedButton -represents a button, the main task of which is to respond to pressing and perform some action upon pressing. parameters: - key: the key of the item - onPressed:  describes the action that is called when pressed - onLongPress: describes the action that is called when long pressed - style:  the style of the button - child: the content of the button as another widget (usually the Text on the button)",
        referenceKgText:
            'GestureDetector - бул негизинен колдонуучунун жаңсоосун аныктоо үчүн колдонулган визуалдык эмес виджет. Виджетке багытталган жаңсоону аныктоо үчүн, виджет GestureDetector виджетинин ичине жайгаштырылышы мүмкүн. **GestureDetector** иштетүү үчүн: 1) Button түзүңүз. 2) Аны onTap() кайра чакыруусу үчүн GestureDetector менен ороп алыңыз. RaisedButton - бул Material виджеттин негизиндеги материалдык дизайн баскычы. Бирок бул класс эскиргендигине байланыштуу, анын ордуна көбүнчө ElevatedButton колдонулат. Эски коддорду көргөн кезде же мурун жасалган проектилерде RaisedButtonду көп кездештирүүгө болот. Flutterде жогорулай турган баскычтарды түзүү үчүн ElevatedButton виджетин колдонулат.  ElevatedButton  стили defaultStyleOf тарабынан аныкталат. Эгерде onPressed жана onLongPress кайра чакыруучу функциялар нөл болсо, анда баскыч өчүрүлөт.'),
    Reference(
        referenceName: 'PageRoutes',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Image',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Text',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Column',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Pubspec.yam',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Row',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Expanded',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Icons',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'DRY',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'List',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Objects in Flutter',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Loops',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Padding',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Alignment',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'TextButton',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'SizedBox',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'DRY кодтон  арылуу жолдору',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'initState()',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'bool',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'SafeArea',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Slider',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Theme',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Enum',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Conditional statement',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'RawMaterialButton',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'InkWell',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'API',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Map',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Asynchronous',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Synchronous',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Future',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Try/ Catch',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'HTTP status code',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'HTTP Response',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Geolocation',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'JSON',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'OOP',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'The Stateful Widget Lifecycle',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Firebase',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Navigator.pushNamed()',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'static',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'const ',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Animation ',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Hero',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'TextFormField',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: 'Form',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
    Reference(
        referenceName: '',
        referenceRuText: '',
        referenceEnText: '',
        referenceKgText: ''),
  ];
}
