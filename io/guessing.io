guesser := method(
 random := (Random value(99) + 1) floor();
 ffile := File standardInput;
 for(i, 0, 9, guess := ffile readLine() asNumber();
  if (guess == random, "That is correct!" println; break;);
  if (i > 0, if((random - prev) abs > (random - guess) abs, "hotter" println, "colder" println));
  prev := guess);
 "The answer was " .. random println;)

guesser
