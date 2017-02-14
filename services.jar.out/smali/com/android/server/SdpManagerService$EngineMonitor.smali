.class Lcom/android/server/SdpManagerService$EngineMonitor;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$EngineMonitor$1;
    }
.end annotation


# static fields
.field private static final EXTRA_USER_ID:Ljava/lang/String; = "userid"

.field private static final INTENT_ENGINE_UNLOCK_TIMEOUT:Ljava/lang/String; = "com.sec.knox.ENGINE_UNLOCK_TIMEOUT"

.field private static final INTENT_SDP_NOTIFY_USER:Ljava/lang/String; = "com.sec.sdp.SDP_NOTIFY_USER"

.field private static final SDP_MSG:Ljava/lang/String; = "msg"

.field private static final SDP_MSG_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "SdpManagerService.monitor"

.field private static final TIMEOUT:J = 0x1388L

.field private static final WARN_MSG_NO_INFO:Ljava/lang/String; = "no engine info"

.field private static final WARN_MSG_UNLOCK_FAILED:Ljava/lang/String; = "unlock failed"

.field private static final WARN_TITLE:Ljava/lang/String; = "KNOX SDP"


# instance fields
.field private final mTimerLock:Ljava/lang/Object;

.field private receiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/SdpManagerService$EngineMonitor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService$EngineMonitor;->notifyUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/SdpManagerService$EngineMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$EngineMonitor;->schedule(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/SdpManagerService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/SdpManagerService$EngineMonitor;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/SdpManagerService$EngineMonitor;->mTimerLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/SdpManagerService$EngineMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/SdpManagerService$EngineMonitor$1;-><init>(Lcom/android/server/SdpManagerService$EngineMonitor;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService$EngineMonitor;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.knox.ENGINE_UNLOCK_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get10()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SdpManagerService$EngineMonitor;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private kill(I)V
    .locals 9

    iget-object v6, p0, Lcom/android/server/SdpManagerService$EngineMonitor;->mTimerLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v3, "SdpManagerService.monitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "killTimer : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get10()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v7, "alarm"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.knox.ENGINE_UNLOCK_TIMEOUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "userid"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get10()Landroid/content/Context;

    move-result-object v3

    const/high16 v7, 0x48000000    # 131072.0f

    invoke-static {v3, p1, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3
.end method

.method private notifyUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.sdp.SDP_NOTIFY_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "SdpManagerService.monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcastAsUser(INTENT_SDP_NOTIFY_USER, :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get10()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private schedule(I)V
    .locals 14

    const-wide/16 v12, 0x1388

    iget-object v8, p0, Lcom/android/server/SdpManagerService$EngineMonitor;->mTimerLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    const-string/jumbo v5, "SdpManagerService.monitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "scheduleTimer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " timeout value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0x1388

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get10()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v9, "alarm"

    invoke-virtual {v5, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.sec.knox.ENGINE_UNLOCK_TIMEOUT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "userid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get10()Landroid/content/Context;

    move-result-object v5

    const/high16 v9, 0x48000000    # 131072.0f

    invoke-static {v5, p1, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v10, v2, v12

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10, v11, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v8

    throw v5
.end method
