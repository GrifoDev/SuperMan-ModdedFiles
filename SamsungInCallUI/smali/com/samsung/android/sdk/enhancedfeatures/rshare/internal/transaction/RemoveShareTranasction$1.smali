.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 2

    const-string v0, "RemoveShare _ onProgress"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 7

    const/4 v4, 0x0

    const/16 v6, 0x191

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_9

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

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;

    const-string v2, "Error but VolleyError is null"

    invoke-static {v1, v6, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;IILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2716

    if-ne v1, v2, :cond_1

    const-string v0, "consume cancel error, this is just for release thread"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2af9

    if-ne v1, v2, :cond_2

    const/4 v0, -0x2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;

    const-string v2, "Network timeout occurs."

    invoke-static {v1, v6, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2afa

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "NoConnectionError but it has already been paused"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/Throwable;

    iget-object v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/16 v0, -0xa

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;

    const-string v2, "No network connection"

    invoke-static {v1, v6, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;IILjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2ee0

    if-ne v1, v2, :cond_7

    const/16 v0, -0xb

    :cond_5
    :goto_1
    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v4, 0x2ee1

    cmp-long v1, v2, v4

    if-nez v1, :cond_8

    const/4 v0, -0x3

    :cond_6
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

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;

    iget-object v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-static {v1, v6, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2af8

    if-ne v1, v2, :cond_5

    const/16 v0, -0xc

    goto :goto_1

    :cond_8
    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_6

    iget-wide v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    long-to-int v0, v0

    goto :goto_2

    :cond_9
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/16 v1, 0x67

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;

    iget-object v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mMediaToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/file/FileManager;->removeDirectoryPrivate(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    goto/16 :goto_0

    :pswitch_1
    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;J)V

    :cond_a
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
