.class Lcom/android/incallui/util/VTAutoTestProxy$1;
.super Landroid/content/BroadcastReceiver;


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

    iput-object p1, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

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

    invoke-static {v2}, Lcom/android/incallui/util/VTAutoTestProxy;->access$000(Lcom/android/incallui/util/VTAutoTestProxy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.android.EndVTCall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->access$000(Lcom/android/incallui/util/VTAutoTestProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->access$100(Lcom/android/incallui/util/VTAutoTestProxy;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.android.AcceptInComingVTCall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->access$200(Lcom/android/incallui/util/VTAutoTestProxy;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.android.ControlAutoTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->access$000(Lcom/android/incallui/util/VTAutoTestProxy;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    const-string v1, "auto_test"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/VTAutoTestProxy;->access$002(Lcom/android/incallui/util/VTAutoTestProxy;Z)Z

    iget-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    invoke-virtual {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->handleMessage()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    const-string v1, "auto_test"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/VTAutoTestProxy;->access$002(Lcom/android/incallui/util/VTAutoTestProxy;Z)Z

    goto :goto_0

    :cond_5
    const-string v1, "com.android.mutecall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy$1;->this$0:Lcom/android/incallui/util/VTAutoTestProxy;

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->access$300(Lcom/android/incallui/util/VTAutoTestProxy;)V

    goto :goto_0
.end method
