#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int count = 0;
    
    for (int i = 0; i < array.count - 1; i++) {
        
        for (int d = 0; d < array.count - 1 ; d++) {
            
            if(([array[i + 1] intValue] - [array[d] intValue]) == [number intValue]){
                count += 1;
                NSLog(@"%d", count);
            }
            
        }
        
    }
    NSLog(@"%d", count);

    return count;
}

@end
