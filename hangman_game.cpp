#include<iostream>
#include<string>
#include<stdlib.h>
#include<time.h>

using namespace std;
int attempt=5;

class Hang_man{
 public : int t;
          string key;
          char sel,*p;
 public :
          Hang_man();
          void display();
          void hangmanpole();
          void decide(char a1);
};
  Hang_man::Hang_man()
  {
      srand(time(0));
      string words[23]={"ice","cow","cat","mouse","home","aged","aisle","owl","metaphor","brick","action","actor","adapt","drowsy","famous","compare","crime","pirate","bridge","blonde","pictorial","quantum","temporal"};
      key= words[rand()%23];
      t=key.length();

  }

  void Hang_man::decide(char a11){
      int pos=-1;
    int i=0;
    cout<<"\n";

       //  cout<<key<<"\n";
   try{
     while(i<t){
      if(key[i]==a11){
        pos=i;
         throw(pos);
        break;
       }
      i++;
}
}
    catch(int pos){
      if(pos>-1){
         cout<<"congrats "<<a11<<" is present \n";
          *(p+pos)=a11;
          cout<<"\n the word till now is "<<p<<"\n";
          cout<<"\n";
 //cout<<"\t\t\t\t\t  _\t\n\t\t\t\t\t |    |\n\t\t\t\t\t |    O\n\t\t\t\t\t |    |\n\t\t\t\t\t |   /|\\\n\t\t\t\t\t |    |\n\t\t\t\t\t |   / \\\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t|___";
 cout<<"\n\n";
         }
    }
   if(pos==-1){
     cout<<"\n not present try another letter \n";
     cout<<"\n the word till now is "<<p<<"\n";
     attempt--;
     if(attempt==4)
     {
           cout<<"\t\t\t\t\t  _\t\n\t\t\t\t\t |    |\n\t\t\t\t\t |    O\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t|___";
     }
     else if(attempt==3)
     {
         cout<<"\t\t\t\t\t  _\t\n\t\t\t\t\t |    |\n\t\t\t\t\t |    O\n\t\t\t\t\t |    |\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t|___";
     }
     else if(attempt==2)
     {
         cout<<"\t\t\t\t\t  _\t\n\t\t\t\t\t |    |\n\t\t\t\t\t |    O\n\t\t\t\t\t |    |\n\t\t\t\t\t |   /|\\\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t|___";

     }
     else if(attempt==1)
     {
        cout<<"\t\t\t\t\t  _\t\n\t\t\t\t\t |    |\n\t\t\t\t\t |    O\n\t\t\t\t\t |    |\n\t\t\t\t\t |   /|\\\n\t\t\t\t\t |    |\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t|___";
     }
     else if(attempt==0)
     {
         cout<<"\t\t\t\t\t  _\t\n\t\t\t\t\t |    |\n\t\t\t\t\t |    O\n\t\t\t\t\t |    |\n\t\t\t\t\t |   /|\\\n\t\t\t\t\t |    |\n\t\t\t\t\t |   / \\\n\t\t\t\t\t |\n\t\t\t\t\t |\n\t\t\t\t\t|___";
         cout<<"\nGAME OVER :(\n";
         exit(0);
     }

   if(p==key){
     cout<<"\n Congrats you got the word niceee\n";//<<p;
   }
  }
 }

  void Hang_man::display(){



    for(int i=0;;i++){
    cout<<"\n enter a character ";
    cin>>sel;
       cout<<sel;
     decide(sel);
        //  cout<<i<<attempt<<"\n";
      cout<<"\n you have "<<attempt<<" attempts";
       if(p==key){
          cout<<"\n you scored "<<(attempt+1)*10<<" points";
         break;
      }
    }
}
class validate:public Hang_man
{
public:
    validate();

};
validate::validate()
{

    int i;
    p=new char[t];
    for(i=0;;i++)
     *(p+i)='-';

    cout<<"\n Heyy There!! Welcome to Hangman++ :) , Before We Start, What's your Name? ";
     string name;
      cin>>name;
     cout<<"\n Heyy "<<name<<" the rules are simple, you get 5 attempts to guess the word.";cout<<"\n\n You exhaust you chance, then you lose... \n\n Try to guess the word, good luck!!";
     cout<<"\n";
      cout<<"\n\n Here's your word "<<p<<"\n\n";


  if(key=="ice")
  {
      cout<<"Clue: Form of Water when at Low Temp.\n";
  }
  else if(key=="owl")
  {
      cout<<"Clue: Creature that can spin its head\n";
  }
  else if(key=="home")
  {
      cout<<"Clue: Place you back after work\n";
  }
  else if(key=="aged")
  {
      cout<<"Clue: Having lived long\n";
  }
  else if(key=="aisle")
  {
      cout<<"Clue:  A lateral division of a building, separated from the middle part.\n";
  }
  else if(key=="crime")
  {
      cout<<"Clue: Charged with or find guilty of an offence.\n";
  }
  else if(key=="metaphor")
  {
      cout<<"Clue: Figurative or symbolic\n";
  }
  else if(key=="brick")
  {
      cout<<"Clue: : Material used to make walls\n";
  }
  else if(key=="action")
  {
      cout<<"Clue: : The fact or process of doing something\n";
  }
  else if(key=="actor")
  {
      cout<<"Clue: : A person whose profession is acting on the stage\n";
  }
  //
  else if(key=="drowsy")
  {
      cout<<"Clue: Sleepy and / lethargic.\n";
  }
  else if(key=="adapt")
  {
      cout<<"Clue: Modify.\n";
  }
  else if(key=="famous")
  {
      cout<<"Clue: Known about by many people.\n";
  }
  else if(key=="compare")
  {
      cout<<"Clue: Estimate of the similarities or dissimilarities between two things or people.\n";
  }
  else if(key=="pirate")
  {
      cout<<"Clue: A person who attacks and robs ships at sea.\n";
  }
  else if(key=="bridge")
  {
      cout<<"Clue: Pathway that connects two places.\n";
  }
  else if(key=="blonde")
  {
      cout<<"Clue: A person with fair or pale yellow hair.\n";
  }
  else if(key=="pictorial")
  {
      cout<<"Clue: Consisting of or relating to pictures.\n";
  }
  else if(key=="quantum")
  {
      cout<<"Clue: A discrete quantity of energy.\n";
  }
  else if(key=="temporal")
  {
      cout<<"Clue: Nothing permanent or eternal.\n";
  }
  else if(key=="cow"||key=="cat"||key=="mouse")
  {
      cout<<"Clue: An animal.\n";
  }

}

int main()
{
 validate a;

//a.hangmanpole();
cout<<"\n";
 a.display();
return 0;
}