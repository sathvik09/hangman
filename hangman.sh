##the design part

function wrong1 {
    echo "         ____________ " 
    echo "        O          |  "
    echo "                   |  "
    echo "                   |  "
    echo "                   |  "
    echo "                   |  "
    echo "                   |  " 
    echo "___________________|_ "
}
function wrong2 {
    echo "         ___________   "
    echo "         O         |   "
    echo "         |         |   "
    echo "                   |   "
    echo "                   |   "
    echo "                   |   "
    echo "                   |   "
    echo "___________________|__ "
}
function wrong3 {
    echo "         ___________    "
    echo "         O         |    "
    echo "         |\        |    "
    echo "                   |    "
    echo "                   |    "
    echo "                   |    " 
    echo "                   |    "
    echo " __________________|___ " 
}
function wrong4 {
    echo "         ___________    "
    echo "         O         |    "
    echo "        /|\        |    "
    echo "                   |    "
    echo "                   |    "
    echo "                   |    "
    echo "                   |    "
    echo " __________________|___ "
}
function wrong5 {
    echo "         _____________  "
    echo "         O          |   "
    echo "        /|\         |   "
    echo "        /           |   "
    echo "                    |   "
    echo "                    |   "
    echo "                    |   "
    echo "  __________________|__ "
}
function wrong6 {
    echo "        ____________   "
    echo "         O        |    "
    echo "        /|\       |    "
    echo "        / \       |    "
    echo "                  |    "
    echo "                  |    " 
    echo "   _______________|___ "
    echo                            
}
function wrong7 {
    echo
    echo "         __________   "
    echo "         |        |   "
    echo "         O        |   "
    echo "        /|\       |   "
    echo "        / \       |   "
    echo "    ______________|___"
    echo
}

function display {
    DATA[0]=" #     #    #    ##    #  #####  #     #    #    #     #  #############   ########"
    DATA[1]=" #     #   # #   # #   # #     # ##   ##   # #   ##    #              #   #      #"
    DATA[2]=" #     #  #   #  # #   # #       # # # #  #   #  # #   #              #   #      #"
    DATA[3]=" ####### #     # #  #  # #  #### #  #  # #     # #  #  #  #############   #      #" 
    DATA[4]=" #     # ####### #  #  # #     # #     # ####### #   # #  #               #      #"
    DATA[5]=" #     # #     # #   # # #     # #     # #     # #    ##  #               #      #"
    DATA[6]=" #     # #     # #    ## #     # #     # #     # #     #  #               #      #" 
    DATA[7]=" #     # #     # #     #  #####  #     # #     # #     #  ############# . ########"
    echo



    REAL_OFFSET_X=$(($((`tput cols` - 85)) / 2))
    REAL_OFFSET_Y=$(($((`tput lines` - 7)) / 2))

    draw_char() {
        V_COORD_X=$1
        V_COORD_Y=$2

        tput cup $((REAL_OFFSET_Y + V_COORD_Y)) $((REAL_OFFSET_X + V_COORD_X))

        printf %c ${DATA[V_COORD_Y]:V_COORD_X:1}
    }

    tput civis
    clear
    while :; do
        for ((c=1; c <= 9; c++)); do
            tput setaf $c
            for ((x=0; x<${#DATA[0]}; x++)); do
                for ((y=0; y<=7; y++)); do
                    draw_char $x $y
                done
            done
        done
        clear
        break
    done
}



## working
function random
{
 random=$((($1*(3424535+$1)/6)%22))
}

function word
{
 arr[0]="france"
 arr[1]="spain"
 arr[2]="italy"
 arr[3]="china"
 arr[4]="norway"
 arr[5]="germany"
 arr[6]="chile"
 arr[7]="brazil"
 arr[8]="denmark"
 arr[9]="portugal"
 arr[10]="egypt"
 arr[11]="iceland"
 arr[12]="portugal"
 arr[13]="mexico"
 arr[14]="poland"
 arr[15]="turkey"
 arr[16]="nepal"
 arr[17]="vietnam"
 arr[18]="kuwait"
 arr[19]="switzerland"
 arr[20]="singapore"
 arr[21]="maldives"
  key=${arr[$1]}

}

function make_spaces
{
    printf "your clue is: "
    
   case $key in
    france)
    printf "europian country \n"
    ;;

   spain)
    printf "land of the spanish \n"
    ;;

   italy)
    printf "sonia gandhi's home lol \n"
    ;;

   china)
    printf "land of the corona virus \n"
    ;;
    norway)
     printf "near canada \n"
     ;;
    germany)
     printf "BMW's home country \n"
     ;;
    chile)
      printf "part of south america \n"
     ;;
    brazil)
      printf "second largest corona cases reported here \n"
     ;;
    denmark)
       printf "Danish people are from here \n"
     ;;
    portugal)
      printf "Cristiano Ronaldo is from here \n"
     ;;
    egypt)
      printf "land of the ancient and barren deserts \n"
     ;;
    iceland)
      printf "next to greenland \n"
     ;;
    mexico)
      printf "constitutes most of the illegal immigrants in the US \n"  
     ;;
    poland)
      printf "polish people live here lol \n"
     ;;
    turkey)
      printf "common dinner for thanks giving \n"
     ;;
    nepal)
      printf "country that is the home of the tallest mountain in the world \n"
     ;;
    vietnam)
      printf "vietnamise people are from here \n"
     ;;
    kuwait)
      printf "part of the  UAE\n"
     ;;
    switzerland)
       printf "makes the best chocolate \n"
     ;;
    singapore)
      printf "A very clean asian country \n"
     ;;
   esac   

   # filln blnks
   fill="-"
   i=0
  while [ $i -lt $length ]
  do
   wrd[$i]=$fill
   i=`expr $i + 1`
  done
  i=0
  while [ $i -lt $length ]
  do
  printf ${wrd[$i]}
  i=`expr $i + 1`
  done
}


