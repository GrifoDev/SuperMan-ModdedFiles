.class public final enum Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChannelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum AGIF:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum COLLAGE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum DOMESTIC_TRIP:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum DUMMY:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum FLASHBACK:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum HAPPY_MOMENT:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum LIVE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum LOCATION:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum MANUAL:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum MOMENT:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum NAMED_PERSON:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum NO_MOMENT:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum PERSON:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum PERSON_GROUP:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum PERSON_ME:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum SHARE_FOR_LIVE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum SHARE_FOR_MANUAL:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum STORY:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum TRIP:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

.field public static final enum VIDEO_COLLAGE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;


# instance fields
.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "DUMMY"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->DUMMY:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "MANUAL"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->MANUAL:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "NO_MOMENT"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->NO_MOMENT:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "MOMENT"

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->MOMENT:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "STORY"

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->STORY:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "PERSON"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->PERSON:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "NAMED_PERSON"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->NAMED_PERSON:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "LOCATION"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->LOCATION:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "LIVE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->LIVE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "SHARE_FOR_LIVE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->SHARE_FOR_LIVE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "SHARE_FOR_MANUAL"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->SHARE_FOR_MANUAL:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "COLLAGE"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->COLLAGE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "AGIF"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->AGIF:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "VIDEO_COLLAGE"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->VIDEO_COLLAGE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "TRIP"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->TRIP:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "DOMESTIC_TRIP"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->DOMESTIC_TRIP:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "HAPPY_MOMENT"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->HAPPY_MOMENT:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "FLASHBACK"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->FLASHBACK:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "PERSON_GROUP"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->PERSON_GROUP:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const-string v1, "PERSON_ME"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->PERSON_ME:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->DUMMY:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->MANUAL:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->NO_MOMENT:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->MOMENT:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->STORY:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->PERSON:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->NAMED_PERSON:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->LOCATION:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->LIVE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->SHARE_FOR_LIVE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->SHARE_FOR_MANUAL:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->COLLAGE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->AGIF:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->VIDEO_COLLAGE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->TRIP:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->DOMESTIC_TRIP:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->HAPPY_MOMENT:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->FLASHBACK:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->PERSON_GROUP:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->PERSON_ME:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->mType:I

    return-void
.end method

.method public static getChannelType(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->values()[Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;->mType:I

    return v0
.end method
