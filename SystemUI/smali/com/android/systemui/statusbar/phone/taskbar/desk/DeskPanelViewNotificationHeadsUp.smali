.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;
.super Landroid/widget/FrameLayout;
.source "DeskPanelViewNotificationHeadsUp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$1;
    }
.end annotation


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mCollapseAnimSet:Landroid/animation/AnimatorSet;

.field private mContext:Landroid/content/Context;

.field private mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

.field private mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

.field private mExpandAnimSet:Landroid/animation/AnimatorSet;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mIncreasedPaddingBetweenElements:I

.field private mLayoutHeight:I

.field private mPaddingBetweenElements:I

.field private mRequestLayoutRunnable:Ljava/lang/Runnable;

.field private mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

.field private mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setIconAnimationRunning(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    return-void
.end method

.method private requestChildrenUpdate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->updateChildren()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->invalidate()V

    return-void
.end method

.method private setIconAnimationRunning(Z)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setLayoutHeight(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mLayoutHeight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mLayoutHeight:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutHeight(I)V

    :cond_0
    return-void
.end method

.method private updateChildren()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->apply()V

    return-void
.end method


# virtual methods
.method public applyNotification()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setLayoutHeight(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->requestChildrenUpdate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->updateChildrenHeight()I

    move-result v0

    return v0
.end method

.method public collapse(Z)V
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseFrom()F

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseTo()F

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getCurrentState()I

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getNextState()I

    move-result v3

    if-eqz p1, :cond_1

    const-string/jumbo v6, "y"

    new-array v7, v9, [F

    aput v2, v7, v8

    aput v4, v7, v10

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_0

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    new-array v7, v9, [Landroid/animation/Animator;

    aput-object v5, v7, v8

    aput-object v0, v7, v10

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$3;

    invoke-direct {v7, p0, v4, v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;FII)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setY(F)V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setAlpha(F)V

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const-string/jumbo v7, "DeskPanelViewNotificationHeadsUp"

    invoke-virtual {v6, v7, v1, v3, v11}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->notifyDeskPanelViewNotificationVisibilityChanged(Ljava/lang/String;III)V

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public expand(Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->expandFrom()F

    move-result v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->expandTo()F

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getCurrentState()I

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getNextState()I

    move-result v4

    if-eqz p1, :cond_1

    const-string/jumbo v0, "y"

    new-array v1, v9, [F

    aput v7, v1, v5

    aput v2, v1, v10

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x15e

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string/jumbo v0, "alpha"

    new-array v1, v9, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v0, 0x96

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    aput-object v6, v1, v5

    aput-object v8, v1, v10

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;FIIZ)V

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const-string/jumbo v1, "DeskPanelViewNotificationHeadsUp"

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->notifyDeskPanelViewNotificationVisibilityChanged(Ljava/lang/String;III)V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getCurrentStackScrollState()Lcom/android/systemui/statusbar/stack/StackScrollState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    return-object v0
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    new-instance v0, Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->setShadeExpanded(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setDeskMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->loadDimens()V

    return-void
.end method

.method public loadDimens()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070430

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mPaddingBetweenElements:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070431

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mIncreasedPaddingBetweenElements:I

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

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->applyNotification()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->updateChildrenHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setMeasuredDimension(II)V

    return-void
.end method

.method public updateChildrenHeight()I
    .locals 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getChildCount()I

    move-result v11

    if-ge v3, v11, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v11, :cond_2

    move-object v0, v10

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v11

    xor-int/lit8 v6, v11, 0x1

    :goto_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShadeLockedState()Z

    move-result v11

    xor-int/lit8 v5, v11, 0x1

    :goto_2
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

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

    iget v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mPaddingBetweenElements:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mIncreasedPaddingBetweenElements:I

    int-to-float v12, v12

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v11, v12, v13}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

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
    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-lez v11, :cond_7

    const/high16 v11, 0x40c00000    # 6.0f

    add-float/2addr v2, v11

    :cond_7
    float-to-int v1, v2

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutMaxHeight(I)V

    return v1
.end method
