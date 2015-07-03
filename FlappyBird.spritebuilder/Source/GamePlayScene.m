#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
}

-(void)update:(CCTime)delta
{
    // put update code here
}

-(void)touchBegan:(CCTouch*)touch withEvent:(CCTouchEvent*)event{
    //will get called everytime player touches screen
    [character flap];
    
}

@end
