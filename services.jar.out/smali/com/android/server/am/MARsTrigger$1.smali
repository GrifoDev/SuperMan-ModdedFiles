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
    .locals 14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    sget-object v7, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_1
    const-string/jumbo v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->clearStorageDiff()V

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->clearNotificationDiff()V

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStat()V

    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v8, "FIRST_ALARM_APPLOCKER"

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v10, v9, Lcom/android/server/am/MARsTrigger;->mAppLockerPolicyInterval:J

    invoke-static {v7, v8, v10, v11}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    :cond_3
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v8, "FIRST_ALARM_AUTORUN_TRAFFIC_STAT"

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v10, v9, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v12, v9, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    sub-long/2addr v10, v12

    invoke-static {v7, v8, v10, v11}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    :cond_4
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get6(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get6(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    sget-object v7, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPolicyManager;->setCarModeOnState(Z)V

    goto :goto_0

    :cond_7
    const-string/jumbo v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    sget-object v7, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_8
    const-string/jumbo v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->clearNotificationUpdate()V

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->clearStorageDiff()V

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->clearNotificationDiff()V

    :cond_9
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->getLCDonKillEnabled()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get1(Lcom/android/server/am/MARsTrigger;)Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_a
    :goto_2
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get7(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get7(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_b
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get8(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get8(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_c
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get9(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get9(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_d
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get11(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get11(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_e
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get10(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get10(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_f
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get12(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get12(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get3(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v8

    sub-long v8, v2, v8

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v10, v7, Lcom/android/server/am/MARsTrigger;->mLCDOnTriggerTimeInterval:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_a

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v8, "FIRST_ALARM_ARES_TRAFFIC_STAT"

    const-wide/16 v10, 0x3e8

    invoke-static {v7, v8, v10, v11}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_2

    :cond_11
    sget-object v7, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPolicyManager;->setCarModeOnState(Z)V

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v7, "MARS_REQUEST_PKG_INFO"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_14

    const-string/jumbo v7, "MARS_EXTRA"

    const-string/jumbo v8, ""

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "create"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v4, 0x1

    :cond_13
    const-string/jumbo v7, "update"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v5, 0x1

    :cond_14
    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v7, v7, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v7, v4, v5}, Lcom/android/server/am/MARsDBManager;->requestFillInDB(ZZ)V

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->setDataConnectionConnected()V

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v7, "android.os.action.CHARGING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/am/MARsTrigger;->-set0(Lcom/android/server/am/MARsTrigger;Z)Z

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v7, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->getLCDonKillEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/am/MARsTrigger;->-set0(Lcom/android/server/am/MARsTrigger;Z)Z

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, v7, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get3(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v8

    sub-long v8, v2, v8

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v10, v7, Lcom/android/server/am/MARsTrigger;->mLCDOnTriggerTimeInterval:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v8, "FIRST_ALARM_ARES_TRAFFIC_STAT"

    const-wide/16 v10, 0x3e8

    invoke-static {v7, v8, v10, v11}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_1
.end method
