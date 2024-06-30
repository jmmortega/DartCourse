//Mixins how use
import '03_abstract_classes.dart';

//Mixins allows add extra implementations, is not a inheritance, is a implementation.
//With the Keyword **on** constraint the use of mixin to a type and inherited objects.
//When put a constraint like happens in a generic type. You can use the properties and methods from constraint type.

mixin Processor on Computer {
  
  void executeProcess(String processName);
  
  void calculateProcess(String processName) {
    temperature = temperature + 1;

  }
}

mixin ComputerFan on Computer {
  void turnOnFan() {

    turnOff();
  }
}


//When you use Keyword **implement** to add a mixin. You need to implements all functionality of the mixin.
class PCComputer extends Computer implements Processor {
  @override
  void calculateProcess(String processName) {
    // TODO: implement calculateProcess
  }

  @override
  void executeProcess(String processName) {
    // TODO: implement executeProcess
  }

  @override
  void turnOff() {
    // TODO: implement turnOff
  }
}

//When you use keyword **with** to add a mixin. All methods and properties implemented in a mixin, are included.
class PcBoard extends Computer with Processor, ComputerFan {
  @override
  void executeProcess(String processName) {
    // TODO: implement executeProcess
  }

  @override
  void turnOff() {
    // TODO: implement turnOff
  }

  
}