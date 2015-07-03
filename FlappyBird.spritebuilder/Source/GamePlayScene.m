#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacle = 0.0f;

}

-(void)update:(CCTime)delta
{
    // put update code here
    //will run every frame
    //delta = time since last time it was run
    timeSinceObstacle = timeSinceObstacle + delta;
    
    if(timeSinceObstacle > 2.0f){
        //add new obstacle
        [self addObstacle];
        
        //resets timer
        timeSinceObstacle = 0.0f;
    }
}

-(void)touchBegan:(CCTouch*)touch withEvent:(CCTouchEvent*)event{
    //will get called everytime player touches screen
    [character flap];
    
}

@end
