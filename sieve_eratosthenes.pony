class SieveOfEratosthenes
  let bound: I64
  var testSpace: Array[Bool]
  new create(bound': I64) ? =>
    bound = bound'
    let rootBound: USize = USize.from[F64](F64.from[I64](bound).sqrt().floor())
    testSpace = Array[Bool](rootBound)
    var idx: USize = 0
    
    while idx < rootBound do
      testSpace.update(idx, true)?
    end

    var i: USize = 2

    while i < rootBound do
      var j: USize = 2 * i

      while j <= rootBound do
        testSpace.update(j - 2, false)?
        j = j + i
      end

      i = i + 1
    end
