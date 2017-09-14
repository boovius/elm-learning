function add(a,b,c,d,e,f,g) {
  return a + b + c + d + e + f + g;
}

function curry(originalFn) {
  return function curried() {
    var args = [].slice.call(arguments);
    console.log('args in curried', args)


    if (args.length >= originalFn.length) {

      console.log('applying original function');
      return originalFn.apply(null, args);

    } else {

      console.log('returning partially applied function');
      return function () {
        var rest = [].slice.call(arguments);
        console.log('arguments in curried function', rest);
        console.log('args in closure', args);
        console.log('concatted args', args.concat(rest));
        var result = curried.apply(null, args.concat(rest));
        //console.log('result', result);
        return result;
      };

    }
  };
}

var curried = curry(add);
var result = curried(1)(2)(3)(4);
console.log(result);
//console.log(partiallyApplied(4));

