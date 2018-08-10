.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;
.super Landroid/widget/FrameLayout;
.source "DeskPanelViewNotificationAllArea.java"

# interfaces
.implements Lcom/android/systemui/statusbar/stack/ScrollContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea$1;
    }
.end annotation


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mContext:Landroid/content/Context;

.field private mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mIncreasedPaddingBetweenElements:I

.field private mLayoutHeight:I

.field private mPaddingBetweenElements:I

.field private mRequestLayoutRunnable:Ljava/lang/Runnable;

.field private mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mContext:Landroid/content/Context;

    return-void
.end method

.method private requestChildrenUpdate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->updateChildren()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->invalidate()V

    return-void
.end method

.method private setLayoutHeight(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mLayoutHeight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mLayoutHeight:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutHeight(I)V

    :cond_0
    return-void
.end method

.method private updateChildren()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->apply()V

    return-void
.end method


# virtual methods
.method public applyNotification()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->setLayoutHeight(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->requestChildrenUpdate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->updateChildrenHeight()I

    move-result v0

    return v0
.end method

.method public changeViewPosition(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    if-eq v0, p2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setChangingPosition(Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public getCurrentStackScrollState()Lcom/android/systemui/statusbar/stack/StackScrollState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    return-object v0
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    new-instance v0, Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->setShadeExpanded(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setDeskMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->loadDimens()V

    return-void
.end method

.method public loadDimens()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070430

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mPaddingBetweenElements:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070431

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mIncreasedPaddingBetweenElements:I

    return-void
.end method

.method public lockScrollTo(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->applyNotification()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->updateChildrenHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->setMeasuredDimension(II)V

    return-void
.end method

.method public requestDisallowDismiss()V
    .locals 0

    return-void
.end method

.method public requestDisallowLongPress()V
    .locals 0

    return-void
.end method

.method public updateChildrenHeight()I
    .locals 15

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->getChildCount()I

    move-result v11

    if-ge v3, v11, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v11, :cond_2

    move-object v0, v10

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v11

    xor-int/lit8 v6, v11, 0x1

    :goto_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShadeLockedState()Z

    move-result v11

    xor-int/lit8 v5, v11, 0x1

    :goto_2
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    if-nez v6, :cond_0

    if-nez v5, :cond_5

    xor-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_5

    :cond_0
    const/16 v11, 0x8

    :goto_3
    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIncreasedPaddingAmount()F

    move-result v4

    iget v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mPaddingBetweenElements:I

    int-to-float v11, v11

    iget v13, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mIncreasedPaddingBetweenElements:I

    int-to-float v13, v13

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v11, v13, v14}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    float-to-int v11, v11

    int-to-float v7, v11

    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-lez v11, :cond_1

    add-float/2addr v2, v7

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v2, v11

    move v8, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    move v11, v12

    goto :goto_3

    :cond_6
    float-to-int v1, v2

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutMaxHeight(I)V

    return v1
.end method
