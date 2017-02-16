.class Lcom/android/systemui/doze/DozeService$1;
.super Landroid/content/BroadcastReceiver;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v2, "com.android.systemui.doze.pulse"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->-get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Received pulse intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/doze/DozeService;->-wrap4(Lcom/android/systemui/doze/DozeService;I)V

    :cond_1
    const-string/jumbo v2, "com.android.systemui.doze.notification_pulse"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "instance"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->-get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received notification pulse intent instance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceNotificationPulse(J)V

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2, v6}, Lcom/android/systemui/doze/DozeService;->-wrap4(Lcom/android/systemui/doze/DozeService;I)V

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v3}, Lcom/android/systemui/doze/DozeService;->-get6(Lcom/android/systemui/doze/DozeService;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/doze/DozeService;->-wrap5(Lcom/android/systemui/doze/DozeService;Z)V

    :cond_3
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2, v6}, Lcom/android/systemui/doze/DozeService;->-set0(Lcom/android/systemui/doze/DozeService;Z)Z

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->-get1(Lcom/android/systemui/doze/DozeService;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->-get4(Lcom/android/systemui/doze/DozeService;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$1;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->-wrap2(Lcom/android/systemui/doze/DozeService;)V

    :cond_4
    return-void
.end method
