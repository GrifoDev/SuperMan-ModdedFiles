.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;

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

    if-eq v0, v1, :cond_7

    const/4 v0, -0x1

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    if-nez v1, :cond_0

    const-string v1, "Error but VolleyError is null"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1;I)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2af9

    if-ne v1, v2, :cond_1

    const/4 v0, -0x2

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare;->result2str(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1;I)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2afa

    if-ne v1, v2, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "no connection or socket error"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/16 v0, -0xa

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1$3;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1;I)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2ee0

    if-ne v1, v2, :cond_5

    const/16 v0, -0xb

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

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1$4;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1$4;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1;I)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

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
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    check-cast p2, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1$5;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1$5;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1;Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
