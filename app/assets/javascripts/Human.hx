class Human
{
    public var id(default, null): Int;
    public var name(default, null): String;

    private static var numberOfInstances = 0;
    public static function getInstance(name: String): Human
    {
        return new Human(numberOfInstances++, name);
    }

    private function new(id: Int, name: String): Void
    {
        this.id = id;
        this.name = name;
    }

    public function askOrder(): String
    {
        return "ご注文は" + name + "ですか?";
    }
}