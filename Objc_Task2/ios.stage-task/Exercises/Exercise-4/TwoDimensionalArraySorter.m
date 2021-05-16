#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if(array == nil || [array  isEqual: @[]] || ![array.firstObject isKindOfClass:NSArray.class]){
        return @[];
    }
  
    NSMutableArray *tempNumb = [[NSMutableArray alloc] init];
    NSMutableArray *tempStr = [[NSMutableArray alloc] init];
    NSMutableArray *allObjArray = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < array.count; i++) {
        for (id item in array[i]) {
            if([item isKindOfClass:NSNumber.class]){
                [tempNumb addObject: item ];
            }else if([item isKindOfClass:NSString.class]){
                [tempStr addObject:item];
            }else{
                return @[];
            }
        }
        
    }
    
    if (tempNumb.count > 0 && tempStr.count > 0) {
        return @[];
    }
    
    if (tempNumb.count == 0) {
        
        return [tempStr sortedArrayUsingSelector:@selector(compare:)];
    }else if(tempStr.count == 0){
        return [tempNumb sortedArrayUsingSelector:@selector(compare:)];
        
    }else{
       [tempNumb sortedArrayUsingSelector:@selector(compare:)];
        
        NSSortDescriptor* sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO selector:@selector(localizedCompare:)];
        
        NSArray* sortedArray = [tempStr sortedArrayUsingDescriptors:@[sortDescriptor]];
        
        [allObjArray addObjectsFromArray:tempNumb];
        [allObjArray addObjectsFromArray:sortedArray];
    }
    
    

    return allObjArray;
}

@end
