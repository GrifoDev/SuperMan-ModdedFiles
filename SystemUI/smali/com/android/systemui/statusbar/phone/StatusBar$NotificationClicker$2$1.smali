.class Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;
.super Ljava/lang/Thread;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$notificationKey:Ljava/lang/String;

.field final synthetic val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$notificationKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get31(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0, v12}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v1, "1111"

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v11, v2, v3}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions()Landroid/os/Bundle;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$notificationKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    sget-object v1, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v2, "1111"

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get38(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    :goto_4
    int-to-long v4, v0

    invoke-static {v1, v2, v11, v4, v5}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    goto :goto_4

    :catch_0
    move-exception v8

    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending contentIntent failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v10

    goto :goto_3

    :catch_2
    move-exception v9

    goto/16 :goto_0
.end method
