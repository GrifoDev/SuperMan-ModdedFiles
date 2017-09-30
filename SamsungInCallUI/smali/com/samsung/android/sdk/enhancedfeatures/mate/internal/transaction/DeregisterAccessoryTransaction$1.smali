.class Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 4

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setReqId(I)V

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/DeregisterAccessoryListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/DeregisterAccessoryListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/BaseResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/BaseResponse;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/BaseResponse;->setReqId(I)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/BaseResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/DeregisterAccessoryListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/DeregisterAccessoryListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/BaseResponse;)V

    goto :goto_0
.end method
