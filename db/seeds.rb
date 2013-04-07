challenge1 = Challenge.create(title: "Addition", content: "Create a method called add that takes two parameters and returns the sum", interactive: true)
challenge1.specs.build(content: "add(2, 3) == 5").save
challenge1.specs.build(content: "add(10, 3) == 13").save
challenge1.specs.build(content: "add(0, -5) == -5").save

challenge2 = Challenge.create(title: "Subtraction", content: "Create a method called subtract that takes two parameters and returns the difference.", interactive: true)
challenge2.specs.build(content: "subtract(2, 3) == -1").save
challenge2.specs.build(content: "subtract(10, 200) == -190").save
challenge2.specs.build(content: "subtract(200, 3) == 197").save
