.class public final Lcom/android/internal/view/FloatingActionMode;
.super Landroid/view/ActionMode;
.source "FloatingActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/FloatingActionMode$1;,
        Lcom/android/internal/view/FloatingActionMode$2;,
        Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
    }
.end annotation


# static fields
.field private static final MAX_HIDE_DURATION:I = 0xbb8

.field private static final MOVING_HIDE_DELAY:I = 0x32


# instance fields
.field private final mBottomAllowance:I

.field private final mCallback:Landroid/view/ActionMode$Callback2;

.field private final mContentRect:Landroid/graphics/Rect;

.field private final mContentRectOnScreen:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private final mDisplaySize:Landroid/graphics/Point;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

.field private final mHideOff:Ljava/lang/Runnable;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private final mMovingOff:Ljava/lang/Runnable;

.field private final mOriginatingView:Landroid/view/View;

.field private final mPreviousContentRectOnScreen:Landroid/graphics/Rect;

.field private final mPreviousViewPositionOnScreen:[I

.field private final mPreviousViewRectOnScreen:Landroid/graphics/Rect;

.field private final mRootViewPositionOnScreen:[I

.field private final mScreenRect:Landroid/graphics/Rect;

.field private final mViewPositionOnScreen:[I

.field private final mViewRectOnScreen:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/internal/view/FloatingActionMode;)Landroid/view/ActionMode$Callback2;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/view/FloatingActionMode;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/view/FloatingActionMode;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/view/FloatingActionMode;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/view/FloatingActionMode;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/view/FloatingActionMode;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/view/FloatingActionMode;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/view/FloatingActionMode;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->isViewStillActive()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    new-instance v0, Lcom/android/internal/view/FloatingActionMode$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/FloatingActionMode$1;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/view/FloatingActionMode$2;

    invoke-direct {v0, p0}, Lcom/android/internal/view/FloatingActionMode$2;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ActionMode$Callback2;

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Lcom/android/internal/view/FloatingActionMode;->setType(I)V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v1, Lcom/android/internal/view/FloatingActionMode$3;

    invoke-direct {v1, p0}, Lcom/android/internal/view/FloatingActionMode$3;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050338

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/FloatingActionMode;->mBottomAllowance:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mDisplaySize:Landroid/graphics/Point;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V

    return-void
.end method

.method private static intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isContentRectWithinBounds()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mContext:Landroid/content/Context;

    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/view/FloatingActionMode;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    aget v5, v5, v8

    iget-object v6, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/internal/view/FloatingActionMode;->mDisplaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/internal/view/FloatingActionMode;->mDisplaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Lcom/android/internal/view/FloatingActionMode;->intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Lcom/android/internal/view/FloatingActionMode;->intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    :goto_0
    new-instance v0, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-static {v3, v2}, Lcom/android/internal/view/FloatingActionMode;->intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    and-int/2addr v1, v3

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isViewStillActive()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    :cond_0
    return v0
.end method

.method private repositionToolbar()V
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    aget v3, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->isContentRectWithinBounds()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v1, v4}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/android/internal/view/FloatingActionMode;->mBottomAllowance:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v1, v8}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    invoke-virtual {p0}, Lcom/android/internal/view/FloatingActionMode;->getMovingOffDelay()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar;->setContentRect(Landroid/graphics/Rect;)Lcom/android/internal/widget/FloatingToolbar;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar;->updateLayout()Lcom/android/internal/widget/FloatingToolbar;

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v1, v8}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1
.end method

.method private reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->deactivate()V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->reset()V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    invoke-virtual {v0, p0}, Landroid/view/ActionMode$Callback2;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hide(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDefaultActionModeHideDuration()J

    move-result-wide p1

    :cond_0
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setHideRequested(Z)V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public invalidate()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p0, v2}, Landroid/view/ActionMode$Callback2;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->isMovingStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/FloatingActionMode;->invalidateContentRect()V

    :cond_1
    return-void
.end method

.method public invalidateContentRect()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->repositionToolbar()V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method synthetic lambda$-com_android_internal_view_FloatingActionMode_5690(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setWindowFocused(Z)V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/FloatingToolbar;->setMenu(Landroid/view/Menu;)Lcom/android/internal/widget/FloatingToolbar;

    move-result-object v0

    new-instance v1, Lcom/android/internal/view/-$Lambda$IoKM3AcgDw3Ok5aFi0zlym2p3IA;

    invoke-direct {v1, p0}, Lcom/android/internal/view/-$Lambda$IoKM3AcgDw3Ok5aFi0zlym2p3IA;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/android/internal/widget/FloatingToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    new-instance v0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {v0, v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;-><init>(Lcom/android/internal/widget/FloatingToolbar;)V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->activate()V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 0

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public updateViewLocationInWindow()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    aget v3, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v1, v7}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    aget v3, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->isContentRectWithinBounds()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/view/FloatingActionMode;->getMovingOffDelay()I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->repositionToolbar()V

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    aget v2, v2, v6

    aput v2, v1, v6

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    aget v2, v2, v7

    aput v2, v1, v7

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
