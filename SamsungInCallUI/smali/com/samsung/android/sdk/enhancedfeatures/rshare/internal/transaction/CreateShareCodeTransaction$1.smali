.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method

.method private stop(IILjava/lang/String;)V
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Fail to CreateShareCodeTransaction, st=%d r=%d "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1$2;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x191

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;->stop(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 6

    const/16 v1, -0xb

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http status code = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Error but VolleyError is null"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2af9

    if-ne v2, v3, :cond_1

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Network timeout occurs."

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2afa

    if-ne v2, v3, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    iget-object v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/16 v0, -0xa

    const/16 v1, 0x12c

    const-string v2, "No network connection"

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;->stop(IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2ee0

    if-ne v2, v3, :cond_5

    move v0, v1

    :cond_3
    :goto_1
    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v4, 0x2ee1

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    const/4 v0, -0x3

    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP ERROR ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x191

    iget-object v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;->stop(IILjava/lang/String;)V

    goto :goto_0

    :cond_5
    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2af8

    if-ne v1, v2, :cond_3

    const/16 v0, -0xc

    goto :goto_1

    :cond_6
    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    iget-wide v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    long-to-int v0, v0

    goto :goto_2

    :cond_7
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    if-eqz p2, :cond_8

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Server Internal error. can not parse to received data."

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
