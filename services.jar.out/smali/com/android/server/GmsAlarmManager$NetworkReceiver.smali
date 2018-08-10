.class Lcom/android/server/GmsAlarmManager$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/GmsAlarmManager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/GmsAlarmManager;->-get6(Lcom/android/server/GmsAlarmManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/16 v5, 0x11

    const/4 v4, 0x1

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "GmsAlarmManager"

    const-string/jumbo v2, "CONNECTIVITY RECEIVER"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-static {v2, v1}, Lcom/android/server/GmsAlarmManager;->-set4(Lcom/android/server/GmsAlarmManager;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get11(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get11(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const v1, 0x9d09

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    const-string/jumbo v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NetworkInfo type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  -- isConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->-get11(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne v0, v4, :cond_2

    :cond_0
    if-ne v0, v5, :cond_1

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get11(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get17(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get13(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get15(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get9(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-set5(Lcom/android/server/GmsAlarmManager;Z)Z

    return-void

    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, v5, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get17(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-wrap5(Lcom/android/server/GmsAlarmManager;)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    const-wide/16 v2, 0x2710

    invoke-static {v1, v2, v3}, Lcom/android/server/GmsAlarmManager;->-wrap11(Lcom/android/server/GmsAlarmManager;J)V

    goto :goto_1
.end method
