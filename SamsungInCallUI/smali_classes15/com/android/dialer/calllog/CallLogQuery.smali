.class public final Lcom/android/dialer/calllog/CallLogQuery;
.super Ljava/lang/Object;
.source "CallLogQuery.java"


# static fields
.field public static final ACCOUNT_COMPONENT_NAME:I = 0x12

.field public static final ACCOUNT_ID:I = 0x13

.field public static final CACHED_FORMATTED_NUMBER:I = 0xf

.field public static final CACHED_LOOKUP_URI:I = 0xb

.field public static final CACHED_MATCHED_NUMBER:I = 0xc

.field public static final CACHED_NAME:I = 0x8

.field public static final CACHED_NORMALIZED_NUMBER:I = 0xd

.field public static final CACHED_NUMBER_LABEL:I = 0xa

.field public static final CACHED_NUMBER_TYPE:I = 0x9

.field public static final CACHED_PHOTO_ID:I = 0xe

.field public static CACHED_PHOTO_URI:I = 0x0

.field public static final CALL_TYPE:I = 0x4

.field public static final COUNTRY_ISO:I = 0x5

.field public static final DATA_USAGE:I = 0x15

.field public static final DATE:I = 0x2

.field public static final DURATION:I = 0x3

.field public static final FEATURES:I = 0x14

.field public static final GEOCODED_LOCATION:I = 0x7

.field public static final ID:I = 0x0

.field public static final IS_READ:I = 0x10

.field public static final NUMBER:I = 0x1

.field public static final NUMBER_PRESENTATION:I = 0x11

.field public static POST_DIAL_DIGITS:I = 0x0

.field public static final TRANSCRIPTION:I = 0x16

.field public static VIA_NUMBER:I = 0x0

.field public static final VOICEMAIL_URI:I = 0x6

.field public static final _PROJECTION:[Ljava/lang/String;

.field private static final _PROJECTION_INTERNAL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 33
    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "number"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "date"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "duration"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "countryiso"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "voicemail_uri"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "geocoded_location"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "name"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "numbertype"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "numberlabel"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "lookup_uri"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "matched_number"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "normalized_number"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "photo_id"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "formatted_number"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "is_read"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "presentation"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "subscription_component_name"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "subscription_id"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "features"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "data_usage"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "transcription"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION_INTERNAL:[Ljava/lang/String;

    .line 88
    sput v4, Lcom/android/dialer/calllog/CallLogQuery;->CACHED_PHOTO_URI:I

    .line 94
    sput v4, Lcom/android/dialer/calllog/CallLogQuery;->POST_DIAL_DIGITS:I

    .line 95
    sput v4, Lcom/android/dialer/calllog/CallLogQuery;->VIA_NUMBER:I

    .line 100
    sget-object v1, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION_INTERNAL:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 101
    .local v0, "projectionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/dialer/compat/DialerCompatUtils;->isCallsCachedPhotoUriCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const-string v1, "photo_uri"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/dialer/calllog/CallLogQuery;->CACHED_PHOTO_URI:I

    .line 105
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "post_dial_digits"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/dialer/calllog/CallLogQuery;->POST_DIAL_DIGITS:I

    .line 108
    const-string v1, "via_number"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/dialer/calllog/CallLogQuery;->VIA_NUMBER:I

    .line 111
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
