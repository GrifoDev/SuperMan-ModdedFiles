.class public interface abstract Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/BasicListener;


# virtual methods
.method public abstract onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
.end method

.method public abstract onFileUploaded(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;)V
.end method

.method public abstract onPreparingShare(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
.end method

.method public abstract onProgress(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;)V
.end method

.method public abstract onShareStarted(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
.end method

.method public abstract onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;)V
.end method

.method public abstract onUploadCompleted(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
.end method
