.class public Lcom/android/systemui/statusbar/NotificationContentView;
.super Landroid/widget/FrameLayout;
.source "NotificationContentView.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby/PluginNotificationContentView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationContentView$1;
    }
.end annotation


# instance fields
.field private mAmbientChild:Landroid/view/View;

.field private mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

.field private mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mAnimate:Z

.field private mAnimationStartVisibleType:I

.field private mBeforeN:Z

.field private mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mClipBottomAmount:I

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClipToActualHeight:Z

.field private mClipTopAmount:I

.field private mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mContentHeight:I

.field private mContentHeightAtAnimationStart:I

.field private mContractedChild:Landroid/view/View;

.field private mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mDark:Z

.field private final mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandable:Z

.field private mExpandedChild:Landroid/view/View;

.field private mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mExpandedVisibleListener:Ljava/lang/Runnable;

.field private mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mFocusOnVisibilityChange:Z

.field private mForceSelectNextLayout:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpChild:Landroid/view/View;

.field private mHeadsUpHeight:I

.field private mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

.field private mIconsVisible:Z

.field private mIsChildInGroup:Z

.field private mIsContentExpandable:Z

.field private mIsHeadsUp:Z

.field private mIsLowPriority:Z

.field private mLegacy:Z

.field private mMinContractedHeight:I

.field private mNeedUpdateContentColorForContracted:Z

.field private mNeedUpdateContentColorForExpanded:Z

.field private mNotificationAmbientHeight:I

.field private mNotificationContentMarginEnd:I

.field private mNotificationMaxHeight:I

.field private mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

.field private mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

.field private mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field private mShowRevert:Z

.field private mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

.field private mSingleLineWidthIndention:I

.field private mSmallHeight:I

.field private mSmallHeightForTouchWiz:I

.field private mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

.field private mTransformationStartVisibleType:I

.field private mUserExpanding:Z

.field private mVisibleType:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationContentView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationContentView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/NotificationContentView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationContentView;I)Lcom/android/systemui/statusbar/TransformableView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    new-instance v0, Lcom/android/systemui/statusbar/NotificationContentView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationContentView$1;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    new-instance v0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->initDimens()V

    return-void
.end method

