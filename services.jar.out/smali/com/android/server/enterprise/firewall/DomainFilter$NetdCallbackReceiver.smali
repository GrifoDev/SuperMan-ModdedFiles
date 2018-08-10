.class Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "DomainFilter.java"

# interfaces
.implements Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;
    }
.end annotation


# instance fields
.field private mConnected:Z

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    return-void
.end method


# virtual methods
.method public onDaemonConnected()V
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NetdCallbackReceiver.onDaemonConnected() - connected to netd"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->-wrap6(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get2(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get2(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/net/INetd;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/net/INetd;->setSystemServerPID(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NetdCallbackReceiver.onDaemonConnected() - Exception occurred setting system PID"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDaemonDisconnected()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NetdCallbackReceiver.onDaemonDisconnected() - disconnected from netd"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NetdCallbackReceiver.onDaemonDisconnected() - Scheduling ScheduleReInitializationOfDaemonCache"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;

    invoke-direct {v1, p0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->mConnected:Z

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v1, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->-set1(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/Thread;)Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 16

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v12, 0x1

    return v12

    :pswitch_0
    move-object/from16 v0, p3

    array-length v12, v0

    const/4 v13, 0x7

    if-lt v12, v13, :cond_0

    const/4 v12, 0x3

    :try_start_0
    aget-object v12, p3, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    :goto_1
    const/4 v12, 0x4

    :try_start_1
    aget-object v12, p3, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v12, v10, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->-wrap3(Lcom/android/server/enterprise/firewall/DomainFilter;II)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    const/4 v12, 0x1

    return v12

    :catch_0
    move-exception v5

    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get0()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "onEvent() - Error parsing uid to int"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_1

    :catch_1
    move-exception v5

    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get0()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "onEvent() - Error parsing pid to int"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, -0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    new-instance v3, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    const/4 v12, 0x2

    aget-object v12, p3, v12

    const/4 v13, 0x3

    aget-object v13, p3, v13

    const/4 v14, 0x5

    aget-object v14, p3, v14

    invoke-direct {v3, v12, v13, v14}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_3
    const/4 v12, 0x5

    if-ge v7, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get3(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v12

    aget-object v12, v12, v7

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get3(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v12

    aget-object v12, v12, v7

    invoke-virtual {v12, v3}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->isEqual(Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v4, 0x1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get3(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get4(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    move-result v13

    aput-object v3, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get4(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->-set0(Lcom/android/server/enterprise/firewall/DomainFilter;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get4(Lcom/android/server/enterprise/firewall/DomainFilter;)I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->-set0(Lcom/android/server/enterprise/firewall/DomainFilter;I)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get1(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "activity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.knox.intent.action.BLOCKED_DOMAIN"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_PACKAGENAME"

    invoke-virtual {v2, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_TIMESTAMP"

    const/4 v13, 0x2

    aget-object v13, p3, v13

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_UID"

    const/4 v13, 0x3

    aget-object v13, p3, v13

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_URL"

    const/4 v13, 0x5

    aget-object v13, p3, v13

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get1(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v14, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    invoke-virtual {v12, v2, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.enterprise.intent.action.BLOCKED_DOMAIN"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_PACKAGENAME"

    invoke-virtual {v8, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_TIMESTAMP"

    const/4 v13, 0x2

    aget-object v13, p3, v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_UID"

    const/4 v13, 0x3

    aget-object v13, p3, v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_URL"

    const/4 v13, 0x5

    aget-object v13, p3, v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v12, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get1(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v14, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v12, v8, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    const/4 v14, 0x3

    aget-object v14, p3, v14

    const/4 v15, 0x5

    aget-object v15, p3, v15

    invoke-static {v12, v13, v14, v15, v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->-wrap15(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v12, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    :cond_6
    const-string/jumbo v12, "com.sec.enterprise.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
    .end packed-switch
.end method
