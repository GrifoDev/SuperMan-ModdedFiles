.class Lcom/android/server/GmsAlarmManager$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/GmsAlarmManager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/GmsAlarmManager;->-get3(Lcom/android/server/GmsAlarmManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->-set4(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->-get8(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->-wrap3(Lcom/android/server/GmsAlarmManager;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->-wrap4(Lcom/android/server/GmsAlarmManager;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v2}, Lcom/android/server/GmsAlarmManager;->-set3(Lcom/android/server/GmsAlarmManager;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v2}, Lcom/android/server/GmsAlarmManager;->-set4(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v0, v2}, Lcom/android/server/GmsAlarmManager;->-set3(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_0
.end method
