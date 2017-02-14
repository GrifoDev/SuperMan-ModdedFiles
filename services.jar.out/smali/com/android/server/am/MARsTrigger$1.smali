.class Lcom/android/server/am/MARsTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    sget-object v9, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_1
    const-string/jumbo v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->clearStorageDiff()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->clearNotificationDiff()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStat()V

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v10, "FIRST_ALARM_APPLOCKER"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v12, v11, Lcom/android/server/am/MARsTrigger;->mAppLockerPolicyInterval:J

    invoke-static {v9, v10, v12, v13}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v10, "FIRST_ALARM_AUTORUN_TRAFFIC_STAT"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v12, v11, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v14, v11, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    sub-long/2addr v12, v14

    invoke-static {v9, v10, v12, v13}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    sget-object v9, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/am/MARsPolicyManager;->setCarModeOnState(Z)V

    goto :goto_0

    :cond_6
    const-string/jumbo v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_7
    const-string/jumbo v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->getLCDonKillEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get10(Lcom/android/server/am/MARsTrigger;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mHandler:Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

    new-instance v10, Lcom/android/server/am/MARsTrigger$1$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/server/am/MARsTrigger$1$1;-><init>(Lcom/android/server/am/MARsTrigger$1;)V

    const-wide/16 v12, 0x3e8

    invoke-virtual {v9, v10, v12, v13}, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->clearNotificationUpdate()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->clearStorageDiff()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->clearNotificationDiff()V

    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get4(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v9

    if-eqz v9, :cond_a

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get4(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get5(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v9

    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get5(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get6(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v9

    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get6(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get8(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v9

    if-eqz v9, :cond_d

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get8(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get7(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v9

    if-eqz v9, :cond_e

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get7(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get9(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v9

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get9(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    :cond_f
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/am/MARsPolicyManager;->setCarModeOnState(Z)V

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v9, "MARS_REQUEST_PKG_INFO"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_11

    const-string/jumbo v9, "MARS_EXTRA"

    const-string/jumbo v10, ""

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "update"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v6, 0x1

    :cond_11
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v9, v9, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v9, v6}, Lcom/android/server/am/MARsDBManager;->requestFillInDB(Z)V

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->setDataConnectionConnected()V

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->getLCDonKillEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v9, "plugged"

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get1(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v10

    sub-long v10, v4, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v12, v9, Lcom/android/server/am/MARsTrigger;->mLCDOnTriggerTimeInterval:J

    cmp-long v9, v10, v12

    if-lez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9, v4, v5}, Lcom/android/server/am/MARsTrigger;->-set0(Lcom/android/server/am/MARsTrigger;J)J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v11, "com.android.server.am.ACTION_UI_SET_ARES"

    invoke-static {v10, v11}, Lcom/android/server/am/MARsTrigger;->-wrap2(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v9, v11, v10}, Lcom/android/server/am/MARsTrigger;->-wrap4(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/server/am/MARsTrigger;->-set3(Lcom/android/server/am/MARsTrigger;Z)Z

    goto/16 :goto_1
.end method
