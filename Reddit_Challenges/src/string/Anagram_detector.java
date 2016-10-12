package string;

/*
You'll be given two words or sets of words separated by a
question mark. Your task is to replace the question mark with information about
the validity of the anagram. Example:
*/

public class Anagram_detector {


  public static String analyzeWord(String words){
      String word_1 = "";
      String word_2 = "";

      for(int c = 0; c < words.length();c++){
        if(words.charAt(c) == '?'){
            word_1 = words.substring(0,c-1);
            word_2 = words.substring(c+2);
            return ("Word 1 is: " + word_1 + " and word 2 is:" + word_2);
        }
      }
      //count up characters excluding space
      for(int c = 0; word_1.length();c++){

      }


      return "Invalid format";
  }

  public static void main(String[] args){
        System.out.println(analyzeWord("Clint Eastwood ? in the public eye"));
  }
}
