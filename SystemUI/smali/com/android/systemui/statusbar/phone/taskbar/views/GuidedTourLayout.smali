.class public Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;
.super Landroid/widget/FrameLayout;
.source "GuidedTourLayout.java"


# instance fields
.field private mBackgroundLayout:Landroid/widget/FrameLayout;

.field private mContentLayout:Landroid/widget/LinearLayout;

.field private mGuidedTourLeft:Landroid/widget/LinearLayout;

.field private mGuidedTourRight:Landroid/widget/LinearLayout;

.field private mHeight:I

.field private mIsRightBottomArrow:Z

.field private mRootView:Landroid/widget/FrameLayout;

.field private mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mBackgroundLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mHeight:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mWidth:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mHeight:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mWidth:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mWidth:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mIsRightBottomArrow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mWidth:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mIsRightBottomArrow:Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeGuidedTourLayout()V

    return v2

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public isRightBottomArrow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mIsRightBottomArrow:Z

    return v0
.end method

.method public makeGuidedTourView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mContext:Landroid/content/Context;

    const v6, 0x7f0d004e

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mRootView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mRootView:Landroid/widget/FrameLayout;

    new-instance v6, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mRootView:Landroid/widget/FrameLayout;

    const v6, 0x7f0a01db

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mBackgroundLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mRootView:Landroid/widget/FrameLayout;

    const v6, 0x7f0a01e1

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mContentLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mRootView:Landroid/widget/FrameLayout;

    const v6, 0x7f0a01dd

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mGuidedTourRight:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mRootView:Landroid/widget/FrameLayout;

    const v6, 0x7f0a01dc

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mGuidedTourLeft:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mRootView:Landroid/widget/FrameLayout;

    const v6, 0x7f0a01e2

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mRootView:Landroid/widget/FrameLayout;

    const v6, 0x7f0a01e0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$2;

    invoke-direct {v5, p0, p3}, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;Landroid/content/Intent;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mContentLayout:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8, v8}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07019e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    if-le v4, v2, :cond_0

    move v4, v2

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setArrowOnRight(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mIsRightBottomArrow:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mGuidedTourLeft:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mGuidedTourRight:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mIsRightBottomArrow:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mGuidedTourLeft:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mGuidedTourRight:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTaskBarView(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    return-void
.end method

.method public updateLayoutWidth(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
