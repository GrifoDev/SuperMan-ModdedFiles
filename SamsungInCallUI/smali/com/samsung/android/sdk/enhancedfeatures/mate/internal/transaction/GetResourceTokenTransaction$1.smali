.class Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction;

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

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetResourceTokenListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetResourceTokenListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetResourceTokenResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetResourceTokenResponse;-><init>()V

    check-cast p2, Lcom/samsung/android/sdk/ssf/accessory/io/GetResourceTokenResp;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetResourceTokenResponse;->setReqId(I)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetResourceTokenResponse;->setUserData(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/accessory/io/GetResourceTokenResp;->getResourceToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetResourceTokenResponse;->setResourceToken(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/accessory/io/GetResourceTokenResp;->getExpirationTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetResourceTokenResponse;->setExpirationTime(J)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetResourceTokenListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetResourceTokenListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetResourceTokenResponse;)V

    goto :goto_0
.end method
