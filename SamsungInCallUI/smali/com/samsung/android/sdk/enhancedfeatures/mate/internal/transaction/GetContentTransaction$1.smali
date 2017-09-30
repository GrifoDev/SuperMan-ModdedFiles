.class Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction;

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

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetContentListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetContentListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetContentListener;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetContentListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method
