.class public Lcom/android/systemui/stackdivider/Divider;
.super Lcom/android/systemui/SystemUI;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;,
        Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;
    }
.end annotation


# instance fields
.field private mAdjustedForIme:Z

.field private mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

.field private mDockSide:I

.field private mDockedMinimizedController:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

.field private mDockedStackExists:Z

.field private mFlingToNewSnapTarget:Z

.field private mFocusedStackId:I

.field private mFocusedTaskId:I

.field private mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

.field private mMinimized:Z

.field private mShouldAutoResize:Z

.field private mTargetStackId:I

.field private final mTargetTaskRect:Landroid/graphics/Rect;

.field private mView:Lcom/android/systemui/stackdivider/DividerView;

.field private mVisible:Z

.field private mWaitForAppTransitionFinish:Z

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedMinimizedController:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/stackdivider/Divider;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mTargetTaskRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWaitForAppTransitionFinish:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExists:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mFlingToNewSnapTarget:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/Divider;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedStackId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/Divider;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedTaskId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mShouldAutoResize:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/stackdivider/Divider;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/Divider;->mTargetStackId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/stackdivider/Divider;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockSide:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mFlingToNewSnapTarget:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mShouldAutoResize:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/stackdivider/Divider;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/Divider;->mTargetStackId:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mWaitForAppTransitionFinish:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/Divider;ILandroid/graphics/Rect;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/Divider;->ensureMinimalSize(ILandroid/graphics/Rect;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/Divider;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/Divider;->alignTaskBoundsTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->notifyDockedStackExistsChanged(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/stackdivider/Divider;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/Divider;->updateFocusedStackAndTask(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/stackdivider/Divider;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/Divider;->updateMinimizedDockedStack(ZJ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->updateVisibility(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mTargetTaskRect:Landroid/graphics/Rect;

    iput v2, p0, Lcom/android/systemui/stackdivider/Divider;->mTargetStackId:I

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mFlingToNewSnapTarget:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mShouldAutoResize:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mWaitForAppTransitionFinish:Z

    iput v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockSide:I

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExists:Z

    iput v2, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedStackId:I

    iput v2, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedTaskId:I

    return-void
.end method

.method private addDivider(Landroid/content/res/Configuration;)V
    .locals 8

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f040037

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/stackdivider/DividerView;

    iput-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v6, v4}, Lcom/android/systemui/stackdivider/DividerView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1050021

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    move v3, v2

    :goto_2
    if-eqz v1, :cond_3

    const/4 v0, -0x1

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v4, v5, v3, v0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->add(Landroid/view/View;II)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->setWindowManager(Lcom/android/systemui/stackdivider/DividerWindowManager;)V

    return-void

    :cond_0
    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3
.end method

.method private alignTaskBoundsTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le p3, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le p4, v4, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v1, :cond_2

    move v4, v0

    :goto_2
    if-nez v4, :cond_3

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget v4, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p3

    iput v4, p2, Landroid/graphics/Rect;->right:I

    :cond_4
    if-eqz v0, :cond_5

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private ensureMinimalSize(ILandroid/graphics/Rect;II)Z
    .locals 5

    const/4 v2, -0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p3, v2, :cond_0

    if-ne p4, v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v2, p4, :cond_4

    if-ne p1, v4, :cond_2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p4

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/stackdivider/DividerView;->getAutoResizingTargetPos(I)I

    move-result v3

    if-lt v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_c

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    iput v2, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->getAutoResizingTargetPos(I)I

    move-result v3

    if-gt v2, v3, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, p3, :cond_c

    if-ne p1, v4, :cond_8

    iget v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockSide:I

    if-ne v2, v0, :cond_6

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p3

    iput v2, p2, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/stackdivider/DividerView;->getAutoResizingTargetPos(I)I

    move-result v3

    if-lt v2, v3, :cond_5

    :goto_2
    return v0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockSide:I

    if-ne v2, v4, :cond_c

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p3

    iput v2, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/stackdivider/DividerView;->getAutoResizingTargetPos(I)I

    move-result v3

    if-gt v2, v3, :cond_7

    :goto_3
    return v0

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    if-ne p1, v0, :cond_c

    iget v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockSide:I

    if-ne v2, v0, :cond_a

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p3

    iput v2, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->getAutoResizingTargetPos(I)I

    move-result v3

    if-gt v2, v3, :cond_9

    :goto_4
    return v0

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    iget v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockSide:I

    if-ne v2, v4, :cond_c

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p3

    iput v2, p2, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->getAutoResizingTargetPos(I)I

    move-result v3

    if-lt v2, v3, :cond_b

    :goto_5
    return v0

    :cond_b
    move v0, v1

    goto :goto_5

    :cond_c
    return v1
.end method

.method private notifyDockedStackExistsChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExists:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$3;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeDivider()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->remove()V

    return-void
.end method

.method private update(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->removeDivider()V

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->addDivider(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    :cond_0
    return-void
.end method

.method private updateFocusedStackAndTask(II)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedTaskId:I

    if-eq v0, p2, :cond_0

    iput p2, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedTaskId:I

    :cond_0
    iget v0, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedStackId:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView;->onMultiWindowFocusedStackChanged(I)V

    iput p1, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedStackId:I

    :cond_1
    return-void
.end method

.method private updateMinimizedDockedStack(ZJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/Divider$2;-><init>(Lcom/android/systemui/stackdivider/Divider;ZJ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateTouchable()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setTouchable(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$1;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "  mVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mMinimized="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mAdjustedForIme="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getView()Lcom/android/systemui/stackdivider/DividerView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object v0
.end method

.method public isDividerMinimized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedMinimizedController:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedMinimizedController:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    new-instance v2, Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/stackdivider/DividerWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    const-class v2, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v2, p0}, Lcom/android/systemui/stackdivider/Divider;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v2, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-direct {v2, p0}, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    new-instance v0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;-><init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.multiwindow.snap_view"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->onMultiWindowSystemFeatureInitialized(Z)V

    new-instance v2, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedMinimizedController:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    new-instance v2, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    return-void
.end method
