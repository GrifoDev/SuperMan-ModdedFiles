.class Lcom/android/systemui/statusbar/BaseStatusBar$6;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/BaseStatusBar$6;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$6;->superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method

.method private getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 23

    const v19, 0x1020061

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v16

    const/4 v9, 0x0

    move-object/from16 v0, v16

    instance-of v0, v0, [Landroid/app/RemoteInput;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v9, v16

    check-cast v9, [Landroid/app/RemoteInput;

    :cond_0
    if-nez v9, :cond_1

    const/16 v19, 0x0

    return v19

    :cond_1
    const/4 v8, 0x0

    const/16 v19, 0x0

    array-length v0, v9

    move/from16 v20, v0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    aget-object v7, v9, v19

    invoke-virtual {v7}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v21

    if-eqz v21, :cond_2

    move-object v8, v7

    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    :cond_3
    if-nez v8, :cond_4

    const/16 v19, 0x0

    return v19

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    const/4 v14, 0x0

    :goto_1
    if-eqz v11, :cond_5

    instance-of v0, v11, Landroid/view/View;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object v12, v11

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->isRootNamespace()Z

    move-result v19

    if-eqz v19, :cond_8

    sget-object v19, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    :cond_5
    const/4 v15, 0x0

    :goto_2
    if-eqz v11, :cond_6

    instance-of v0, v11, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object v15, v11

    check-cast v15, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    :cond_6
    if-eqz v14, :cond_7

    if-nez v15, :cond_a

    :cond_7
    const/16 v19, 0x0

    return v19

    :cond_8
    invoke-interface {v11}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    goto :goto_1

    :cond_9
    invoke-interface {v11}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlockedRemoteInputOnCover:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0f06a6

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v10, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    const/16 v19, 0x0

    return v19

    :cond_b
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAllowLockscreenRemoteInput:Z

    move/from16 v19, v0

    if-nez v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    const/16 v19, 0x1

    return v19

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/BaseStatusBar;->-get2(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/UserManager;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/BaseStatusBar;->-get1(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/app/KeyguardManager;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    const/16 v19, 0x1

    return v19

    :cond_d
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setVisibility(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v3, v19, v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v4, v19, v20

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getWidth()I

    move-result v18

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getHeight()I

    move-result v6

    add-int v19, v3, v4

    sub-int v20, v6, v4

    add-int v20, v20, v3

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    sub-int v20, v18, v3

    add-int v20, v20, v4

    sub-int v21, v18, v3

    sub-int v22, v6, v4

    add-int v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/16 v19, 0x0

    int-to-float v0, v13

    move/from16 v20, v0

    :try_start_0
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v14, v3, v4, v0, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/animation/Animator;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    invoke-virtual {v14, v9, v8}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;)V

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    const/16 v19, 0x1

    return v19

    :catch_0
    move-exception v5

    const-string/jumbo v19, "StatusBar"

    const-string/jumbo v20, "RemoteInputView is detached on Window when starting animator!"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private logActionClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$6;->getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v5, "StatusBar"

    const-string/jumbo v6, "Couldn\'t determine notification for click."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x1020424

    if-ne v5, v6, :cond_1

    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v0, v4

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v5, v3, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlockedRemoteInputOnCover:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$6;->handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v10

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlockedRemoteInputOnCover:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$6;->logActionClick(Landroid/view/View;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.notification"

    const-string/jumbo v4, "NO08"

    invoke-static {v0, v1, v4, v5, v5}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v0, v1, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$6;ZZLandroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v9, v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    return v10

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$6;->superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v7

    goto :goto_0
.end method
