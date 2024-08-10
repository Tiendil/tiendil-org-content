---
title = "Делаем простой ИИ тамагочи на ChatGPT"
tags = [ "gamedev", "neural-networks", "practice", "procedural-content-generation", "prompt-engineering", "tutorial"]
published_at = "2023-02-17T12:00:00+00:00"
seo_description = "Пример реализации ИИ NPC с помощью ChatGPT на примере тамагочи."
seo_image = "images/making-ai-tamagotchi-with-chatgpt-cover.jpg"
---

/// brigid-images
src = "images/making-ai-tamagotchi-with-chatgpt-cover.jpg"
caption = "DALL-E: Screenshot of a hamster from a game simulating artificial life, similar to the Creatures game."
///

Обсуждали с коллегами что ещё может современный ИИ, вспомнили про тамагочи и всякую искусственную жизнь.

Поболтали и разошлись, а я пошёл и за 15 минут получил вот такой результат.

Тюнить и украшать вывод не буду — уже есть куча примеров как получать чистый код от ботов. В данном случае интересна сама демонстрация возможности.

Спойлер: с ChatGPT не надо тратить время на разработку ИИ простых ботов, сеть подстроится под ваши требования. **Просто скажите кем ChatGPT должна притвориться.**

Этот пост неявно продолжает размышления из [Write Your Own Adventure]{post:write-your-own-adventure}.

<!-- more -->

## Простая демонстрация

**Tiendil**

```
Let’s imagine a simplified virtual world with the following:

- A hamster — autonomous agent with the behaviour expected from a normal hamster.
- A cell in which this hamster lives.
- Hamster stays in the centre of the cell.
- From the left side of the cell, there is cave A.
- From the right side of the cell, there is cave B.
- The red cube blocks entry to cave A.
- The blue cube blocks entry to cave B.
- There is a mouse pointer which is visible for the hamster.
- Hamster knew that if the pointer is moving in circles, then the food is hidden in cave A.
- Hamster knew that if the pointer is moving in crosses, then the food is hiden in cave B.
- The hamster can easily move blocks.

We can describe hamster actions with the next notation:

- Terms are `hamster`, `cave_a`, `cave_b`, `cube_red`, `cube_blue`, `food`
- Operations are `go_to(X, Y)`, `move_away(x, Y)`, `eat(X, Y)`
- Full operation look like `go_to(hamster, cube_red)` or `eats(hamster, food)`.

Describe the next actions of the hamster for the specified situation in format:

- `operation 1`
- `operation 2`
- …
- `operation n`
```

**ChatGPT**

```
Here are the steps the hamster could take to get the food in this situation:


go_to(hamster, cube_red) # Move to the red cube
move_away(cube_red, hamster) # Push the red cube away
go_to(hamster, cave_a) # Move to cave A
eat(hamster, food) # Eat the food in cave A


Alternatively, if the mouse pointer is moving in crosses instead of circles, the hamster would do the following:


go_to(hamster, cube_blue) # Move to the blue cube
move_away(cube_blue, hamster) # Push the blue cube away
go_to(hamster, cave_b) # Move to cave B
eat(hamster, food) # Eat the food in cave B
```

## Сложное поведение

**Tiendil**

```
Let’s imagine a simplified virtual world with the following:

- A hamster — autonomous agent with the behaviour expected from a normal hamster.
- A cell in which this hamster lives.
- Hamster stays in the centre of the cell.
- From the west side of the cell, there is cave A.
- From the east side of the cell, there is cave B.
- The red cube blocks entry to cave A.
- The blue cube blocks entry to cave B.
- The pink button is placed near north side of the cell.
- There is a mouse pointer which is visible for the hamster.
- The hamster can easily move cubes if they activated.
- Red cube is not activated.
- Blue cube is not activated.
- Hamster must push pink button 3 times to activste red cube.
- Hamster must push pink button 5 times to activste blue cube.
- Hamster knew that if the pointer is moving in circles, then the food is hidden in cave A.
- Hamster knew that if the pointer is moving in crosses, then the food is hiden in cave B.

We can describe hamster actions with the next notation:

- Terms are `hamster`, `cave_a`, `cave_b`, `cube_red`, `cube_blue`, `food`, `button`
- Operations are `go_to(X, Y)`, `move_away(X, Y)`, `eat(X, Y)`, `push(X, Y)`.
- Full operation look like `go_to(hamster, cube_red)` or `eats(hamster, food)`.

Describe the next actions of the hamster for the specified situation in format:

- `operation 1`
- `operation 2`
- …
- `operation n`
```

**ChatGPT**

