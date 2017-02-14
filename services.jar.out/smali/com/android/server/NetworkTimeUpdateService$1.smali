.class Lcom/android/server/NetworkTimeUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->-set1(Lcom/android/server/NetworkTimeUpdateService;J)J

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v1}, Lcom/android/server/NetworkTimeUpdateService;->-get1(Lcom/android/server/NetworkTimeUpdateService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v1}, Lcom/android/server/NetworkTimeUpdateService;->-get2(Lcom/android/server/NetworkTimeUpdateService;)Landroid/util/TrustedTime;

    move-result-object v1

    invoke-interface {v1}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v1, v6, v8

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v1}, Lcom/android/server/NetworkTimeUpdateService;->-get2(Lcom/android/server/NetworkTimeUpdateService;)Landroid/util/TrustedTime;

    move-result-object v1

    invoke-interface {v1}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v1}, Lcom/android/server/NetworkTimeUpdateService;->-get3(Lcom/android/server/NetworkTimeUpdateService;)I

    move-result v1

    int-to-long v8, v1

    cmp-long v1, v6, v8

    if-lez v1, :cond_4

    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v1, v6, v8

    if-gez v1, :cond_3

    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->-set2(Lcom/android/server/NetworkTimeUpdateService;J)J

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "NetworkTimeUpdateService"

    const-string/jumbo v6, "ntp time overflow not set"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "NetworkTimeUpdateService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ntp time is close enough = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
