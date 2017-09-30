.class Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;
.super Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/sec/spp/push/IPushClientService;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/sec/spp/push/IPushClientService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/spp/push/IPushClientService;->ackNotification(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPP ACKED, nid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$IdleState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;I)V

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to SPP ack nid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method
