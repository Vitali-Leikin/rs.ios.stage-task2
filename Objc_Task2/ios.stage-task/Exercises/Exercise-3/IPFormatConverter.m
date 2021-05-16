#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    int one = 0;
    int two = 0;
    int three = 0;
    int four = 0;
  

    for (NSInteger i = 0; i < numbersArray.count; i++) {
        if ([numbersArray[i] intValue] > 255){
            return  @"The numbers in the input array can be in the range from 0 to 255.";
        }else if (([numbersArray[i] intValue] < 0)){
            return @"Negative numbers are not valid for input.";
        }
            }
        switch (numbersArray.count) {
            case 4:
                four = [(NSNumber*)[numbersArray objectAtIndex:3] intValue];
            case 3:
                three = [(NSNumber*)[numbersArray objectAtIndex:2] intValue];
            case 2:
                two = [(NSNumber*)[numbersArray objectAtIndex:1] intValue];
            case 1:
                one = [(NSNumber*)[numbersArray objectAtIndex:0] intValue];
                break;
            default:
                return @"";;
        }
    
    NSString* str = [NSString stringWithFormat:@"%d.%d.%d.%d", one, two, three, four];

       
        return str;
}

@end
