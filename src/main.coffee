root = if window?
    window.reservoir ?= {}
    window.reservoir.math = {}
    window.reservoir.math
  else
    module.exports

root = [
    rnd0   : Math.random
    E      : -> Math.E
    LN2    : -> Math.LN2
    LN10   : -> Math.LN10
    LOG2E  : -> Math.LOG2E
    LOG10E : -> Math.LOG10E
    PI     : -> Math.PI
    SQRT1_2: -> Math.SQRT1_2
    SQRT2  : -> Math.SQRT2
  ,
    abs    : Math.abs
    round  : Math.round
    ceil   : Math.ceil
    floor  : Math.floor
    exp    : Math.exp
    cos    : Math.cos
    acos   : Math.acos
    sin    : Math.sin
    asin   : Math.asin
    tan    : Math.tan
    atan   : Math.atan
    log    : Math.log
    rnd1   : (a) -> Math.random() * a
    one_div: (a) -> 
      if a > 0
        1.0 / a 
      else if !a? or isNaN a
        1.0
      else
        a
    sqrt  : Math.sqrt
    log10 : (x) -> Math.log x, 10
    square: (x) -> x * x
    cube  : (x) -> x * x * x
  ,
    add    : (a,b) -> a + b
    sub    : (a,b) -> a - b
    sub_inv: (b, a) -> a - b
    div    : (b, a) -> if b is 0 then a else a / b
    div_inv: (a,b) -> if b is 0 then a else a / b
    mod    : (a,b) -> if b is 0 then 1.0 else a % b
    mod_inv: (b,a) -> if b is 0 then 1.0 else a % b
    mul    : (a,b) -> a * b
    atan2  : Math.atan2
    step   : (x, edge) -> if x < edge then 0.0 else 1.0
    step_inv: (edge, x) -> if x < edge then 0.0 else 1.0
]
