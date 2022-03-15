String vowels = "aeiou";
public void setup()
{
  String [] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++)
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
}
public int findFirstVowel(String sWord)
{
  if(sWord.length() > 0)
  {
    for(int i = 0; i < sWord.length(); i ++)
    {
      for(int k = 0; k < vowels.length(); k ++)
      {
        if(sWord.charAt(i) == vowels.charAt(k))
        {
          return i;
        }
      }
    }
  }
  return -1;
}
public String pigLatin(String sWord)
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(sWord.length() > 0)
  {
    if(findFirstVowel(sWord.substring(0, 1)) != -1)
    {
      return sWord + "way";
    }
    else if(sWord.substring(0, 2).equals("qu"))
    {
      return sWord.substring(2, sWord.length()) + "quay";
    }
    return sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
  }
  else
  {
    return "ERROR!";
  }
}
