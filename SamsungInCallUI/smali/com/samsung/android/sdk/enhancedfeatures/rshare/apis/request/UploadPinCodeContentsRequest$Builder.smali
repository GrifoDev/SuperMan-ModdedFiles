.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadPinCodeContentsRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadPinCodeContentsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private DEFAULT_VALUE_DURATION_TIME:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadPinCodeContentsRequest$Builder;->DEFAULT_VALUE_DURATION_TIME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadPinCodeContentsRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadPinCodeContentsRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadPinCodeContentsRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadPinCodeContentsRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadPinCodeContentsRequest;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadPinCodeContentsRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadPinCodeContentsRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->setShareType(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadPinCodeContentsRequest$Builder;->mDurationTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadPinCodeContentsRequest$Builder;->DEFAULT_VALUE_DURATION_TIME:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadPinCodeContentsRequest$Builder;->mDurationTime:Ljava/lang/String;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadPinCodeContentsRequest;

    return-object v0
.end method
