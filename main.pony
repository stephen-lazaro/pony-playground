actor Main
  new create(env: Env) =>
    env.out.print("Hello, world!")
    try
      let eratos = SieveOfEratosthenes(64)?
      env.out.print(eratos.testSpace(2)?.string())
    else
      env.out.print("fuck")
    end
