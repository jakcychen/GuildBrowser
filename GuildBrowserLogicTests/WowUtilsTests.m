//
//  WowUtilsTests.m
//  GuildBrowser
//
//  Created by administrator on 2016/8/8.
//  Copyright © 2016年 Charlie Fulton. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WoWUtils.h"

@interface WowUtilsTests : XCTestCase

@end

@implementation WowUtilsTests

- (void)setUp {
    [super setUp];
    NSLog(@"setUp");
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    NSLog(@"tearDown");
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

// 1
-(void)testCharacterClassNameLookup
{
    // 2
    XCTAssertEqualObjects(@"Warrior",
                         [WoWUtils classFromCharacterType:1],
                         @"ClassType should be Warrior");
    // 3
    XCTAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]],
                  @"Mage False");
    
    // 4
    XCTAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]],
                 @"Paladin True");
    // add the rest as an exercise
}

- (void)testRaceTypeLookup
{
    XCTAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], @"Human");
    XCTAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], @"Orc");
    XCTAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]], @"Elf");
    // add the rest as an exercise
}

- (void)testQualityLookup
{
    XCTAssertEqualObjects(@"Grey", [WoWUtils qualityFromQualityType:1], @"Grey");
    XCTAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]], @"Purple");
    // add the rest as an exercise
}


@end
