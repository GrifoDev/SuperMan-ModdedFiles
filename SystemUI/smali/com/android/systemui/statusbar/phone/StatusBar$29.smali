.class Lcom/android/systemui/statusbar/phone/StatusBar$29;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string/jumbo v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap35(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-string/jumbo v1, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is in the house"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap37(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->userSwitched(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap35(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v13, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-interface {v1, v4, v5, v3}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v13

    :goto_1
    if-eqz v13, :cond_0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get46(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/os/UserManager;

    move-result-object v3

    const/4 v1, 0x0

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/systemui/KnoxStateMonitor;->isLegacyContainer(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v1

    :goto_2
    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get41(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set22(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/samsung/android/knox/SemPersonaManager;)Lcom/samsung/android/knox/SemPersonaManager;

    :cond_3
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v0, v1, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get41(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set13(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",workspace name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get28(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get28(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f120765

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x102000b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const-class v1, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set23(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/ManagedProfileController;)Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get42(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get42(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->hasPremiumContainer()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f080390

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v14, v1, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0703a0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_5
    const v1, 0x7f08038f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v14, v1, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_3

    :cond_6
    const-string/jumbo v1, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "com.android.systemui.statusbar.banner_action_setup"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    const/4 v1, 0x5

    invoke-virtual {v10, v1}, Landroid/app/NotificationManager;->cancel(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "show_note_about_notification_hiding"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "com.android.systemui.statusbar.banner_action_setup"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.ACTION_APP_NOTIFICATION_REDACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.intent.extra.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    const-string/jumbo v1, "android.intent.extra.INDEX"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v2, :cond_9

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_4
    if-eqz v11, :cond_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, v11}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    goto/16 :goto_0

    :catch_1
    move-exception v8

    goto :goto_4

    :catch_2
    move-exception v9

    goto/16 :goto_1
.end method
