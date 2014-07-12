import js.JQuery;

class Application
{
    public static function main(): Void
    {
        var usagi = Human.getInstance("うさぎ");
        var tsuda = Human.getInstance("津田ネキ");
        var isTsudaneki: Bool = false;
        new JQuery("#test").html(usagi.askOrder());

        new JQuery("#toggle").click(function(){
            if(isTsudaneki)
                new JQuery("#test").html(usagi.askOrder());
            else
                new JQuery("#test").html(tsuda.askOrder());

            isTsudaneki = !isTsudaneki;
        });
    }
}