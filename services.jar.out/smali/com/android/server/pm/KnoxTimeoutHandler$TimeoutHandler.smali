.class Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;
.super Landroid/os/Handler;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxTimeoutHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    const-string/jumbo v12, "PersonaManagerService::Timeout"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown msg type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get4(Lcom/android/server/pm/KnoxTimeoutHandler;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    :try_start_0
    const-string/jumbo v12, "PersonaManagerService::Timeout"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setForegroundUser(newProfileId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get2(Lcom/android/server/pm/KnoxTimeoutHandler;)I

    move-result v12

    if-eq v12, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12, v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->-set0(Lcom/android/server/pm/KnoxTimeoutHandler;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get7(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/os/UserManager;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get5(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v14}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get5(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v4, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/content/Context;

    move-result-object v12

    const/4 v14, 0x3

    invoke-static {v12, v4, v14}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :pswitch_1
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v3, v12}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_3

    invoke-virtual {v3, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v12

    if-nez v12, :cond_3

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get6(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/app/KeyguardManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get6(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/app/KeyguardManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get8(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "PersonaManagerService::Timeout"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " Wake lock acquired for this user. Ignore reset timeout for userId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "android.intent.extra.user_handle"

    invoke-virtual {v2, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x48000000    # 131072.0f

    invoke-static {v12, v11, v2, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get0(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/app/AlarmManager;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-virtual {v12, v11}, Lcom/android/server/pm/KnoxTimeoutHandler;->getScreenOffTimeoutLocked(I)I

    move-result v9

    if-lez v9, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get0(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/app/AlarmManager;

    move-result-object v12

    int-to-long v14, v9

    add-long/2addr v14, v6

    const/4 v13, 0x2

    invoke-virtual {v12, v13, v14, v15, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v12, "PersonaManagerService::Timeout"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Not starting lock timer. user:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " is already locked"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v12, "PersonaManagerService::Timeout"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Not starting lock timer. user:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " is not secured"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    const-string/jumbo v12, "PersonaManagerService::Timeout"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "cancel lock timer : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x48000000    # 131072.0f

    invoke-static {v12, v11, v2, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v12}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get0(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/app/AlarmManager;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
