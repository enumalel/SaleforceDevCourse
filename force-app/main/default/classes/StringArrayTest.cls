public class StringArrayTest 
{
    public static List<String> generateStringArray(Integer N)
    {
        List<String> TestString= new List<String>();
        for (Integer i=0; i<N; i++)
        {
            TestString.add('Test '+i);
            system.debug(TestString[i]);
        }
        return TestString;
    }
}