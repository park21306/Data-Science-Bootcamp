computer_hand<- c("ROCK","SCISSORS","PAPER")
Win <- 0 
Lose <- 0
Tie <- 0
while (TRUE) {
  choose <- c("Choose Rock Scissors Paper or Exit ")
  input_user_hand <- toupper(readline( choose ))
  if(input_user_hand == "ROCK" | input_user_hand == "SCISSORS" | input_user_hand == "PAPER" | input_user_hand == "EXIT"){
    random <-computer_hand[sample(1:3, 1)] 
    if(input_user_hand == random ){
      Tie <- Tie+1
    }
    else if(input_user_hand == "ROCK" & random == "PAPER"){
      Lose <- Lose +1
    }
    else if(input_user_hand == "SCISSORS" & random == "ROCK"){
      Lose <- Lose +1
    }
    else if(input_user_hand == "PAPER" & random == "SCISSORS"){
      Lose <- Lose +1
    }
    else if(input_user_hand == "ROCK" & random == "SCISSORS"){
      Win <- Win +1
    }
    else if(input_user_hand == "SCISSORS" & random == "PAPER"){
      Win <- Win +1
    }
    else if(input_user_hand == "PAPER" & random == "ROCK"){
      Win <- Win +1
    }
    else if(input_user_hand == "EXIT"){
      cat("Win =",Win ,"\n")
      cat("Lose =",Lose,"\n")
      cat("Tie =",Tie)
      break
    }
  }
  else{
    break
  }
  
}



