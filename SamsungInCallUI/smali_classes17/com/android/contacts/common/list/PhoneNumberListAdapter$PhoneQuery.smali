.class public Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;
.super Ljava/lang/Object;
.source "PhoneNumberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/PhoneNumberListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneQuery"
.end annotation


# static fields
.field public static final ANALYTICS_ACTION:Ljava/lang/String; = "analytics_action"

.field public static final ANALYTICS_CATEGORY:Ljava/lang/String; = "analytics_category"

.field public static final ANALYTICS_VALUE:Ljava/lang/String; = "analytics_value"

.field public static final CARRIER_PRESENCE:I = 0x9

.field public static final CONTACT_ID:I = 0x4

.field public static final DISPLAY_NAME:I = 0x7

.field public static final LOOKUP_KEY:I = 0x5

.field public static final PHONE_ID:I = 0x0

.field public static final PHONE_LABEL:I = 0x2

.field public static final PHONE_NUMBER:I = 0x3

.field public static final PHONE_TYPE:I = 0x1

.field public static final PHOTO_ID:I = 0x6

.field public static final PHOTO_URI:I = 0x8

.field public static final PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field public static final PROJECTION_ALTERNATIVE_INTERNAL:[Ljava/lang/String;

.field public static final PROJECTION_PRIMARY:[Ljava/lang/String;

.field public static final PROJECTION_PRIMARY_INTERNAL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "data2"

    aput-object v2, v1, v5

    const-string v2, "data3"

    aput-object v2, v1, v6

    const-string v2, "data1"

    aput-object v2, v1, v7

    const-string v2, "contact_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "lookup"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "photo_id"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "display_name"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "photo_thumb_uri"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY_INTERNAL:[Ljava/lang/String;

    sget-object v1, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY_INTERNAL:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "carrier_presence"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "data2"

    aput-object v2, v1, v5

    const-string v2, "data3"

    aput-object v2, v1, v6

    const-string v2, "data1"

    aput-object v2, v1, v7

    const-string v2, "contact_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "lookup"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "photo_id"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "display_name_alt"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "photo_thumb_uri"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE_INTERNAL:[Ljava/lang/String;

    sget-object v1, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE_INTERNAL:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "carrier_presence"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
