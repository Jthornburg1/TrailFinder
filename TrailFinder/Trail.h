//
//  Trail.h
//  TrailFinder
//
//  Created by jonathan thornburg on 7/14/15.
//  Copyright (c) 2015 jonathan thornburg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Trail : NSObject

@property (nonatomic, assign) NSNumber *latitude;
@property (nonatomic, assign) NSNumber *longitude;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) NSString *state;
@property (strong, nonatomic) NSString *country;
@property (strong, nonatomic) NSString *described;
@property (strong, nonatomic) NSString *directions;
- (instancetype)initWithDictionary:(NSDictionary *)dict;


@end
