#import <Foundation/Foundation.h>


@interface Shape : NSObject

@property (nonatomic) double area;
@property (nonatomic) double perimeter;

- (double)calculateArea;
- (double)calculatePerimeter;

@end

@implementation Shape

- (double)calculateArea {
    
    [self doesNotRecognizeSelector:_cmd];
    return 0;
}

- (double)calculatePerimeter {
    
    [self doesNotRecognizeSelector:_cmd];
    return 0;
}

@end


@interface Rectangle : Shape

@property (nonatomic) double width;
@property (nonatomic) double height;

@end

@implementation Rectangle

- (double)calculateArea {
    self.area = self.width * self.height;
    return self.area;
}

- (double)calculatePerimeter {
    self.perimeter = 2 * (self.width + self.height);
    return self.perimeter;
}

@end


@interface Circle : Shape

@property (nonatomic) double radius;

@end

@implementation Circle

- (double)calculateArea {
    self.area = M_PI * pow(self.radius, 2);
    return self.area;
}

- (double)calculatePerimeter {
    self.perimeter = 2 * M_PI * self.radius;
    return self.perimeter;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *rectangle = [[Rectangle alloc] init];
        rectangle.width = 10;
        rectangle.height = 5;
        [rectangle calculateArea];
        [rectangle calculatePerimeter];
        NSLog(@"Rectangle area: %f, perimeter: %f", rectangle.area, rectangle.perimeter);
        
        Circle *circle = [[Circle alloc] init];
        circle.radius = 5;
        [circle calculateArea];
        [circle calculatePerimeter];
        NSLog(@"Circle area: %f, perimeter: %f", circle.area, circle.perimeter);
    }
    return 0;
}
