%Sena Can
%220709070
%Computer Engineering
%MBI103|1189381|Introduction to Programming
%Project 1
%Fall 2023
%Asst. Prof. Deniz DAL
clc; %Clears the command window before the game starts
level=1; %Level variable
right2=level+3; %Indicates which prediction the game ends after
rightToGuess=level+2; %Prediction right variable
randomInteger1=round(1+4*rand(1)); %The system generates random numbers for level 1
randomInteger2=round(1+9*rand(1)); %The system generates random numbers for level 2
randomInteger3=round(1+19*rand(1)); %The system generates random numbers for level 3

while level==1
    if rightToGuess>0 %The right to guess must be a positive value
        guess=input('Please enter your guess: '); %The number guessed by the user is entered
        if guess==-1
            rightToGuess=0;
            right2=right2-1;

        elseif (guess<1)||(guess>5) %Indicates that the predicted number is not within the given range
            fprintf('Please enter a value within the range!\n'); %indicates that the wrong value was entered
            rightToGuess=rightToGuess-1; %Shows the remaining guessing right
            right2=right2-1;
            fprintf('Your remaining guess: %d\n',rightToGuess); %Shows the remaining prediction right
            
            
        elseif randomInteger1==guess %The predicted number is equal to the selected number
            fprintf('Your guess is correct.You have passed level two. Guess the number chosen from the range [1,10].\n'); %indicates moving to the next level
            level=level+1; %Indicates moving to the next level
            rightToGuess=level+2; %Shows how many rights the user has at the passed level
            right2=level+3;
            break;
        else 
            fprintf('Your guess is not correct.\n'); %indicates that the prediction is wrong
            rightToGuess=rightToGuess-1; %Shows the remaining guessing right
            right2=right2-1;
            fprintf('Your remaining guess: %d\n',rightToGuess); %Shows the remaining prediction right

        end
    else 
        right2=4-right2;
          fprintf('Game over.You finished the game in your %g. right to guess on level %d.',right2,level); %The game ends because the correct answer cannot be guessed.
          break;
    end
end

    while level==2
        if rightToGuess>0 
            guess=input('Please enter your guess: '); 
            if guess == -1
            rightToGuess = 0;
             right2=right2-1;

            elseif (guess<1)||(guess>10) %Indicates that the predicted number is not within the given range
            fprintf('Please enter a value within the range!\n');
            rightToGuess=rightToGuess-1; 
            right2=right2-1;
            fprintf('Your remaining guess: %d\n',rightToGuess); 

            elseif randomInteger2==guess %The predicted number is equal to the selected number
            fprintf('Your guess is correct.You have passed level three. Guess the number chosen from the range [1,20].\n'); %indicates moving to the next level
            level=level+1;
            rightToGuess=level+2;
            right2=level+3;
            break;

            else  
             fprintf('Your guess is not correct.\n'); 
             rightToGuess=rightToGuess-1; 
             right2=right2-1;
             fprintf('Your remaining guess: %d\n',rightToGuess); 
            end

        else 
          right2=5-right2;
          fprintf('Game over.You finished the game in your %g. right to guess on level %d.',right2,level);
           break;
        end
    end

    while level==3
        if rightToGuess>0  
            guess=input('Please enter your guess: '); 
             if guess == -1
             rightToGuess = 0;
             right2=right2-1;
     
             elseif (guess<1)||(guess>20) %Indicates that the predicted number is not within the given range
             fprintf('Please enter a value within the range!\n'); 
             rightToGuess=rightToGuess-1; 
             right2=right2-1;
             fprintf('Your remaining guess: %d\n',rightToGuess); 
               break;
              
             elseif randomInteger3==guess %The predicted number is equal to the selected number
             rightToGuess=rightToGuess-1;
             rightToGuess=5-rightToGuess; %Shows how many guesses the user used
             fprintf('Congratulations.You finished the game on the third level and your %d th guess.\n',rightToGuess); %Indicates that you have successfully completed the game
             rightToGuess=0;
             break;

             else 
              fprintf('Your guess is not correct.\n'); 
              rightToGuess=rightToGuess-1; 
              right2=right2-1;
              fprintf('Your remaining guess: %d\n',rightToGuess); 

             end
         else 
            right2=6-right2;
            fprintf('Game over.You finished the game in your %g. right to guess on level %d.',right2,level);
                 break;
        end
    end