.method private animateToVisibleType(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    if-eq v1, v0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    return-void

    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/android/systemui/statusbar/NotificationContentView$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView$2;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    return-void
.end method

.method private applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    const v6, 0x10201c7

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v6, v1, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_8

    sget-object v6, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    :cond_0
    if-nez v4, :cond_1

    if-eqz p3, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez p5, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-static {v6, v0, p2, v7}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/RemoteInputController;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setVisibility(I)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v4, v5

    :cond_1
    :goto_0
    if-eqz p3, :cond_5

    iget-object v6, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v3, v6, Landroid/app/Notification;->color:I

    if-nez v3, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    const v7, 0x7f060065

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v3

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    const v7, 0x7f0601b8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    const v8, 0x7f0601b3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextBackgroundColor(III)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setBackgroundColor(I)V

    invoke-virtual {v4, p6}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setWrapper(Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)V

    if-nez p4, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    iget-object v6, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v2, v6, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p4, :cond_4

    invoke-virtual {v4, p4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    :cond_4
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updatePendingIntentFromActions([Landroid/app/Notification$Action;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    :cond_5
    :goto_1
    return-object v4

    :cond_6
    invoke-virtual {v0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->requestFocus()Z

    move-object v4, p5

    goto :goto_0

    :cond_7
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    goto :goto_1

    :cond_8
    return-object v7
.end method

.method private applyRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v12, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v12, :cond_3

    const/4 v0, 0x0

    array-length v4, v12

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v11, v12, v2

    invoke-virtual {v11}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v11}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    const/4 v0, 0x0

    array-length v7, v6

    :goto_1
    if-ge v0, v7, :cond_1

    aget-object v13, v6, v0

    invoke-virtual {v13}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v5, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-object v4, p0

    move-object v6, p1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-void

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    goto :goto_3
.end method

.method private calculateTransformationAmount()F
    .locals 7

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v5, v1, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v5, v2

    int-to-float v6, v4

    div-float v0, v5, v6

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    return v5
.end method

.method private fireExpandedVisibleListenerIfVisible()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private focusExpandButtonIfNecessary()V
    .locals 3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getExpandButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestAccessibilityFocus()Z

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    :cond_1
    return-void
.end method

.method private forceUpdateVisibilities()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    return-void
.end method

.method private forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eq v1, p1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    goto :goto_1
.end method

.method private getFontScaledHeight(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v2, v2

    return v2
.end method

.method private getMinContentHeightHint()I
    .locals 8

    const v7, 0x1050161

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_6

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->isTransitioningFromTo(II)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->isTransitioningFromTo(II)Z

    move-result v2

    :goto_0
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v3, :cond_5

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSanitized()Z

    move-result v3

    xor-int/lit8 v1, v3, 0x1

    :goto_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_6

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v3, v5, :cond_7

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    if-ltz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v3, :cond_9

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_8

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_8
    return v0

    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v3, :cond_a

    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v0

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_b

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_2

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_2

    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v0, v3, v4

    goto :goto_2
.end method

.method private getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;
    .locals 1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getViewForVisibleType(I)Landroid/view/View;
    .locals 1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getVisualTypeForHeight(F)I
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    return v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    return v1

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v1, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSanitized()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-lez v1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x2

    return v1

    :cond_5
    return v2

    :cond_6
    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v1, 0x0

    return v1

    :cond_8
    return v2
.end method

.method private initDimens()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationContentMarginEnd:I

    const v0, 0x7f070444

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeightForTouchWiz:I

    return-void
.end method

.method private isCustomLayout()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isCustomNotification()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isGroupExpanded()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private isTransitioningFromTo(II)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v1, p1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    if-ne v1, p1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isVisibleOrTransitioning(I)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eq v1, p1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    if-eq v1, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectLayout(ZZ)V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateContentTransformation()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v1

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eq v1, v4, :cond_8

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    if-eqz p2, :cond_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->transferRemoteInputFocus(I)V

    :cond_4
    if-eqz p1, :cond_c

    const/4 v4, 0x1

    if-ne v1, v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v4, :cond_9

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->animateToVisibleType(I)V

    :goto_2
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->focusExpandButtonIfNecessary()V

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v3

    if-eqz v3, :cond_7

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinContentHeightHint()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    const/4 v4, 0x2

    if-ne v1, v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez v4, :cond_5

    :cond_a
    const/4 v4, 0x3

    if-ne v1, v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-nez v4, :cond_5

    :cond_b
    if-eqz v1, :cond_5

    :cond_c
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    goto :goto_2
.end method

.method private setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    goto :goto_0
.end method

.method private shouldContractedBeFixedSize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mBeforeN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private transferRemoteInputFocus(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    :cond_1
    return-void
.end method

.method private updateAllSingleLineViews()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateSingleLineView()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAmbientSingleLineView()V

    return-void
.end method

.method private updateAmbientSingleLineView()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindAmbientFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    goto :goto_0
.end method

.method private updateBackgroundTransformation(F)V
    .locals 4

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v1

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v0

    :cond_1
    invoke-static {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v0, v3, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V

    return-void
.end method

.method private updateChildrenContainerContentColor(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getVisibleHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateContentColor(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppPrimaryColor(Z)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getOverflowNumber()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getOverflowNumber()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private updateClipping()V
    .locals 5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBottomAmount:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private updateContentTransformation()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eq v3, v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v0, v1, v5}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    iput v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibilities()V

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateTransformationAmount()F

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundTransformation(F)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    goto :goto_0
.end method

.method private updateContractedHeaderWidth()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v6

    sub-int v3, v5, v6

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v6

    sub-int v0, v5, v6

    if-ltz v3, :cond_0

    if-gez v0, :cond_1

    :cond_0
    return v8

    :cond_1
    if-eq v3, v0, :cond_7

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v5

    sub-int v4, v5, v3

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v4

    :goto_0
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v4

    :cond_2
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v1, v5, v6, v4, v7}, Landroid/view/NotificationHeaderView;->setPadding(IIII)V

    invoke-virtual {v1, v9}, Landroid/view/NotificationHeaderView;->setShowWorkBadgeAtEnd(Z)V

    return v9

    :cond_3
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v5

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationContentMarginEnd:I

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v5

    if-eq v5, v4, :cond_7

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v4

    :goto_1
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v4

    :cond_5
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v1, v5, v6, v4, v7}, Landroid/view/NotificationHeaderView;->setPadding(IIII)V

    invoke-virtual {v1, v8}, Landroid/view/NotificationHeaderView;->setShowWorkBadgeAtEnd(Z)V

    return v9

    :cond_6
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v5

    goto :goto_1

    :cond_7
    return v8
.end method

.method private updateIconVisibilities()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    :cond_2
    return-void
.end method

.method private updateLegacy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    :cond_2
    return-void
.end method

.method private updateNotificationSingleLineContentColor(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTitleColor(Z)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTextColor(Z)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private updateSingleLineView()V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->needUpdateNotificationContentColor(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldApplyInvertColor()Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateNotificationSingleLineContentColor(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    goto :goto_1
.end method

.method private updateViewVisibilities(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x2

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x3

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x4

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x5

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    return-void
.end method

.method private updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 1

    if-eqz p3, :cond_0

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p4, v0}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVisibility()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isShown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public calculateVisibleType()I
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    return v5

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    return v5

    :cond_1
    return v6

    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxContentHeight()I

    move-result v2

    :goto_0
    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    :cond_4
    int-to-float v5, v2

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    const/4 v0, 0x3

    :goto_1
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v5, v0, :cond_7

    :goto_2
    return v1

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v2

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v0

    goto :goto_1

    :cond_7
    move v1, v0

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    if-eqz v3, :cond_9

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_9
    int-to-float v5, v4

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v5

    return v5
.end method

.method public closeRemoteInput()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    :cond_1
    return-void
.end method

.method public getAmbientChild()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    return-object v0
.end method

.method public getAmbientSingleLineChild()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0
.end method

.method public getBackgroundColor(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result v1

    :cond_0
    return v1
.end method

.method public getBackgroundColorForExpansionState()I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleType()I

    move-result v0

    goto :goto_0
.end method

.method public getContractedChild()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0
.end method

.method public getExpandedChild()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0
.end method

.method public getHeadsUpChild()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getShowingAmbientView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSanitized()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v0

    return v0
.end method

.method public getMinHeight(Z)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getShowingAmbientView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public getShowingAmbientView()Landroid/view/View;
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v1
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0
.end method

.method public getSingleLineheight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    goto :goto_0
.end method

.method public getVisibleType()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    return v0
.end method

.method public getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isAnimatingVisibleType()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentExpandable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsContentExpandable:Z

    return v0
.end method

.method public isDimmable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->isDimmable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->initDimens()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    if-ne v5, v0, :cond_12

    const/4 v4, 0x1

    :goto_0
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    if-ne v5, v0, :cond_13

    const/4 v7, 0x1

    :goto_1
    const v10, 0x7fffffff

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    if-nez v4, :cond_0

    if-eqz v7, :cond_1

    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    :cond_1
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationMaxHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/16 v16, 0x0

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    if-ltz v18, :cond_2

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/16 v16, 0x1

    :cond_2
    const v18, 0x7fffffff

    move/from16 v0, v18

    if-ne v14, v0, :cond_14

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isCustomLayout()Z

    move-result v18

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mBeforeN:Z

    move/from16 v18, v0

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeightForTouchWiz:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/16 v16, 0x0

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    if-ltz v18, :cond_4

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/16 v16, 0x1

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationContentView;->shouldContractedBeFixedSize()Z

    move-result v18

    if-nez v18, :cond_5

    if-eqz v16, :cond_17

    :cond_5
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/view/View;->measure(II)V

    :cond_6
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateContractedHeaderWidth()Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/view/View;->measure(II)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/view/View;->measure(II)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/16 v16, 0x0

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    if-ltz v18, :cond_9

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/16 v16, 0x1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v16, :cond_18

    const/high16 v18, 0x40000000    # 2.0f

    :goto_5
    move/from16 v0, v18

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move/from16 v13, p1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    move/from16 v18, v0

    if-eqz v18, :cond_b

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    move/from16 v18, v0

    sub-int v18, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getPaddingEnd()I

    move-result v19

    add-int v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v18, v0

    const/high16 v19, -0x80000000

    move/from16 v0, v19

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationAmbientHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/16 v16, 0x0

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    if-ltz v18, :cond_d

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/16 v16, 0x1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v16, :cond_19

    const/high16 v18, 0x40000000    # 2.0f

    :goto_6
    move/from16 v0, v18

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationAmbientHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/16 v16, 0x0

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    if-ltz v18, :cond_f

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/16 v16, 0x1

    :cond_f
    move/from16 v3, p1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    move/from16 v18, v0

    if-eqz v18, :cond_10

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    move/from16 v18, v0

    sub-int v18, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getPaddingEnd()I

    move-result v19

    add-int v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v19, v0

    if-eqz v16, :cond_1a

    const/high16 v18, 0x40000000    # 2.0f

    :goto_7
    move/from16 v0, v18

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_11
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Lcom/android/systemui/statusbar/NotificationContentView;->setMeasuredDimension(II)V

    return-void

    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_14
    if-eqz v16, :cond_15

    const/high16 v18, 0x40000000    # 2.0f

    :goto_8
    move/from16 v0, v18

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto/16 :goto_2

    :cond_15
    const/high16 v18, -0x80000000

    goto :goto_8

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto/16 :goto_3

    :cond_17
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto/16 :goto_4

    :cond_18
    const/high16 v18, -0x80000000

    goto/16 :goto_5

    :cond_19
    const/high16 v18, -0x80000000

    goto/16 :goto_6

    :cond_1a
    const/high16 v18, -0x80000000

    goto :goto_7
.end method

.method public onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    iget v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v4, 0x18

    if-ge v1, v4, :cond_6

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mBeforeN:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAllSingleLineViews()V

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isActivated()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldApplyInvertColor()Z

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNeedUpdateContentColorForContracted:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->needUpdateNotificationContentColor(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateContentColor(Z)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNeedUpdateContentColorForContracted:Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNeedUpdateContentColorForExpanded:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->needUpdateNotificationContentColor(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateContentColor(Z)V

    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNeedUpdateContentColorForExpanded:Z

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateLegacy()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    iput-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    return-void

    :cond_6
    move v1, v3

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    return-void
.end method

.method public reInflateViews()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAllSingleLineViews()V

    :cond_0
    return-void
.end method

.method public requestSelectLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    return-void
.end method

.method public setAmbientChild(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBottomAmount:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-void
.end method

.method public setContentHeight(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeight()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinContentHeightHint()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    return-void
.end method

.method public setContentHeightAnimating(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    :cond_0
    return-void
.end method

.method public setContractedChild(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNeedUpdateContentColorForContracted:Z

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eqz v1, :cond_1

    xor-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_4

    xor-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_6

    xor-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    xor-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->setDark(ZZJ)V

    :cond_8
    if-nez p1, :cond_9

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    return-void

    :cond_9
    move p2, v0

    goto :goto_0
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setExpandedChild(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    :cond_1
    if-nez p1, :cond_4

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v0, v3, :cond_3

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNeedUpdateContentColorForExpanded:Z

    return-void
.end method

.method public setFocusOnVisibilityChange()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    return-void
.end method

.method public setHeadsUpChild(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    :cond_1
    if-nez p1, :cond_4

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v0, v3, :cond_3

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-void
.end method

.method public setHeights(IIII)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    iput p2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    iput p3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationMaxHeight:I

    iput p4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationAmbientHeight:I

    return-void
.end method

.method public setIconsVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateIconVisibilities()V

    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAllSingleLineViews()V

    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsLowPriority:Z

    return-void
.end method

.method public setLegacy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateLegacy()V

    return-void
.end method

.method public setOnExpandedVisibleListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    return-void
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    return-void
.end method

.method public setRemoved()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    :cond_1
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setUserExpanding(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    goto :goto_0
.end method

.method public updateBackgroundColor(Z)V
    .locals 2

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetBackgroundAlpha()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v0, p1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V

    return-void
.end method

.method public updateExpandButtons(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    const/4 p1, 0x0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsContentExpandable:Z

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSanitized()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public updateNotificationContentColor(ZI)V
    .locals 6

    if-nez p1, :cond_3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldApplyInvertColor()Z

    move-result v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mShowRevert:Z

    if-eq v4, v3, :cond_5

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mShowRevert:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateContentColor(Z)V

    :cond_0
    if-nez p2, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateContentColor(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNumberOfChildrenWhenCollapsed()I

    move-result v5

    if-lt v4, v5, :cond_4

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNumberOfChildrenWhenCollapsed()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->updateNotificationSingleLineContentColor(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->updateChildrenContainerContentColor(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Z)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->updateNotificationSingleLineContentColor(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Z)V

    goto :goto_2
.end method
