.class Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$BindState;
.super Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$BindState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$BindState;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$BindState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)V

    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "[%s] Process BindState startId=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$BindState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-static {v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$BindState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$BindState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/spp/push/IPushClientService;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$202(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;Lcom/sec/spp/push/IPushClientService;)Lcom/sec/spp/push/IPushClientService;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$BindState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/sec/spp/push/IPushClientService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Failed to connect spp service. Stop self()"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$BindState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$BindState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$BindState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto :goto_0
.end method
