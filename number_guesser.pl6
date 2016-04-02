#So, before the next Perl6 meetup, let's write an app that does the following:

my $game_number = (1..100).pick;
#say $game_number;

#- asks you to guess a number between 1 and 100 (inclusive)
say "Please guess a number from 1 to 100. You have 7 tries";

#- gives you 7 tries to guess the number
#- tells you after your guess if the number is higher, lower or correct
#- if you fail to get it right, it calls you an idiot

my $number;

loop ( my $i=0; $i < 6 ; $i++ ) {
    $number = prompt("What is your number?\n");
    if  $number > $game_number {
       say "Your guess is higher than my number "
    } elsif  $number < $game_number  {
       say "Your guess is lower than my number"
    } elsif  $number == $game_number  {
       say "You guessed correctly";
       exit;
    }
    
}

say "My number was $game_number. That was fun lets play again."

