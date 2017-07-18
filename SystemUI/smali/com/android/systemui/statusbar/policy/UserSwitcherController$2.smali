.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;
.super Landroid/content/BroadcastReceiver;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleVzwUserChange(I)V
    .locals 4

    const-string/jumbo v1, "UserSwitcherController"

    const-string/jumbo v2, "handleVzwUserChange: "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.vzw.activationagent.intent.action.SET_MOBILEDATA_MULTIUSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.app.setupwizard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v3, "android.permission.INVOKE_CARRIER_SETUP"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private showLogoutNotification(I)V
    .locals 7

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.systemui.LOGOUT_USER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v2, v5, v3, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f02019e

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0494

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0495

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0496

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02015f

    invoke-virtual {v2, v4, v3, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    const-string/jumbo v3, "logout_user"

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v6, 0x3f3

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v7, 0x0

    const/16 v3, -0x2710

    const-string/jumbo v10, "com.android.systemui.REMOVE_GUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get9(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v10, "com.android.systemui.LOGOUT_USER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->logoutCurrentUser()V

    :cond_2
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10, v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap3(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    if-eqz v7, :cond_3

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get8(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v10, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->cancel()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_5
    const-string/jumbo v10, "android.intent.extra.user_handle"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get9(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get10(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_d

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get10(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-object v10, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v10, :cond_7

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    iget-object v10, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    if-ne v10, v1, :cond_b

    const/4 v6, 0x1

    :goto_3
    iget-boolean v10, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eq v10, v6, :cond_8

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get10(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->copyWithIsCurrent(Z)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v6, :cond_9

    iget-boolean v10, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v10, :cond_c

    :cond_9
    :goto_4
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v10

    if-nez v10, :cond_6

    :cond_a
    iget-boolean v10, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get10(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_b
    const/4 v6, 0x0

    goto :goto_3

    :cond_c
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v11, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Common_ConfigPco"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "VZW_TABLET"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->handleVzwUserChange(I)V

    :cond_e
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get5(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result v10

    const/16 v11, -0x2710

    if-eq v10, v11, :cond_f

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get6(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v11}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get5(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/16 v11, -0x2710

    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    :cond_f
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v10

    if-eqz v10, :cond_13

    :cond_10
    :goto_5
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v10

    if-eqz v10, :cond_11

    if-eqz v9, :cond_11

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-eqz v10, :cond_14

    :cond_11
    :goto_6
    if-eqz v9, :cond_12

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap5(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    :cond_12
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_13
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get6(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;

    move-result-object v10

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    goto :goto_5

    :cond_14
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    if-eqz v10, :cond_11

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->showLogoutNotification(I)V

    goto :goto_6

    :cond_15
    const-string/jumbo v10, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    const-string/jumbo v10, "android.intent.extra.user_handle"

    const/16 v11, -0x2710

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v10, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "android.intent.extra.user_handle"

    const/16 v11, -0x2710

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    return-void
.end method
