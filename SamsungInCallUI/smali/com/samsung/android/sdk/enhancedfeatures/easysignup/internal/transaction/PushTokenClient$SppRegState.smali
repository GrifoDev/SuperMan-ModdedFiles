.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;
.super Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SppRegState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/network/SppPushClient;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/network/SppPushClient;->register(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushTokenClient"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$SppRegState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushTokenClient"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
