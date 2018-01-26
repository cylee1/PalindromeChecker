public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String x = noSpaces(word);
  String y = noCapitals(x);
  String z = numLetters(y);
  if(z.equals(reverse(z)))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i >= 0; i--)
      sNew = sNew + str.substring(i, i+1);
    return sNew;
}
public String noSpaces(String sWordSpace){
  String e = new String();
  for(int i = 0; i < sWordSpace.length(); i++)
    if(!sWordSpace.substring(i,i+1).equals(" "))
      e = e + sWordSpace.substring(i,i+1);
      return e;
} 
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String numLetters(String sString){
  String r = new String();
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      r = r + sString.substring(i,i+1);
    return r;
}
