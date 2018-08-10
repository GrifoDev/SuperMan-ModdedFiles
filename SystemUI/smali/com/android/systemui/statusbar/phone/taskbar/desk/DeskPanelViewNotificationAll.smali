.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;
.super Landroid/widget/LinearLayout;
.source "DeskPanelViewNotificationAll.java"


# instance fields
.field private mBottomBarView:Landroid/widget/LinearLayout;

.field private mCollapseAnimSet:Landroid/animation/AnimatorSet;

.field private mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

.field private mDeskPanelViewNotificationAllBottomBarHeight:I

.field private mDeskPanelViewNotificationAllHeaderHeight:I

.field private mExpandAnimSet:Landroid/animation/AnimatorSet;

.field private mHeaderView:Landroid/view/ViewGroup;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->setIconAnimationRunning(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    return-void
.end method

.method private loadDimens()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotificationAllHeaderHeight:I

    const v1, 0x7f070156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotificationAllBottomBarHeight:I

    return-void
.end method

.method private setIconAnimationRunning(Z)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getDeskPanelViewNotificationAllArea()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public collapse(Z)V
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseFrom()F

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseTo()F

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getCurrentState()I

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getNextState()I

    move-result v3

    if-eqz p1, :cond_1

    const-string/jumbo v6, "y"

    new-array v7, v9, [F

    aput v2, v7, v8

    aput v4, v7, v10

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

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

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    new-array v7, v9, [Landroid/animation/Animator;

    aput-object v5, v7, v8

    aput-object v0, v7, v10

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;

    invoke-direct {v7, p0, v4, v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;FII)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->setY(F)V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->setAlpha(F)V

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const-string/jumbo v7, "DeskPanelViewNotificationAll"

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

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->expandFrom()F

    move-result v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->expandTo()F

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getCurrentState()I

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getNextState()I

    move-result v4

    if-eqz p1, :cond_1

    const-string/jumbo v0, "y"

    new-array v1, v9, [F

    aput v7, v1, v5

    aput v2, v1, v10

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

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

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    aput-object v6, v1, v5

    aput-object v8, v1, v10

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$1;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;FIIZ)V

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->setY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const-string/jumbo v1, "DeskPanelViewNotificationAll"

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->notifyDeskPanelViewNotificationVisibilityChanged(Ljava/lang/String;III)V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public init(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a015a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mHeaderView:Landroid/view/ViewGroup;

    const v0, 0x7f0a015b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mScrollView:Landroid/widget/ScrollView;

    const v0, 0x7f0a0159

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mBottomBarView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->loadDimens()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->getMeasuredHeight()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, 0x3

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getDeskPanelViewNotificationAllMaxHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    move v2, v3

    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotificationAllHeaderHeight:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotificationAllHeaderHeight:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotificationAllBottomBarHeight:I

    sub-int/2addr v5, v6

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mDeskPanelViewNotificationAllBottomBarHeight:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {v5, p1, v1}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, p1, v4}, Landroid/widget/ScrollView;->measure(II)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->mBottomBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p1, v0}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->setMeasuredDimension(II)V

    return-void
.end method
