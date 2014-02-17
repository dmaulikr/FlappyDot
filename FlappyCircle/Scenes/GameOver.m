//
//  GameOver.m
//  FlappyCircle
//
//  Created by Pablo on 16/02/14.
//  Copyright (c) 2014 Pablo. All rights reserved.
//

#import "GameOver.h"

@implementation GameOver {
  int _score;
  SKLabelNode *_retryLabel;
  SKLabelNode *_menuLabel;
}

- (id)initWithSize:(CGSize)size score:(int) score{
    if (self = [super initWithSize:size]) {
      _score = score;
      self.backgroundColor = [SKColor whiteColor];
      [self setupLabels];
      
    }
    return self;
}

- (void) setupLabels {
  SKLabelNode *_infoLabel = [SKLabelNode labelNodeWithFontNamed:@"Minecraftia"];
  _infoLabel.text = @"Game Over";
  _infoLabel.fontColor = [SKColor blackColor];
  _infoLabel.fontSize = 30;
  _infoLabel.position = CGPointMake(CGRectGetMidX(self.frame), self.size.height - 100);
  [self addChild:_infoLabel];
  
  SKLabelNode *_scoreLabel = [SKLabelNode labelNodeWithFontNamed:@"Minecraftia"];
  _scoreLabel.text = [NSString stringWithFormat:@"Score: %i", _score];
  _scoreLabel.fontColor = [SKColor blackColor];
  _scoreLabel.fontSize = 18;
  _scoreLabel.position = CGPointMake(CGRectGetMidX(self.frame), self.size.height - 160);
  [self addChild:_scoreLabel];
  
  SKLabelNode *_recordLabel = [SKLabelNode labelNodeWithFontNamed:@"Minecraftia"];
  _recordLabel.text = [NSString stringWithFormat:@"Best: %i", _score];
  _recordLabel.fontColor = [SKColor redColor];
  _recordLabel.fontSize = 18;
  _recordLabel.position = CGPointMake(CGRectGetMidX(self.frame), self.size.height - 200);
  [self addChild:_recordLabel];
  
  _retryLabel = [SKLabelNode labelNodeWithFontNamed:@"Minecraftia"];
  _retryLabel.name = @"retryButton";
  _retryLabel.text = @"Retry?";
  _retryLabel.fontColor = [SKColor redColor];
  _retryLabel.fontSize = 20;
  _retryLabel.position = CGPointMake(CGRectGetMidX(self.frame), 90);
  [self addChild:_retryLabel];
  
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
  UITouch *touch =[touches anyObject];
  CGPoint location = [touch locationInNode:self];
  SKNode *node = [self nodeAtPoint:location];
  
  if([node.name isEqualToString:@"retryButton"]) {
    NSLog(@"retraja");
  } else if([node.name isEqualToString:@"menuButton"]) {
    NSLog(@"mena");
  }
}


@end
