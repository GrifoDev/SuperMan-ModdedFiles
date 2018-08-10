.class public Lcom/android/systemui/statusbar/stack/AmbientState;
.super Ljava/lang/Object;
.source "AmbientState.java"


# instance fields
.field private mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field private mBaseZHeight:I

.field private mCurrentScrollVelocity:F

.field private mDark:Z

.field private mDimmed:Z

.field private mDismissAllInProgress:Z

.field private mDraggedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandingVelocity:F

.field private mExpansionChanging:Z

.field private mHasPulsingNotifications:Z

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHideSensitive:Z

.field private mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field private mLayoutHeight:I

.field private mLayoutMinHeight:I

.field private mMaxHeadsUpTranslation:F

.field private mMaxLayoutHeight:I

.field private mOverScrollBottomAmount:F

.field private mOverScrollTopAmount:F

.field private mPanelFullWidth:Z

.field private mPanelTracking:Z

.field private mScrollY:I

.field private mShadeExpanded:Z

.field private mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private mSpeedBumpIndex:I

.field private mStackTranslation:F

.field private mStatusBarState:I

.field private mTopPadding:I

.field private mUnlockHintRunning:Z

.field private mZDistanceBetweenElements:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->reload(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string/jumbo v0, " Ambient State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  mScrollY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mScrollY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mDimmed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDimmed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mOverScrollTopAmount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollTopAmount:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string/jumbo v0, "  mOverScrollBottomAmount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollBottomAmount:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string/jumbo v0, "  mSpeedBumpIndex="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mDark="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDark:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mHideSensitive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHideSensitive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mStackTranslation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStackTranslation:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string/jumbo v0, "  mLayoutHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mTopPadding="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mTopPadding:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mShadeExpanded="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShadeExpanded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mMaxHeadsUpTranslation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxHeadsUpTranslation:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string/jumbo v0, "  mDismissAllInProgress="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDismissAllInProgress:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mLayoutMinHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutMinHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mZDistanceBetweenElements="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mZDistanceBetweenElements:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mBaseZHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mBaseZHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mMaxLayoutHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxLayoutHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mCurrentScrollVelocity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mCurrentScrollVelocity:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string/jumbo v0, "  mStatusBarState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStatusBarState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mExpandingVelocity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpandingVelocity:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string/jumbo v0, "  mPanelTracking="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPanelTracking:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mExpansionChanging="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpansionChanging:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mPanelFullWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPanelFullWidth:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mHasPulsingNotifications="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHasPulsingNotifications:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mUnlockHintRunning="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mUnlockHintRunning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-object v0
.end method

.method public getBaseZHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mBaseZHeight:I

    return v0
.end method

.method public getCurrentScrollVelocity()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mCurrentScrollVelocity:F

    return v0
.end method

.method public getDraggedViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExpandingVelocity()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpandingVelocity:F

    return v0
.end method

.method public getInnerHeight()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxLayoutHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mTopPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutMinHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-object v0
.end method

.method public getMaxHeadsUpTranslation()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxHeadsUpTranslation:F

    return v0
.end method

.method public getOverScrollAmount(Z)F
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollTopAmount:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollBottomAmount:F

    goto :goto_0
.end method

.method public getScrollY()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mScrollY:I

    return v0
.end method

.method public getShelf()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object v0
.end method

.method public getSpeedBumpIndex()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    return v0
.end method

.method public getStackTranslation()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStackTranslation:F

    return v0
.end method

.method public getTopPadding()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mTopPadding:I

    int-to-float v0, v0

    return v0
.end method

.method public getZDistanceBetweenElements()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mZDistanceBetweenElements:I

    return v0
.end method

.method public hasPulsingNotifications()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHasPulsingNotifications:Z

    return v0
.end method

.method public isDark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDark:Z

    return v0
.end method

.method public isDimmed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDimmed:Z

    return v0
.end method

.method public isExpansionChanging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpansionChanging:Z

    return v0
.end method

.method public isHideSensitive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHideSensitive:Z

    return v0
.end method

.method public isOnKeyguard()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStatusBarState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanelFullWidth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPanelFullWidth:Z

    return v0
.end method

.method public isPanelTracking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPanelTracking:Z

    return v0
.end method

.method public isShadeExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShadeExpanded:Z

    return v0
.end method

.method public isUnlockHintRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mUnlockHintRunning:Z

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDragFinished(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reload(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07071f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mZDistanceBetweenElements:I

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mZDistanceBetweenElements:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mBaseZHeight:I

    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-void
.end method

.method public setCurrentScrollVelocity(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mCurrentScrollVelocity:F

    return-void
.end method

.method public setDark(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDark:Z

    return-void
.end method

.method public setDimmed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDimmed:Z

    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDismissAllInProgress:Z

    return-void
.end method

.method public setExpandingVelocity(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpandingVelocity:F

    return-void
.end method

.method public setExpansionChanging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpansionChanging:Z

    return-void
.end method

.method public setHasPulsingNotifications(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHasPulsingNotifications:Z

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method public setHideSensitive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHideSensitive:Z

    return-void
.end method

.method public setLastVisibleBackgroundChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-void
.end method

.method public setLayoutHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutHeight:I

    return-void
.end method

.method public setLayoutMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxLayoutHeight:I

    return-void
.end method

.method public setLayoutMinHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutMinHeight:I

    return-void
.end method

.method public setMaxHeadsUpTranslation(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxHeadsUpTranslation:F

    return-void
.end method

.method public setOverScrollAmount(FZ)V
    .locals 0

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollTopAmount:F

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollBottomAmount:F

    goto :goto_0
.end method

.method public setPanelFullWidth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPanelFullWidth:Z

    return-void
.end method

.method public setPanelTracking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPanelTracking:Z

    return-void
.end method

.method public setScrollY(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mScrollY:I

    return-void
.end method

.method public setShadeExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShadeExpanded:Z

    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-void
.end method

.method public setSpeedBumpIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    return-void
.end method

.method public setStackTranslation(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStackTranslation:F

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStatusBarState:I

    return-void
.end method

.method public setTopPadding(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mTopPadding:I

    return-void
.end method

.method public setUnlockHintRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mUnlockHintRunning:Z

    return-void
.end method
