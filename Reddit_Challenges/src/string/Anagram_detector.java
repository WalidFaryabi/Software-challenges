package string;

import java.util.*;

/*
You'll be given two words or sets of words separated by a
question mark. Your task is to replace the question mark with information about
the validity of the anagram. Example:
*/

public class Anagram_detector {


  public static String analyzeWord(String words){
      //char[] word_1 = "";
      //char[] word_2 = "";
      char[] word_1;
      char[] word_2;
      String[] words_compared;
      words_compared = words.split(" \\? ");
      word_1= words_compared[0].replace(" ","").toLowerCase().toCharArray();
      word_2 =words_compared[1].replace(" ","").toLowerCase().toCharArray();
      Arrays.sort(word_1);
      Arrays.sort(word_2);
      return words_compared[0] + ( (Arrays.equals(word_1,word_2)) ? " is an anagram of " : " is not an anagram of ") + words_compared[1];
    //  word_1 = new String( Arrays.sort( words_compared[0].replace(" ","").toLowerCase().toCharArray() ));
    //  word_2 = new String( Arrays.sort( words_compared[1].replace(" ","").toLowerCase().toCharArray() ));
      //word_2 = words_compared[1].replace(" ","").toLowerCase().toCharArray().sorted();


      /*
      if(word_1.length() != word_2.length()){
        return words_compared[0] + " is not an anagram of " + words_compared[1] ;
      }

      for(int i = 0; i < word_1.length();i++){
        char char1 = word_1.charAt(i);
        int counter1 = 0;
        int counter2 = 0;
        for(int k = 0; k < word_1.length();k++){
          if(word_1.charAt(k) == char1){
            counter1++;
          }
          if(word_2.charAt(k) == char1){
            counter2++;
          }
        }
        if(counter1 != counter2){
          System.out.println(char1);
          return words_compared[0] + "is not an anagram of " +words_compared[1] ;

        };
      }
      return (words_compared[0] + " is an anagram of " + words_compared[1] );
      //count up characters excluding space
      //for(int c = 0; word_1.length();c++){

      //}*/


  }

  public static void main(String[] args){
        System.out.println(analyzeWord("Clint Eastwood ? Old West Action"));
        System.out.println(analyzeWord("wisdom ? mid sow"));
        System.out.println(analyzeWord("Seth Rogan ? Gathers No"));
        System.out.println(analyzeWord("Reddit ? Eat Dirt"));
  }
}
