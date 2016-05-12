//
//  MyView.m
//  拖动View
//
//  Created by Gate on 16/1/1.
//  Copyright © 2016年 Gate. All rights reserved.
//

#import "MyView.h"

@implementation MyView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    
    CGPoint current = [touch locationInView:self];
    
    CGPoint previous = [touch previousLocationInView:self];
    
    CGPoint center = self.center;
    
    center.x += current.x - previous.x;
    center.y += current.y - previous.y;
    
    self.center = center;
}
@end
