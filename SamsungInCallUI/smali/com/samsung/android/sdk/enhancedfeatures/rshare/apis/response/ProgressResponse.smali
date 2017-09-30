.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;
.super Ljava/lang/Object;


# instance fields
.field private currentFileCount:I

.field private currentProgressBytes:J

.field private currentProgressFileName:Ljava/lang/String;

.field private currentProgressTotalBytes:J

.field private data:Landroid/os/Bundle;

.field private overallProgressBytes:J

.field private overallTotalBytes:J

.field private requestToken:J

.field private shareId:J

.field private shareToken:Ljava/lang/String;

.field private totalFileCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentFileCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->currentFileCount:I

    return v0
.end method

.method public getCurrentProgressBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->currentProgressBytes:J

    return-wide v0
.end method

.method public getCurrentProgressFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->currentProgressFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentProgressTotalBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->currentProgressTotalBytes:J

    return-wide v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public getOverallProgressBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->overallProgressBytes:J

    return-wide v0
.end method

.method public getOverallTotalBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->overallTotalBytes:J

    return-wide v0
.end method

.method public getRequestToken()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->requestToken:J

    return-wide v0
.end method

.method public getShareId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->shareId:J

    return-wide v0
.end method

.method public getShareToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->shareToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalFileCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->totalFileCount:I

    return v0
.end method

.method public setCurrentFileCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->currentFileCount:I

    return-void
.end method

.method public setCurrentProgressBytes(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->currentProgressBytes:J

    return-void
.end method

.method public setCurrentProgressFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->currentProgressFileName:Ljava/lang/String;

    return-void
.end method

.method public setCurrentProgressTotalBytes(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->currentProgressTotalBytes:J

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->data:Landroid/os/Bundle;

    return-void
.end method

.method public setOverallProgressBytes(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->overallProgressBytes:J

    return-void
.end method

.method public setOverallTotalBytes(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->overallTotalBytes:J

    return-void
.end method

.method public setRequestToken(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->requestToken:J

    return-void
.end method

.method public setShareId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->shareId:J

    return-void
.end method

.method public setShareToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->shareToken:Ljava/lang/String;

    return-void
.end method

.method public setTotalFileCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->totalFileCount:I

    return-void
.end method
