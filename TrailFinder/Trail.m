//
//  Trail.m
//  TrailFinder
//
//  Created by jonathan thornburg on 7/14/15.
//  Copyright (c) 2015 jonathan thornburg. All rights reserved.
//

#import "Trail.h"

@implementation Trail
//{"places":[{"city":"Burlington","state":"Vermont","country":"United States","name":"Ethan Allen/Burlington High School Woods","parent_id":null,"unique_id":3869,"directions":"many different ways to access, but the easiest to describe here would be to take the burlington bikeway from the downtown boatbasin north for until you past north beach...continue past for a spell and look for a entrance on the right.  it enters into a grass park area.  you'll see the singletrack lead into the woods.  ","lat":44.50119,"lon":-73.24197,"description":null,"date_created":null,"children":[],"activities":[{"name":"Ethan Allen/Burlington High School Woods","unique_id":"1-869","place_id":3869,"activity_type_id":5,"activity_type_name":"mountain biking","url":"http://www.singletracks.com/item.php?c=1&i=869","attribs":{"\"length\"":"\"5\"","\"nightride\"":"null"},"description":"cruise around in there and look for some pretty killer freeride stuff maintained by a local group of rippers (not me).  but there is plenty to ride in and in the surrounding woods areas near Burlington High School as well.    I ride there from my downtown burlington apt and amazed at what it has to offer so close to town.  Oh and did I mention killer lake views?  Check it out.","length":5.0,"activity_type":{"created_at":"2012-08-15T16:12:35Z","id":5,"name":"mountain biking","updated_at":"2012-08-15T16:12:35Z"},"thumbnail":"http://images.singletracks.com/2009/trails/08/869-1209067830.jpg","rank":null,"rating":2.67}]}]}
- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        self.latitude = dict[@"lat"];
        self.longitude = dict[@"lon"];
        self.name = dict[@"name"];
        self.city = dict[@"city"];
        self.state = dict[@"state"];
        self.country = dict[@"country"];
        self.described = dict[@"description"];
        self.directions = dict[@"directions"];
    }
    return self;
}
//@property (strong, nonatomic) NSNumber *latitude;
//@property (strong, nonatomic) NSNumber *longitude;
//@property (strong, nonatomic) NSString *name;
//@property (strong, nonatomic) NSString *city;
//@property (strong, nonatomic) NSString *state;
//@property (strong, nonatomic) NSString *country;

@end
