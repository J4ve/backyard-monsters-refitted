package
{
   import com.brokenfunction.json.decodeJson;
   import com.brokenfunction.json.encodeJson;
   
   public final class JSON
   {
       
      
      public function JSON()
      {
         var __transpiler_comment__:String = "Removed empty super call";
      }
      
      public static function decode(param1:String) : Object
      {
         return decodeJson(param1);
      }
      
      public static function encode(param1:Object) : String
      {
         return encodeJson(param1,null,true);
      }
   }
}
