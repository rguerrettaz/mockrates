challenge1 = Challenge.create(title: "Addition", content: "Create a method called add that takes two parameters and returns the sum", interactive: true)
challenge1.specs.build(content: "add(2, 3) == 5")
challenge1.specs.build(content: "add(10, 3) == 13")
challenge1.specs.build(content: "add(0, -5) == -5")

challenge2 = Challenge.create(title: "Subtraction", content: "Create a method called subtract that takes two parameters and returns the difference.", interactive: true)
challeng2.specs.build(content: "subtract(2, 3) == -1")
challeng2.specs.build(content: "subtract(10, 200) == -190")
challeng2.specs.build(content: "subtract(200, 3) == 197")
