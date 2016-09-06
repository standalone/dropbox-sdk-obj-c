///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMCOMMONGroupType.h"

#pragma mark - API Object

@implementation DBTEAMCOMMONGroupType

#pragma mark - Constructors

- (instancetype)initWithTeam {
  self = [super init];
  if (self) {
    _tag = DBTEAMCOMMONGroupTypeTeam;
  }
  return self;
}

- (instancetype)initWithUserManaged {
  self = [super init];
  if (self) {
    _tag = DBTEAMCOMMONGroupTypeUserManaged;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBTEAMCOMMONGroupTypeOther;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isTeam {
  return _tag == DBTEAMCOMMONGroupTypeTeam;
}

- (BOOL)isUserManaged {
  return _tag == DBTEAMCOMMONGroupTypeUserManaged;
}

- (BOOL)isOther {
  return _tag == DBTEAMCOMMONGroupTypeOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMCOMMONGroupTypeTeam:
    return @"DBTEAMCOMMONGroupTypeTeam";
  case DBTEAMCOMMONGroupTypeUserManaged:
    return @"DBTEAMCOMMONGroupTypeUserManaged";
  case DBTEAMCOMMONGroupTypeOther:
    return @"DBTEAMCOMMONGroupTypeOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMCOMMONGroupTypeSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMCOMMONGroupTypeSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMCOMMONGroupTypeSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMCOMMONGroupTypeSerializer

+ (NSDictionary *)serialize:(DBTEAMCOMMONGroupType *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isTeam]) {
    jsonDict[@".tag"] = @"team";
  } else if ([valueObj isUserManaged]) {
    jsonDict[@".tag"] = @"user_managed";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
  }

  return jsonDict;
}

+ (DBTEAMCOMMONGroupType *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"team"]) {
    return [[DBTEAMCOMMONGroupType alloc] initWithTeam];
  } else if ([tag isEqualToString:@"user_managed"]) {
    return [[DBTEAMCOMMONGroupType alloc] initWithUserManaged];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBTEAMCOMMONGroupType alloc] initWithOther];
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end