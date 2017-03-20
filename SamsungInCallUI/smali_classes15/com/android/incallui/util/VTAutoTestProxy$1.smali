.class Lcom/android/incallui/util/VTAutoTestProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "VTAutoTestProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/VTAutoTestProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/util/VTAutoTestProxy;


# direct methods
.method constructor <init>(Lcom/android/incallui/util/VTAutoTestProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/util/VTAutoTestProxy;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive broadcast : action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    # getter for: Lcom/android/incallui/util/VTAutoTestProxy;->isRunning:Z
    invoke-static {v2}, Lcom/android/incallui/util/VTAutoTestProxy;->access$000(Lcom/android/incallui/util/VTAutoTestProxy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    .line 82
    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v1, "com.android.EndVTCall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    # getter for: Lcom/android/incallui/util/VTAutoTestProxy;->isRunning:Z
    invoke-static {v1}, Lcom/android/incallui/util/VTAutoTestProxy;->access$000(Lcom/android/incallui/util/VTAutoTestProxy;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    # invokes: Lcom/android/incallui/util/VTAutoTestProxy;->hangUpCall()V
    invoke-static {v1}, Lcom/android/incallui/util/VTAutoTestProxy;->access$100(Lcom/android/incallui/util/VTAutoTestProxy;)V

    goto :goto_0

    .line 88
    :cond_2
    const-string v1, "com.android.AcceptInComingVTCall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    # invokes: Lcom/android/incallui/util/VTAutoTestProxy;->answerCall()V
    invoke-static {v1}, Lcom/android/incallui/util/VTAutoTestProxy;->access$200(Lcom/android/incallui/util/VTAutoTestProxy;)V

    goto :goto_0

    .line 90
    :cond_3
    const-string v1, "com.android.ControlAutoTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 91
    iget-object v1, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    # getter for: Lcom/android/incallui/util/VTAutoTestProxy;->isRunning:Z
    invoke-static {v1}, Lcom/android/incallui/util/VTAutoTestProxy;->access$000(Lcom/android/incallui/util/VTAutoTestProxy;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 92
    iget-object v1, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    const-string v2, "auto_test"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/incallui/util/VTAutoTestProxy;->isRunning:Z
    invoke-static {v1, v2}, Lcom/android/incallui/util/VTAutoTestProxy;->access$002(Lcom/android/incallui/util/VTAutoTestProxy;Z)Z

    .line 93
    iget-object v1, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    invoke-virtual {v1}, Lcom/android/incallui/util/VTAutoTestProxy;->handleMessage()V

    goto :goto_0

    .line 95
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    const-string v2, "auto_test"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/incallui/util/VTAutoTestProxy;->isRunning:Z
    invoke-static {v1, v2}, Lcom/android/incallui/util/VTAutoTestProxy;->access$002(Lcom/android/incallui/util/VTAutoTestProxy;Z)Z

    goto :goto_0

    .line 97
    :cond_5
    const-string v1, "com.android.mutecall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    # invokes: Lcom/android/incallui/util/VTAutoTestProxy;->muteCall()V
    invoke-static {v1}, Lcom/android/incallui/util/VTAutoTestProxy;->access$300(Lcom/android/incallui/util/VTAutoTestProxy;)V

    goto :goto_0
.end method
