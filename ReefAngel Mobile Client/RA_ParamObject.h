//
//  RA_ParamObject.h
//  ReefAngel Mobile Client
//
//  Created by Dave on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface RA : NSObject {
    NSNumber *T1, *T2, *T3, *PH;
    NSNumber *R,*RON, *ROFF, *R0, *RON0, *ROFF0,*R1, *RON1, *ROFF1,*R2, *RON2, 
             *ROFF2,*R3, *RON3, *ROFF3,*R4, *RON4, *ROFF4,*R5, *RON5, *ROFF5,*R6, *RON6, *ROFF6,
             *R7, *RON7, *ROFF7,*ATOLOW, *ATOHIGH;
    NSString *formattedTemp1, *formattedTemp2, *formattedTemp3, *formattedpH;
    BOOL isRelay1Active, isRelay2Active, isRelay3Active, isRelay4Active, isRelay5Active, isRelay6Active, isRelay7Active, isRelay8Active,
         isRelay1ONMask, isRelay2ONMask, isRelay3ONMask, isRelay4ONMask, isRelay5ONMask, isRelay6ONMask, isRelay7ONMask, isRelay8ONMask,
         isRelay1OFFMask, isRelay2OFFMask, isRelay3OFFMask, isRelay4OFFMask, isRelay5OFFMask, isRelay6OFFMask, isRelay7OFFMask, isRelay8OFFMask;
}

@property (nonatomic, assign) NSNumber *T1;
@property (nonatomic, assign) NSNumber *T2;
@property (nonatomic, assign) NSNumber *T3;
@property (nonatomic, assign) NSNumber *PH;
@property (nonatomic, retain) NSNumber *R;
@property (nonatomic, retain) NSNumber *RON;
@property (nonatomic, retain) NSNumber *ROFF;
@property (nonatomic, retain) NSNumber *R0;
@property (nonatomic, retain) NSNumber *RON0;
@property (nonatomic, retain) NSNumber *ROFF0;
@property (nonatomic, retain) NSNumber *R1;
@property (nonatomic, retain) NSNumber *RON1;
@property (nonatomic, retain) NSNumber *ROFF1;
@property (nonatomic, retain) NSNumber *R2;
@property (nonatomic, retain) NSNumber *RON2;
@property (nonatomic, retain) NSNumber *ROFF2;
@property (nonatomic, retain) NSNumber *R3;
@property (nonatomic, retain) NSNumber *RON3;
@property (nonatomic, retain) NSNumber *ROFF3;
@property (nonatomic, retain) NSNumber *R4;
@property (nonatomic, retain) NSNumber *RON4;
@property (nonatomic, retain) NSNumber *ROFF4;
@property (nonatomic, retain) NSNumber *R5;
@property (nonatomic, retain) NSNumber *RON5;
@property (nonatomic, retain) NSNumber *ROFF5;
@property (nonatomic, retain) NSNumber *R6;
@property (nonatomic, retain) NSNumber *RON6;
@property (nonatomic, retain) NSNumber *ROFF6;
@property (nonatomic, retain) NSNumber *R7;
@property (nonatomic, retain) NSNumber *RON7;
@property (nonatomic, retain) NSNumber *ROFF7;
@property (nonatomic, retain) NSNumber *ATOLOW;
@property (nonatomic, retain) NSNumber *ATOHIGH;

@property (nonatomic, assign) NSString *formattedTemp1;
@property (nonatomic, assign) NSString *formattedTemp2;
@property (nonatomic, assign) NSString *formattedTemp3;
@property (nonatomic, assign) NSString *formattedpH;

@property (nonatomic, assign) BOOL isRelay1Active;
@property (nonatomic, assign) BOOL isRelay2Active;
@property (nonatomic, assign) BOOL isRelay3Active;
@property (nonatomic, assign) BOOL isRelay4Active;
@property (nonatomic, assign) BOOL isRelay5Active;
@property (nonatomic, assign) BOOL isRelay6Active;
@property (nonatomic, assign) BOOL isRelay7Active;
@property (nonatomic, assign) BOOL isRelay8Active;

@property (nonatomic, assign) BOOL isRelay1ONMask;
@property (nonatomic, assign) BOOL isRelay2ONMask;
@property (nonatomic, assign) BOOL isRelay3ONMask;
@property (nonatomic, assign) BOOL isRelay4ONMask;
@property (nonatomic, assign) BOOL isRelay5ONMask;
@property (nonatomic, assign) BOOL isRelay6ONMask;
@property (nonatomic, assign) BOOL isRelay7ONMask;
@property (nonatomic, assign) BOOL isRelay8ONMask;

@property (nonatomic, assign) BOOL isRelay1OFFMask;
@property (nonatomic, assign) BOOL isRelay2OFFMask;
@property (nonatomic, assign) BOOL isRelay3OFFMask;
@property (nonatomic, assign) BOOL isRelay4OFFMask;
@property (nonatomic, assign) BOOL isRelay5OFFMask;
@property (nonatomic, assign) BOOL isRelay6OFFMask;
@property (nonatomic, assign) BOOL isRelay7OFFMask;
@property (nonatomic, assign) BOOL isRelay8OFFMask;

@end

