//
//  PCComment.m
//  Pica
//
//  Created by fancy on 2020/11/11.
//  Copyright © 2020 fancy. All rights reserved.
//

#import "PCComment.h"

@implementation PCComment

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"commentId" : @"_id",
             @"user" : @"_user"};
}
 
@end


@implementation PCComicsComment

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"page" : @"comments.page",
             @"pages" : @"comments.pages",
             @"total" : @"comments.total",
             @"limit" : @"comments.limit",
             @"docs" : @"comments.docs"};
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"topComments" : @"PCComment",
             @"docs" : @"PCComment"};
}

@end
