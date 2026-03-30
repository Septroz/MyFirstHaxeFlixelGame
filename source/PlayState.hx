package;

import flixel.FlxState;
import flixel.FlxSprite;
import flixel.FlxG;

class PlayState extends FlxState
{
    var player:FlxSprite;

    override public function create()
    {
        super.create();

        // Create a 16x16 white square
        player = new FlxSprite(100, 100);
        player.makeGraphic(16, 16, 0xFFFFFFFF);
        add(player);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        // Simple Movement logic
        if (FlxG.keys.pressed.LEFT) player.x -= 2;
        if (FlxG.keys.pressed.RIGHT) player.x += 2;
        if (FlxG.keys.pressed.UP) player.y -= 2;
        if (FlxG.keys.pressed.DOWN) player.y += 2;
    }
}
