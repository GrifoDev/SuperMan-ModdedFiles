.class public Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ContactQuery"
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


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

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_status"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->a:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name_alt"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_status"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->b:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_status"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "last_time_contacted"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->c:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name_alt"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_status"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "last_time_contacted"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->d:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->b:[Ljava/lang/String;

    return-object v0
.end method
