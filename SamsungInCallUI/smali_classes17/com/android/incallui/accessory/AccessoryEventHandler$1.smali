.class Lcom/android/incallui/accessory/AccessoryEventHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "AccessoryEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/accessory/AccessoryEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;


# direct methods
.method constructor <init>(Lcom/android/incallui/accessory/AccessoryEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccessoryEventHandler action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "com.sec.android.sidesync.common.CALLFORWARD_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "STATE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccessoryEventHandler: call forward state - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "STARTED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/util/AudioUtils;->setCallForwardingState(Z)V

    iget-object v3, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    const-string v4, "STARTED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    # invokes: Lcom/android/incallui/accessory/AccessoryEventHandler;->notifyListenersOfCallForwardStateChanged(Z)V
    invoke-static {v3, v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$000(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v3, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    const-string v5, "state"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/incallui/accessory/AccessoryEventHandler;->mWIFIDisplayState:I
    invoke-static {v3, v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$102(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccessoryEventHandler: wifi display state - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    # getter for: Lcom/android/incallui/accessory/AccessoryEventHandler;->mWIFIDisplayState:I
    invoke-static {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$100(Lcom/android/incallui/accessory/AccessoryEventHandler;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v5, "com.samsung.intent.action.HMT_DOCK_STICKY_EVENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "com.samsung.intent.extra.HMT_DOCK_STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccessoryEventHandler: hmt state - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-ne v2, v3, :cond_3

    :goto_1
    # setter for: Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsHmtDocked:Z
    invoke-static {v5, v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$202(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)Z

    iget-object v3, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    iget-object v4, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    # getter for: Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsHmtDocked:Z
    invoke-static {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$200(Lcom/android/incallui/accessory/AccessoryEventHandler;)Z

    move-result v4

    # invokes: Lcom/android/incallui/accessory/AccessoryEventHandler;->notifyListenersOfHmtStateChanged(Z)V
    invoke-static {v3, v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$300(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method
