.class public final enum Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

.field public static final enum HIGH:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

.field public static final enum NORMAL:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;


# instance fields
.field private priority:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    const-string v1, "HIGH"

    const-string v2, "high"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->HIGH:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    const-string v1, "NORMAL"

    const-string v2, "normal"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->NORMAL:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->HIGH:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->NORMAL:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->priority:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    return-object v0
.end method


# virtual methods
.method public getGcmType()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;
    .locals 0

    return-object p0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->priority:Ljava/lang/String;

    return-object v0
.end method
