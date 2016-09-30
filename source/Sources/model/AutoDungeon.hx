package model;

// Model class representing one instance of our game universe.
// Separated from the view which is a best practice.
class AutoDungeon
{
    public var lastMessage(default, null):String;
    private var accumulator:Float;

    // TODO: delete
    private static var x:Int = 0;

    public function new()
    {
    }

    public function update(elapsedSeconds:Float):Void
    {
        this.accumulator += elapsedSeconds;
        if (this.accumulator >= 1)
        {
            var seconds = Math.floor(this.accumulator);
            this.advanceTimeBy(seconds);
            this.accumulator -= seconds;

            lastMessage = 'Update ${x}!';
        }
    }

    private function advanceTimeBy(seconds:Int):Void
    {
        x += seconds;
    }
}