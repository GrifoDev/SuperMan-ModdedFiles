.class public final Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;
    }
.end annotation


# instance fields
.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContentsToken:Ljava/lang/String;

.field private mReqId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;->mContentsToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;->mContents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;->mReqId:I

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;->mContentsToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;->mContents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;->mReqId:I

    return p1
.end method


# virtual methods
.method public getContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;->mContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentsToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;->mContentsToken:Ljava/lang/String;

    return-object v0
.end method

.method public getReqId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;->mReqId:I

    return v0
.end method
