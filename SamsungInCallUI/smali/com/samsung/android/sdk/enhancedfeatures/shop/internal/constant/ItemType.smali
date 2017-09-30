.class public final enum Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

.field public static final enum Sticker:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

.field public static final enum Unknown:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

.field public static final enum Video:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    const-string v1, "Sticker"

    invoke-direct {v0, v1, v5, v3}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->Sticker:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    const-string v1, "Video"

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->Video:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    const-string v1, "Unknown"

    const/16 v2, 0x63

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->Unknown:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->Sticker:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->Video:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->Unknown:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

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

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->mValue:I

    return v0
.end method
