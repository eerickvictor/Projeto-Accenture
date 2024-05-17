extension ListExtension <E> on List<E>{
  E? firstWhereOrNull(bool Function(E element)){
      for(E element in this){
        if(Function(element)) return element;
      }
      return null;
  }
}