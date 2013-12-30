library example;

import 'dart:html';
import 'dart:async';
import 'package:polymer/polymer.dart';

import 'packages/makery_ui_split_panel/split_panel.dart';

@CustomTag('example-element')
class ExampleElement extends PolymerElement {
  
  ExampleElement.created() : super.created() {
  }
  
  void enteredView() {
    super.enteredView();
    
    SplitPanelElement baseContainer = $['base-container'];
    
    // Initial layout with panel size ratios.
    baseContainer.resizeWithRatios(window.innerWidth, window.innerHeight);
    
    // Handle window resize events.
    window.onResize.listen((_) {
      baseContainer.resize(window.innerWidth, window.innerHeight);
    });
  }
}