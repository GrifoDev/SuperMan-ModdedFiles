.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;
.super Lcom/android/systemui/SwipeHelper;
.source "DeskPanelViewNotification.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationSwipeHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    return-void
.end method

.method private handleMenuCoveredOrDismissed()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get12(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-set1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Landroid/view/View;)Landroid/view/View;

    :cond_0
    return-void
.end method


# virtual methods
.method public closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get9(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move-object v8, v7

    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0, p1, v8}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-wrap1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get9(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    move v2, v1

    move v5, v4

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get12(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get12(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Landroid/view/View;

    move-result-object v8

    goto :goto_0
.end method

.method public dismiss(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->swipedFastEnough(FF)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    return-void
.end method

.method public dismissChild(Landroid/view/View;FZ)V
    .locals 8

    const/4 v4, -0x1

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    move-object v7, p1

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentAllState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentSingleState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-wrap3(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get9(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    const/4 v1, 0x1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->handleMenuCoveredOrDismissed()V

    :cond_2
    return-void
.end method

.method public getMinDismissVelocity()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->getEscapeVelocity()F

    move-result v0

    return v0
.end method

.method public getTranslation(Landroid/view/View;)F
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslation()F

    move-result v0

    return v0
.end method

.method public getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    invoke-interface {v0, p2, p1, p3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;F)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-set2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setSwipeActionHelper(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setMenuClickListener(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onHeightUpdate()V

    :cond_0
    return-void
.end method

.method public onMoveUpdate(Landroid/view/View;Landroid/view/MotionEvent;FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-set2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;F)Z

    :cond_0
    return-void
.end method

.method public resetExposedMenuView(ZZ)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get12(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-set1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Landroid/view/View;)Landroid/view/View;

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetTranslation()V

    goto :goto_0
.end method

.method public setTranslation(Landroid/view/View;F)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslation(F)V

    return-void
.end method

.method public snap(Landroid/view/View;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->snapChild(Landroid/view/View;FF)V

    return-void
.end method

.method public snapChild(Landroid/view/View;FF)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->onDragCancelled(Landroid/view/View;)V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->handleMenuCoveredOrDismissed()V

    :cond_0
    return-void
.end method

.method public snooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get9(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return-void
.end method

.method public swipedFarEnough(FF)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->swipedFarEnough()Z

    move-result v0

    return v0
.end method

.method public swipedFastEnough(FF)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$NotificationSwipeHelper;->swipedFastEnough()Z

    move-result v0

    return v0
.end method
