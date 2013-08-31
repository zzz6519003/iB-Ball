//
//  iBSkillDataSource.m
//  iB-Ball
//
//  Created by apple on 13-3-17.
//  Copyright (c) 2013年 Snowmanzzz. All rights reserved.
//

#import "iBSkillDataModel.h"
#import "iBSkill.h"

@implementation iBSkillDataModel



- (id)init
{
    self = [super init];
    if (self) {
        iBSkill *a1 = [[iBSkill alloc] initWithName:@"Fire Tornado" andTag:iBSkillAttack];
        iBSkill *a2 = [[iBSkill alloc] initWithName:@"Ice Ground" andTag:iBSkillDefend];
        _skillArray = [@[] mutableCopy];
        _attackSkills = [@[] mutableCopy];
        _defendingSkills = [@[] mutableCopy];
        _otherSkills = [@[] mutableCopy];

//        _skillArray = [NSMutableArray arrayWithObjects:a1, a2, nil];
        [self addSkill:a1];
        [self addSkill:a2];
    }
    return self;
}

- (int)getSkillCount {
    return [self.skillArray count];
}

- (void)addSkill:(iBSkill *)skill {
    [self.skillArray addObject:skill];
    switch (skill.skillCategory) {
        case iBSkillAttack:
            [self.attackSkills addObject:skill];
            break;
            
        case iBSkillDefend:
            [self.defendingSkills addObject:skill];
            break;
        case iBSkillOthers:
            [self.otherSkills addObject:skill];
            break;
        default:
            NSLog(@"unrecognized skill category");
    }
    
}

@end
