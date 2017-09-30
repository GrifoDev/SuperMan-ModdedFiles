.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;-><init>()V

    const-string v0, "UploadShareContentsRequest.Builder"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest$Builder;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->setShareType(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest$Builder;->mGroupID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "can be shared at once only with group or contacts"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot build share request, select either contact or group to share"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest$Builder;->mGroupID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "nobody to share"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot build share request, select some contact or group to share"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest;

    return-object v0
.end method
