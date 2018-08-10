.class final Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_0

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "NotificationClicker called on a view that is not a notification row."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setLockNotificationClicked(Z)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->NOTI_SUPPORT_ICONS_ONLY_LOCKSCREEN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isNotificationIconsOnlyOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "Notification clicking is ignored by notification Animating.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldBlockStatusBar()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setLockNotificationClicked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;)V

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    if-nez v4, :cond_3

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "NotificationClicker called on an unclickable notification,"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateTranslateNotification(F)V

    return-void

    :cond_4
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v0, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    iget-object v5, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :goto_0
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setJustClicked(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$1;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isNotificationIconsOnlyOn()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isNotificationPreview()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setNotiClickedOnShadeLocked(Z)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v7

    invoke-virtual {v5}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v9, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-static {v0, v1, v9}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v6

    :goto_3
    sget-boolean v0, Lcom/android/systemui/Rune;->NOTI_SUPPORT_ICONS_ONLY_LOCKSCREEN:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isNotificationIconsOnlyOn()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mClickedNotificationPreview:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    :cond_6
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;Landroid/app/PendingIntent;)V

    invoke-virtual {v9, v0, v12, v6, v13}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZ)V

    return-void

    :cond_7
    iget-object v5, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isNotificationIconsOnlyOn()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setNotiClickedOnShadeLocked(Z)V

    goto :goto_2

    :cond_b
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
