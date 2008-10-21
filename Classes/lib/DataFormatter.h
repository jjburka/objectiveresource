//
//  DataFormatter.h
//  iphone-harvest
//
//  Created by James Burka on 10/21/08.
//  Copyright 2008 Burkaprojects. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DataFormatter : NSObject {

	NSMutableDictionary * dateFormatters;
	
}

+ (DataFormatter *)sharedManager;
-(void) setDataFormatter:(NSFormatter*)aFormatter forType:(NSString *)aType;
-(NSFormatter *)getDataFormatterForType:(NSString *)aType;

@end
