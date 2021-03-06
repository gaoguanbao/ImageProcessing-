
//https://github.com/penghero/PGG_OC_Image.git
#import "THScaleButton.h"

@implementation THScaleButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGRect rct = self.bounds;
    CGFloat radius = 0.7;
    rct.origin.x = 0.5 * (rct.size.width - radius * rct.size.width);
    rct.origin.y = 0.5 * (rct.size.height - radius * rct.size.height);
    rct.size.width = radius * rct.size.width;
    rct.size.height = radius * rct.size.height;
    
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextFillEllipseInRect(context, rct);
    
    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextSetLineWidth(context, 5);
    CGContextStrokeEllipseInRect(context, rct);
}

@end
