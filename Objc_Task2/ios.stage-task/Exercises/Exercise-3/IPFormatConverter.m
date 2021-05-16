#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSInteger counter = numbersArray.count;
   NSMutableString *tempStr = [[NSMutableString alloc] init];
    
        if ([numbersArray  isEqual: @[]] || numbersArray == nil) {
            return @"";
        }else if (4 > numbersArray.count){
            
            for (NSInteger i = 0; i < numbersArray.count ; i++) {
                
                [tempStr appendFormat:@"%@", numbersArray[i]];
            }
            while (counter < 4) {
                [tempStr appendString:@".0"];
                counter +=1;
                     }
                return tempStr;
        }else if(numbersArray.count > 4){
            for (NSInteger i = 0; i < 4; i++) {
                [ tempStr appendFormat:@"%@.",numbersArray[i] ];
            }
            return [tempStr substringToIndex:[tempStr length] - 1];
        }
    
    
    
        
    for (NSInteger i = 0; i < numbersArray.count; i++) {
        if ([numbersArray[i] intValue] > 255){
            return  @"The numbers in the input array can be in the range from 0 to 255.";
        }else if (([numbersArray[i] intValue] < 0)){
            return @"Negative numbers are not valid for input.";
        }else{
            [ tempStr appendFormat:@"%@.",numbersArray[i] ];
            
            
        }
        
    }
        
        

    return [tempStr substringToIndex:[tempStr length] - 1]; ;
}

@end