```
Here is a possible set of actions for the hamster in this situation:

go_to(hamster, button): Move to the pink button.
push(hamster, button): Push the button once.
push(hamster, button): Push the button twice.
push(hamster, button): Push the button three times to activate the red cube.
go_to(hamster, cave_a): Move to the entrance of cave A.
go_to(hamster, cube_red): Move to the red cube.
move_away(hamster, cube_red): Push the red cube out of the way.
go_to(hamster, food): Move to the food in cave A.
eat(hamster, food): Eat the food.
go_to(hamster, cell): Move back to the center of the cell.
go_to(hamster, button): Move to the pink button.
push(hamster, button): Push the button four times.
push(hamster, button): Push the button five times to activate the blue cube.
go_to(hamster, cave_b): Move to the entrance of cave B.
go_to(hamster, cube_blue): Move to the blue cube.
move_away(hamster, cube_blue): Push the blue cube out of the way.
go_to(hamster, food): Move to the food in cave B.
eat(hamster, food): Eat the food.
go_to(hamster, cell): Move back to the center of the cell.
```

Тут стоит обратить внимание на пару нюансов:

- Это уже довольно сложное поведение.
- Активируя второй куб ChatGPT учла сколько раз была нажата кнопка ранее.
- ChatGPT в этот раз не указала на что реагировал хомяк, просто открыла обе пещеры. Но тут я виноват, что не прописал явно как двигается курсор.

## Первый вариант запроса

Самый первый запрос дал немного другие результаты, но тоже интересные.

**Tiendil**

```
Let’s imagine a simplified virtual world with the following:

- A hamster — autonomous agent with the behaviour expected from a normal hamster.
- A cell in which this hamster lives.
- Hamster stays in the centre of the cell.
- From the left side of the cell, there is cave A.
- From the right side of the cell, there is cave B.
- The red cube blocks entry to cave A.
- The blue cube blocks entry to cave B.
- There is a mouse pointer which is visible for the hamster.
- Hamster knew that if the pointer is moving in circles, then the food is hidden in cave A.
- Hamster knew that if the pointer is moving in crosses, then the food is hiden in cave B.
- The hamster can easily move blocks.

Describe in terms of logic predicates what the hamster will do if he is hungry and sees that pointer moved in crosses.
```

**ChatGPT**

```
To describe the behavior of the hamster in this scenario, we can use logical predicates that capture the rules and conditions of the virtual world.

Let’s use the following predicates:

- `hungry(X)`: True if X is the hamster and X is hungry.
- \`in\_cell(X): True if X is inside the cell.
- `can_move(X, Y)`: True if X can move Y (where Y is the object being moved).
- `blocked(X, Y)`: True if object Y is blocking access to object X.
- `sees(X, Y)`: True if X can see object Y.
- `moving_in_crosses(X)`: True if the pointer is moving in crosses.
- `food_in_cave(X, Y)`: True if food is in cave Y and hamster X knows it.

With these predicates, we can describe the behavior of the hamster as follows:

- If the hamster is hungry and sees the pointer moving in crosses, it will first check if it is inside the cell using the in\_cell predicate.
- If it is inside the cell, it will check if it can move the blue cube blocking cave B using the can\_move predicate.
- If it can move the blue cube, it will move it out of the way using the can\_move predicate.
- It will then check if it can see the food in cave B using the sees predicate.
- If it can see the food, it will go to cave B to get it.
- If it cannot see the food, it will assume that the food is in cave A (because it knows that the pointer moving in crosses means the food is in cave B) and check if it can move the red cube blocking cave A using the can\_move predicate.
- If it can move the red cube, it will move it out of the way using the can\_move predicate.
- It will then check if it can see the food in cave A using the sees predicate.
- If it can see the food, it will go to cave A to get it.
- If it cannot see the food in either cave, it will assume that it made an error in its inference and try again later.
- Therefore, the logical statement that describes the behavior of the hamster when it is hungry and sees the pointer moving in crosses would be:

hungry(hamster) ∧ in_cell(hamster) ∧ moving_in_crosses(pointer) ∧ can_move(hamster, blue_cube) ∧ sees(hamster, food_in_cave(hamster, cave_B))
→ (can_move(blue_cube, empty_space) ∧ sees(hamster, food_in_cave(hamster, cave_B)) ∧ go_to(cave_B))
∨ (can_move(hamster, red_cube) ∧ can_move(red_cube, empty_space) ∧ sees(hamster, food_in_cave(hamster, cave_A)) ∧ go_to(cave_A))


where `empty_space` refers to an empty space where the cube was moved and `go_to` refers to the hamster’s action of moving to the specified cave.
```
