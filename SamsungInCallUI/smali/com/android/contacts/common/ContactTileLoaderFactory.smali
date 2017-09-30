.class public final Lcom/android/contacts/common/ContactTileLoaderFactory;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_uri"

    aput-object v1, v0, v6

    const-string v1, "lookup"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/ContactTileLoaderFactory;->b:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_uri"

    aput-object v1, v0, v6

    const-string v1, "lookup"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pinned"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/ContactTileLoaderFactory;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
