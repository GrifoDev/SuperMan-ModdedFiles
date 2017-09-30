.class public final enum Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

.field public static final enum COMPLETED:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

.field public static final enum NOT_START:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

.field public static final enum ON_PROGRESS:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    const-string v1, "NOT_START"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;->NOT_START:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    const-string v1, "ON_PROGRESS"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;->ON_PROGRESS:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;->COMPLETED:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    new-array v0, v5, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;->NOT_START:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;->ON_PROGRESS:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;->COMPLETED:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

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

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;->mState:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;->mState:I

    return v0
.end method
