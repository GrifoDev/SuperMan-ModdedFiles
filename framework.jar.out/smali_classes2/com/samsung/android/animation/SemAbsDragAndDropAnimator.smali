.class public abstract Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;
.super Ljava/lang/Object;
.source "SemAbsDragAndDropAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;,
        Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;,
        Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;,
        Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;
    }
.end annotation


# static fields
.field static final BITMAP_ALPHA:I = 0xb3

.field static final DND_AUTO_SCROLL_DELTA_VALUE:I = 0x7

.field static final DND_AUTO_SCROLL_END:I = 0x2

.field static final DND_AUTO_SCROLL_FRAME_DELAY:I = 0xa

.field static final DND_AUTO_SCROLL_NONE:I = 0x0

.field static final DND_AUTO_SCROLL_START:I = 0x1

.field static final DND_TOUCH_STATUS_MOVING:I = 0x2

.field static final DND_TOUCH_STATUS_NON:I = 0x0

.field static final DND_TOUCH_STATUS_START:I = 0x1

.field static final DRAGGING_RELEASE_ANIM_DURATION_MULTIPLICATOR:F = 0.7f

.field static final DRAG_HANDLE_FADE_DURATION:I = 0xc8

.field static EMPTY_STATE_SET:[I = null

.field static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final INVALID_POINTER_ID:I = -0x1

.field static PRESSED_STATE_SET:[I = null

.field static final SCALEUPDOWNANIM_RESISTANCE:F = 15.0f

.field static final SINE_IN_OUT_70:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mActivePointerId:I

.field mAutoScrollBottomDelta:I

.field mAutoScrollListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;

.field mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

.field mAutoScrollTopDelta:I

.field mCanvasSaveCount:I

.field mContext:Landroid/content/Context;

.field private final mDensity:F

.field mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

.field mDndAutoScrollMode:I

.field mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

.field mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

.field mDndMode:Z

.field mDndTouchMode:I

.field mDndTouchOffsetX:I

.field mDndTouchOffsetY:I

.field mDndTouchX:I

.field mDndTouchY:I

.field mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

.field mDragGrabHandlePadding:Landroid/graphics/Rect;

.field mDragGrabHandlePosGravity:I

.field mDragHandleAlpha:I

.field mDragPos:I

.field mDragView:Landroid/view/View;

.field mDragViewBitmap:Landroid/graphics/Bitmap;

.field mDragViewBitmapAlpha:I

.field mDragViewBitmapPaint:Landroid/graphics/Paint;

.field mDragViewBitmapTranslateX:I

.field mDragViewBitmapTranslateY:I

.field mDragViewRect:Landroid/graphics/Rect;

.field mDropDonePending:Z

.field mFirstDragPos:I

.field mFirstTouchX:I

.field mFirstTouchY:I

.field mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

.field mListItemSelectionAnimating:Z

.field mRetainFirstDragViewPos:I

.field mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

.field mTempEvent:Landroid/view/MotionEvent;

.field mTempRect:Landroid/graphics/Rect;

.field mTempTrans:Landroid/view/animation/Transformation;

.field mUserSetDragItemBitmap:Z

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDndModeInternal(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    const v3, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const-class v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v6

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->PRESSED_STATE_SET:[I

    new-array v0, v6, [I

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->EMPTY_STATE_SET:[I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->SINE_IN_OUT_70:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    const/4 v4, -0x1

    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mActivePointerId:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragHandleAlpha:I

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mListItemSelectionAnimating:Z

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mUserSetDragItemBitmap:Z

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDropDonePending:Z

    iput v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateX:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateY:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mCanvasSaveCount:I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SemDragAndDropGridAnimator constructor arguments cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-direct {v0, p2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->itemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    iput v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    iput v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    iput v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchX:I

    iput v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    iput v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchOffsetX:I

    iput v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchOffsetY:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchMode:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDensity:F

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    const/16 v0, 0xb3

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapAlpha:I

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x15

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePosGravity:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    new-instance v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;-><init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDensity:F

    const/high16 v1, 0x40e00000    # 7.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollTopDelta:I

    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDensity:F

    const/high16 v1, -0x3f200000    # -7.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollBottomDelta:I

    return-void
.end method

.method private setDndModeInternal(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->removeAll()V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndState()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method activatedByLongPress()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAnimatorUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    if-ne p2, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    add-int/lit8 v1, p1, -0x1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    return v0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    return v0

    :cond_2
    return p2
.end method

.method public getDragGrabHandlePaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getDragGrabHandlePaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getDragGrabHandlePaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getDragGrabHandlePaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    return v0
.end method

.method abstract reorderIfNeeded()V
.end method

.method resetDndPositionValues()V
    .locals 2

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    return-void
.end method

.method resetDndState()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndTouchValuesAndBitmap()V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndPositionValues()V

    return-void
.end method

.method resetDndTouchValuesAndBitmap()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchMode:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchX:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstTouchX:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstTouchY:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateX:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateY:I

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;

    return-void
.end method

.method public setDragAndDropEventListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    return-void
.end method

.method public setDragGrabHandleDrawable(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDragGrabHandlePadding(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public setDragGrabHandlePositionGravity(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePosGravity:I

    return-void
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mUserSetDragItemBitmap:Z

    return-void
.end method

.method public setDragViewAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapAlpha:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "You must specify dndController to activate Drag&Drop."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDndModeInternal(Z)V

    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    if-eq v2, p1, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    if-nez v0, :cond_3

    invoke-direct {p0, v5}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDndModeInternal(Z)V

    iput v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragHandleAlpha:I

    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;-><init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;-><init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v0, :cond_5

    sget-object v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void

    :cond_5
    sget-object v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public speakDescriptionForAccessibility()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAnimatorUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10408df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10408e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method speakDragReleaseForAccessibility(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x10408e1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method speakDragStartForAccessibility(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x10408e3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocus()V

    return-void
.end method

.method speakNotDraggableForAccessibility(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x10408e2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
