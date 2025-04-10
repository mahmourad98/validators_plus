part of validator;

// Helper functions for validator and sanitizer.

_shift(List l) {
  if (l.length >= 1) {
    var first = l.first;
    l.removeAt(0);
    return first;
  }
  return null;
}

Map _merge(Map obj, [Map defaults = const {}]) {
  defaults.forEach((key, val) => obj.putIfAbsent(key, () => val));
  return obj;
}