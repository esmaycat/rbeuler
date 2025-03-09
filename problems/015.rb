factorial = -> { (1.._1).reduce :* }
puts factorial[40] / (factorial[20]**2)
