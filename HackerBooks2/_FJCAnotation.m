// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCAnotation.m instead.

#import "_FJCAnotation.h"

const struct FJCAnotationAttributes FJCAnotationAttributes = {
	.address = @"address",
	.creationDate = @"creationDate",
	.latitude = @"latitude",
	.longitude = @"longitude",
	.modificationDate = @"modificationDate",
	.text = @"text",
};

const struct FJCAnotationRelationships FJCAnotationRelationships = {
	.anotationPhoto = @"anotationPhoto",
	.book = @"book",
};

@implementation FJCAnotationID
@end

@implementation _FJCAnotation

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Anotation" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Anotation";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Anotation" inManagedObjectContext:moc_];
}

- (FJCAnotationID*)objectID {
	return (FJCAnotationID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"latitudeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"latitude"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"longitudeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"longitude"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic address;

@dynamic creationDate;

@dynamic latitude;

- (double)latitudeValue {
	NSNumber *result = [self latitude];
	return [result doubleValue];
}

- (void)setLatitudeValue:(double)value_ {
	[self setLatitude:@(value_)];
}

- (double)primitiveLatitudeValue {
	NSNumber *result = [self primitiveLatitude];
	return [result doubleValue];
}

- (void)setPrimitiveLatitudeValue:(double)value_ {
	[self setPrimitiveLatitude:@(value_)];
}

@dynamic longitude;

- (double)longitudeValue {
	NSNumber *result = [self longitude];
	return [result doubleValue];
}

- (void)setLongitudeValue:(double)value_ {
	[self setLongitude:@(value_)];
}

- (double)primitiveLongitudeValue {
	NSNumber *result = [self primitiveLongitude];
	return [result doubleValue];
}

- (void)setPrimitiveLongitudeValue:(double)value_ {
	[self setPrimitiveLongitude:@(value_)];
}

@dynamic modificationDate;

@dynamic text;

@dynamic anotationPhoto;

@dynamic book;

@end

