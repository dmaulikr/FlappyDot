//
//  ViewController.m
//  FlappyCircle
//
//  Created by Pablo on 16/02/14.
//  Copyright (c) 2014 Pablo. All rights reserved.
//

#import "GameOverController.h"
#import "GameOver.h"
@import iAd;

@implementation GameOverController

-(void)viewDidLoad {
  [super viewDidLoad];
  
  NSNotificationCenter *notifier = [NSNotificationCenter defaultCenter];
  [notifier addObserver:self selector:@selector(segueToGameplay) name:@"FCRetry" object:nil];
  
  // Configure the view.
  SKView * skView = (SKView *)self.view;
  skView.showsFPS = NO;
  skView.showsNodeCount = NO;
  
  // Create and configure the scene.
  SKScene* scene = [[GameOver alloc] initWithSize:skView.bounds.size score:self.score];
  scene.scaleMode = SKSceneScaleModeAspectFill;
  
  // Present the scene.
  [skView presentScene:scene];
}


- (BOOL)prefersStatusBarHidden {
  return YES;
}

- (void) segueToGameplay {
  [self.navigationController popToRootViewControllerAnimated:YES];
}


@end
