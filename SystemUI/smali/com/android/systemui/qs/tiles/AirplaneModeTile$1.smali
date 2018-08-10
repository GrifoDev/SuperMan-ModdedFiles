.class Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get0(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mSimCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get9(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get2(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get2(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get2(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get9(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-wrap0(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-set1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get0(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new mSimCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get9(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-wrap9(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-wrap5(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get5(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-set0(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-wrap6(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V

    goto/16 :goto_0
.end method
