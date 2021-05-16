#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int count = 0;
    
    for (int i = 0; i < array.count; i++) {

        for (int d = i + 1; d < array.count ; d++) {

            if(ABS([array[i] intValue] - [array[d] intValue]) == [number intValue]){
                count += 1;
            }

        }

    }
    return count;
}

@end
