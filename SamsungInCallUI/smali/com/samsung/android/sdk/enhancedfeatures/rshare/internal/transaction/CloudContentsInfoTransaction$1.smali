.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 6

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Http status code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Error but VolleyError is null"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2af9

    if-ne v1, v2, :cond_1

    const/4 v0, -0x2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Network timeout occurs."

    invoke-static {v1, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2afa

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NoConnectionError but it has already been paused"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x8

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "NoConnectionError but it has already been paused"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Throwable;

    iget-object v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/16 v0, -0xa

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "No network connection"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v4, 0x2ee1

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    const/4 v0, -0x3

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    iget-wide v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    long-to-int v0, v0

    goto :goto_1

    :cond_6
    check-cast p2, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokensResponse;

    if-eqz p2, :cond_7

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokensResponse;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_7
    const/16 v0, -0xb

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Server Internal error. can not parse to received data."

    invoke-static {v1, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
