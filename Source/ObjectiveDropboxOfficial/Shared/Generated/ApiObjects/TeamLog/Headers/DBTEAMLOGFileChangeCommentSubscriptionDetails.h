///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMLOGFileChangeCommentSubscriptionDetails;
@class DBTEAMLOGFileCommentNotificationPolicy;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - API Object

///
/// The `FileChangeCommentSubscriptionDetails` struct.
///
/// Subscribed to or unsubscribed from comment notifications for file.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMLOGFileChangeCommentSubscriptionDetails : NSObject <DBSerializable, NSCopying>

#pragma mark - Instance fields

/// Target asset position in the Assets list.
@property (nonatomic, readonly) NSNumber *targetAssetIndex;

/// New file comment subscription.
@property (nonatomic, readonly) DBTEAMLOGFileCommentNotificationPolicy *dNewValue;

/// Previous file comment subscription. Might be missing due to historical data
/// gap.
@property (nonatomic, readonly, nullable) DBTEAMLOGFileCommentNotificationPolicy *previousValue;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param targetAssetIndex Target asset position in the Assets list.
/// @param dNewValue New file comment subscription.
/// @param previousValue Previous file comment subscription. Might be missing
/// due to historical data gap.
///
/// @return An initialized instance.
///
- (instancetype)initWithTargetAssetIndex:(NSNumber *)targetAssetIndex
                               dNewValue:(DBTEAMLOGFileCommentNotificationPolicy *)dNewValue
                           previousValue:(nullable DBTEAMLOGFileCommentNotificationPolicy *)previousValue;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
/// @param targetAssetIndex Target asset position in the Assets list.
/// @param dNewValue New file comment subscription.
///
/// @return An initialized instance.
///
- (instancetype)initWithTargetAssetIndex:(NSNumber *)targetAssetIndex
                               dNewValue:(DBTEAMLOGFileCommentNotificationPolicy *)dNewValue;

- (instancetype)init NS_UNAVAILABLE;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `FileChangeCommentSubscriptionDetails`
/// struct.
///
@interface DBTEAMLOGFileChangeCommentSubscriptionDetailsSerializer : NSObject

///
/// Serializes `DBTEAMLOGFileChangeCommentSubscriptionDetails` instances.
///
/// @param instance An instance of the
/// `DBTEAMLOGFileChangeCommentSubscriptionDetails` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMLOGFileChangeCommentSubscriptionDetails` API object.
///
+ (nullable NSDictionary *)serialize:(DBTEAMLOGFileChangeCommentSubscriptionDetails *)instance;

///
/// Deserializes `DBTEAMLOGFileChangeCommentSubscriptionDetails` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMLOGFileChangeCommentSubscriptionDetails` API object.
///
/// @return An instantiation of the
/// `DBTEAMLOGFileChangeCommentSubscriptionDetails` object.
///
+ (DBTEAMLOGFileChangeCommentSubscriptionDetails *)deserialize:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
