.class Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {p2}, Lcom/sec/spp/push/IPushClientService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/spp/push/IPushClientService;

    move-result-object v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, v1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->access$202(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;Lcom/sec/spp/push/IPushClientService;)Lcom/sec/spp/push/IPushClientService;

    return-void
.end method
