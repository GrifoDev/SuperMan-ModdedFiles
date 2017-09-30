.class public interface abstract Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadSamsungCloudListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onError(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
.end method

.method public abstract onFileUploaded(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;)V
.end method

.method public abstract onPreparingUpload(JJ)V
.end method

.method public abstract onProgress(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;)V
.end method

.method public abstract onReceivedUploadTokenUrl(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadTokenUrl;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSuccess(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;",
            ">;)V"
        }
    .end annotation
.end method
