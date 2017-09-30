.class Lcom/android/incallui/accessory/AccessoryEventHandler$1;
.super Landroid/content/BroadcastReceiver;


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
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccessoryEventHandler action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.sec.android.sidesync.common.CALLFORWARD_STATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessoryEventHandler: call forward state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/util/AudioUtils;->setCallForwardingState(Z)V

    iget-object v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    const-string v2, "STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$000(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$102(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessoryEventHandler: wifi display state - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-static {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$100(Lcom/android/incallui/accessory/AccessoryEventHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "com.samsung.intent.action.HMT_DOCK_STICKY_EVENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.samsung.intent.extra.HMT_DOCK_STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccessoryEventHandler: hmt state - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-ne v2, v0, :cond_3

    :goto_1
    invoke-static {v3, v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$202(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)Z

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    iget-object v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-static {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$200(Lcom/android/incallui/accessory/AccessoryEventHandler;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$300(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