function decide
{
  printf "\n enter a letter \n"
  read letter
  string+=$letter
  t=$(expr index "$key" "$letter")
  ((t=t-1))
  if [ $t -gt -1 ]
  then
   wrd[$t]=$letter
   elif [ $n == 7 ] 
   then
    wrong1
    ((n=n-1))
   elif [ $n == 6 ] 
   then
    wrong2
    ((n=n-1))
   elif [ $n == 5 ] 
   then
    wrong3
    ((n=n-1))
   elif [ $n == 4 ] 
   then
    wrong4
    ((n=n-1))
   elif [ $n == 3 ] 
   then
    wrong5
    ((n=n-1))
   elif [ $n == 2 ] 
   then
    wrong6
    ((n=n-1))
   elif [ $n == 1 ] 
   then
    wrong7
    ((n=n-1))
   else
    ((n=n-1))
    echo sorry pal
  fi
  i=0
  while [ $i -lt $length ]
  do
  printf ${wrd[$i]}
  i=`expr $i + 1`
  done
  echo " "
}

function indexx
{
 i=1
 while [ $i -lt $length ]
 do
 ((i=i+1))
 done
}

## hangman 2.0 developer edition, since u code u probably knw the rules

display
echo "gimme ur lucky number, anything u want"
read var
random $var
clear
printf "Welcome to Hangman 2.0, the rules of the game is simple,Initially u have a country that you have to guess \n u get 7 attempts try to gess the word from the clue provided else you  gonna get hanged son, enjoy!! \n"
word $random
# for the ans
#echo $key

length=${#key}
make_spaces
n=7
checkme=1
i1=0
count=0
key1=$key
while [ $n -gt 0 ]
do
decide
len=${#string}
var=${string:$i1:1}
if [ -z "${key##*$var*}" ]
then
((count=count+1))
fi
if [ "$count" -eq "$length" ];then
  break;
fi
if [ -z "${string##*$key*}" ]
then
break;
fi
((i1=i1+1))
done
if [ $n -gt 0 ]
then
clear
echo "hey you found the word! congratssss"
fim -a true.jpeg
else
echo "Sorry out of attempts"
fim -a lost.jpeg
fi
