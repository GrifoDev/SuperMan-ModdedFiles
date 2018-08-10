.class Lcom/android/systemui/statusbar/phone/StatusBar$70$1;
.super Ljava/lang/Thread;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$70;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$70;

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$notificationKey:Ljava/lang/String;

.field final synthetic val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$70;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$70;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->val$intent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->val$notificationKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->val$intent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$70;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get31(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$70;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v5, v4}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$70;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, -0x2

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v5, 0x14000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$70;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$70;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v5}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$70;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->val$notificationKey:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$70;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBar$70$1$1;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar$70$1;->val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/statusbar/phone/StatusBar$70$1$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$70$1;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
