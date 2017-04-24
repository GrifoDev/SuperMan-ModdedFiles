.class public final Lcom/android/dialer/calllog/PhoneQuery;
.super Ljava/lang/Object;
.source "PhoneQuery.java"


# static fields
.field private static final BACKWARD_COMPATIBLE_NON_SIP_PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field public static final DISPLAY_NAME_ALTERNATIVE_PROJECTION:[Ljava/lang/String;

.field public static final LABEL:I = 0x3

.field public static final LOOKUP_KEY:I = 0x7

.field public static final MATCHED_NUMBER:I = 0x4

.field public static final NAME:I = 0x1

.field public static final NAME_ALTERNATIVE:I = 0x0

.field public static final NORMALIZED_NUMBER:I = 0x5

.field public static final PERSON_ID:I = 0x0

.field private static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field public static final PHONE_TYPE:I = 0x2

.field public static final PHOTO_ID:I = 0x6

.field public static final PHOTO_URI:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/calllog/PhoneQuery;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/calllog/PhoneQuery;->BACKWARD_COMPATIBLE_NON_SIP_PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "display_name_alt"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/dialer/calllog/PhoneQuery;->DISPLAY_NAME_ALTERNATIVE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneLookupProjection(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/dialer/calllog/PhoneQuery;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "sip"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/dialer/calllog/PhoneQuery;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/dialer/calllog/PhoneQuery;->BACKWARD_COMPATIBLE_NON_SIP_PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method
