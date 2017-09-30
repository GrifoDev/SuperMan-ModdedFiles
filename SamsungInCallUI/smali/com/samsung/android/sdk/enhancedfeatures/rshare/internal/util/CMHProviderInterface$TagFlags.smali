.class public final enum Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TagFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

.field public static final enum CALENDAR_EVENT:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

.field public static final enum CATEGORY:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

.field public static final enum IMAGE_SCENE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

.field public static final enum IMAGE_SCREENER:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

.field public static final enum IMAGE_SUBSCENE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

.field public static final enum NAME_LOCATION:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

.field public static final enum PERSON:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

.field public static final enum POI_LOCATION:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

.field public static final enum STORY:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

.field public static final enum USER_TAG:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    const-string v1, "NAME_LOCATION"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->NAME_LOCATION:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    const-string v1, "PERSON"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->PERSON:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    const-string v1, "USER_TAG"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->USER_TAG:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    const-string v1, "CALENDAR_EVENT"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->CALENDAR_EVENT:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    const-string v1, "IMAGE_SCREENER"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->IMAGE_SCREENER:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    const-string v1, "IMAGE_SCENE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->IMAGE_SCENE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    const-string v1, "IMAGE_SUBSCENE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->IMAGE_SUBSCENE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    const-string v1, "POI_LOCATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->POI_LOCATION:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    const-string v1, "STORY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->STORY:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    const-string v1, "CATEGORY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->CATEGORY:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->NAME_LOCATION:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->PERSON:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->USER_TAG:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->CALENDAR_EVENT:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->IMAGE_SCREENER:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->IMAGE_SCENE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->IMAGE_SUBSCENE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->POI_LOCATION:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->STORY:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->CATEGORY:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;

    return-object v0
.end method
