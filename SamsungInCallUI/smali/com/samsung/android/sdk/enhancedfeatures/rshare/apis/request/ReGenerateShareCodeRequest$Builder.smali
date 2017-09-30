.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

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
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;->mContentsToken:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;->mContents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;->mReqId:I

    return-void
.end method


# virtual methods
.method public addContent(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;->mContents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;->mContents:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;->mContentsToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;->mContentsToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentToken is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;->mContentsToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;->mReqId:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;->access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest;I)I

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannon build request, contentsToken is not null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentToken(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;->mContentsToken:Ljava/lang/String;

    return-object p0
.end method

.method public setReqId(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ReGenerateShareCodeRequest$Builder;->mReqId:I

    return-object p0
.end method
