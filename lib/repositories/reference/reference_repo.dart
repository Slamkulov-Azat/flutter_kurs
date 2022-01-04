// import 'package:flutter_kurs/models/reference_model.dart';

// //List<Reference> referenceBank;

// class ReferenceRepo  {

//   // ignore: prefer_final_fields
//   List<Reference> referenceBank = [
//     Reference(
//       referenceName: 'AppBar',
//       referenceText:
//           'AppBar class - Материалдык дизайн виджети. AppBar тиркеменин эң жогорку компоненти болуп саналат. Бул виджет көбүнчө Scaffold классынын ичинде жайгашкан. Ошондой эле, AppBar беш бөлүктөн турат: leading, title, ToolBar (actions), flexiableSpace, bottom.',
//     ),
//     Reference(
//       referenceName: 'Center',
//       referenceText:
//           'Center - өзүнүн ичинде жайгашкан компонентерди борборлоштуруучу виджет.  Center виджеттин негизги төрт компоненти бар: widthFactor, heightFactor, child жана alignment.',
//     ),
//     Reference(
//       referenceName: 'Column',
//       referenceText:
//           'Column - children ди вертикалдуу массивде көрсөткөн виджет. Columnдун параметрлери: key:виджеттин ачкычы. mainAxisAlignment: вертикалдуу тегиздейт. mainAxisSize: Негизги огу боюнча виджет ээлеген мейкиндикти орнотот. crossAxisAlignment: Горизонталдуу тегиздейт.textDirection: горизонталдуу жайгаштырылган элементтердин тартибин аныктайт. verticalDirection: Columnдун ичинде жайгашкан элементтердин вертикалдуу тартибин аныктайт. textBaseline: элементтерди тегиздөө үчүн базалык сызыкты орнотот. children:  Columnдун ичинде жайгашкан(вложенный) элементтердин жыйындысы',
//     ),
//     Reference(
//       referenceName: 'Container',
//       referenceText:
//           'Container- өзүнүн ичине кандайдыр бир компонентти камтуу үчүн колдонулуучу виджет.  Бул виджетке padding, margin, alignment  касиеттер  колдонулат.',
//     ),
//     Reference(
//       referenceName: 'Expanded',
//       referenceText:
//           'Expanded Widgetин колдонуу менен, өзүбүз каалагандай виджетти түзө алабыз. Бул өзүбүз жасаган виджетке **function** дагы кошууга толук мүмкүнчүлүк бар.Row жана Column виджеттеринин ичине тизилген нерселерди бирдей размерде тизүү үчүн Expanded виджети колдонулат. Expanded дин ичинде болсо flex деген өзгөчөлүгү менен алардын размерин да өзгөртө алабыз, flex’тин эң чоң размери 10 болуп эсептелет, жана flexтин демейки параметри 1 болуп эсептелет. flex 1 берүүнүн кажети жок, анткени ал демейки катары 1 де турат.',
//     ),
//     Reference(
//       referenceName: 'MaterialApp',
//       referenceText:
//           'Материалдык дизайнды колдонгон колдонмо. Материалдык дизайн колдонмолору үчүн көбүнчө талап кылынган бир катар виджеттерди камтыган ыңгайлуу виджет. Ал AnimatedTheme жана GridPaper сыяктуу материалдык-дизайнга спецификалык функцияларды кошуу менен WidgetsApp ка негизделет. MaterialApp төмөнкү тартипте маршруттарды издөө үчүн жогорку деңгээлдеги Навигаторду конфигурациялайт: / маршруту үчүн, эгерде нөл эмес болсо, үй мүлкү колдонулат. Болбосо, каттамдар таблицасы колдонулат, эгерде анда маршрутка жазуусу бар болсо. Болбосо, эгерде берилген болсо, onGenerateRoute чакырылат. Ал үй жана маршруттар тарабынан иштетилбеген бардык жарактуу маршрут үчүн нөл эмес маанини кайтарышы керек. Акыр-аягы, эгерде баары аткарылбаса, UnknownRoute деп аталат. Эгерде Навигатор түзүлсө, анда бул опциялардын жок дегенде бири / маршрутун иштетиши керек, анткени ал ишке киргизүүдө жараксыз initialRoute көрсөтүлгөндө колдонулат (мисалы, Android де аны ишке киргизген башка колдонмо тарабынан; карагыла: dart:ui.PlatformDispatcher .defaultRouteName).',
//     ),
//     Reference(
//       referenceName: 'Padding',
//       referenceText:
//           'Padding виджети childrenге боштук берүүгө мүмкүндүк берет.  Paddingти орноткондон кийин дайыма рadding параметри колдонулат. Padding параметрин сүрөттөө үчүн EdgeInsets  классы колдонулат. Ал өз ичине EdgeInsets.all(), EdgeInsets.only(), EdgeInsets.symmetric конструктарларын камтыйт. ',
//     ),
//     Reference(
//       referenceName: 'Row',
//       referenceText:
//           'Row өз ичинде children алат жана аны горизонталдуу массивде көрсөткөн виджет.',
//     ),
//     Reference(
//       referenceName: 'Scaffold',
//       referenceText:
//           'Негизги материалдык дизайн визуалдык жайгашуу түзүмүн ишке ашырат. Бул класс тартмаларды жана төмөнкү барактарды көрсөтүү үчүн APIлерди камсыз кылат. Туруктуу төмөнкү баракты көрсөтүү үчүн, Scaffold.of аркылуу учурдагы BuildContext үчүн ScaffoldState алыңыз жана ScaffoldState.showBottomSheet функциясын колдонуңуз.',
//     ),
//     Reference(
//       referenceName: 'Text',
//       referenceText:
//           'Text виджети бир стилдеги текст саптарын көрсөтөт. Текст бир нече сапта,  же макеттин чектөөлөрүнө жараша баары бир гана сапта көрсөтүлүшү мүмкүн. Стиль аргументи милдеттүү эмес. Эгерде Textке Style берилбесе, анда текст DefaultTextStyle стилин колдонот. ',
//     ),
//   ];
// }
