//
//  SBBDateTimeConstraints.m
//
//  $Id$
//
// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SBBDateTimeConstraints.h instead.
//

#import "_SBBDateTimeConstraints.h"
#import "NSDate+SBBAdditions.h"

@interface _SBBDateTimeConstraints()

@end

@implementation _SBBDateTimeConstraints

- (id)init
{
	if((self = [super init]))
	{

	}

	return self;
}

#pragma mark Scalar values

- (BOOL)allowFutureValue
{
	return [self.allowFuture boolValue];
}

- (void)setAllowFutureValue:(BOOL)value_
{
	self.allowFuture = [NSNumber numberWithBool:value_];
}

#pragma mark Dictionary representation

- (id)initWithDictionaryRepresentation:(NSDictionary *)dictionary
{
	if((self = [super initWithDictionaryRepresentation:dictionary]))
	{

        self.allowFuture = [dictionary objectForKey:@"allowFuture"];

        self.earliestValue = [NSDate dateWithISO8601String:[dictionary objectForKey:@"earliestValue"]];

        self.latestValue = [NSDate dateWithISO8601String:[dictionary objectForKey:@"latestValue"]];

	}

	return self;
}

- (NSDictionary *)dictionaryRepresentation
{
	NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:[super dictionaryRepresentation]];

    [dict setObjectIfNotNil:self.allowFuture forKey:@"allowFuture"];

    [dict setObjectIfNotNil:[self.earliestValue ISO8601String] forKey:@"earliestValue"];

    [dict setObjectIfNotNil:[self.latestValue ISO8601String] forKey:@"latestValue"];

	return dict;
}

- (void)awakeFromDictionaryRepresentationInit
{
	if(self.sourceDictionaryRepresentation == nil)
		return; // awakeFromDictionaryRepresentationInit has been already executed on this object.

	[super awakeFromDictionaryRepresentationInit];
}

#pragma mark Direct access

@end
