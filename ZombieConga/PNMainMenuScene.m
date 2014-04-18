//
//  PNMainMenuScene.m
//  ZombieConga
//
//  Created by Armando on 18/04/14.
//  Copyright (c) 2014 Armando. All rights reserved.
//

#import "PNMainMenuScene.h"
#import "PNMyScene.h"

@implementation PNMainMenuScene

-(id) initWithSize:(CGSize)size{
    if(self = [super initWithSize:size]){
        SKSpriteNode *bg;
        
        bg = [SKSpriteNode spriteNodeWithImageNamed:@"MainMenu.png"];
        bg.position = CGPointMake(self.size.width / 2, self.size.height / 2);
        [self addChild:bg];
        
        SKAction *wait = [SKAction waitForDuration:3.0];
        SKAction *block = [SKAction runBlock:^{
            PNMainMenuScene *myScene = [[PNMainMenuScene alloc] initWithSize:self.size];
            //SKTransition *reveal = [SKTransition flipHorizontalWithDuration:0.5];
            
            [self.view presentScene:myScene];
            // transition:reveal
        }];
        [self runAction:[SKAction sequence:@[wait, block]]];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    SKScene *scene = [PNMyScene sceneWithSize:self.size];
    [self.view presentScene:scene transition:[SKTransition doorsOpenHorizontalWithDuration:0.5]];
}

@end
