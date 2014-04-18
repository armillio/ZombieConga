//
//  PNViewController.m
//  ZombieConga
//
//  Created by Armando on 03/04/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "PNViewController.h"
#import "PNMyScene.h"
#import "PNMainMenuScene.h"

@implementation PNViewController

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    if(!skView.scene){
        skView.showsFPS = YES;
        skView.showsNodeCount = YES;
        
        
        // Create and configure the scene.
//        SKScene *scene = [PNMyScene sceneWithSize:skView.bounds.size];
//        scene.scaleMode = SKSceneScaleModeAspectFill;
        
        SKScene *mainMenuScene = [[PNMainMenuScene alloc] initWithSize:skView.bounds.size];
        mainMenuScene.scaleMode = SKSceneScaleModeAspectFill;

        //SKTransition *reveal = [SKTransition flipHorizontalWithDuration:0.5];
        //[self.view presentScene:mainMenuScene transition:reveal];
        
        // Present the scene.
        [skView presentScene:mainMenuScene];
    }

}

-(BOOL) prefersStatusBarHidden{
    return YES;
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
