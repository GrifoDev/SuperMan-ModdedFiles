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
    .param p1, "dndMode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDndModeInternal(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    const v3, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    .line 28
    const-class v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v6

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->PRESSED_STATE_SET:[I

    .line 49
    new-array v0, v6, [I

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->EMPTY_STATE_SET:[I

    .line 120
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->SINE_IN_OUT_70:Landroid/view/animation/PathInterpolator;

    .line 123
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 124
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mActivePointerId:I

    .line 72
    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragHandleAlpha:I

    .line 113
    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mListItemSelectionAnimating:Z

    .line 114
    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mUserSetDragItemBitmap:Z

    .line 116
    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDropDonePending:Z

    .line 119
    iput v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    .line 129
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateX:I

    .line 130
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateY:I

    .line 132
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mCanvasSaveCount:I

    .line 141
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SemDragAndDropGridAnimator constructor arguments cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    .line 146
    iput-object p2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    .line 148
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-direct {v0, p2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    .line 149
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->itemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    .line 150
    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    .line 152
    iput v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    .line 153
    iput v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    .line 154
    iput v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchX:I

    .line 155
    iput v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    .line 156
    iput v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchOffsetX:I

    .line 157
    iput v3, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchOffsetY:I

    .line 159
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchMode:I

    .line 161
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDensity:F

    .line 163
    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewRect:Landroid/graphics/Rect;

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    .line 167
    const/16 v0, 0xb3

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapAlpha:I

    .line 169
    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 170
    const/16 v0, 0x15

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePosGravity:I

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    .line 173
    new-instance v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;-><init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    .line 174
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDensity:F

    const/high16 v1, 0x40e00000    # 7.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollTopDelta:I

    .line 175
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDensity:F

    const/high16 v1, -0x3f200000    # -7.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollBottomDelta:I

    .line 140
    return-void
.end method

.method private setDndModeInternal(Z)V
    .locals 1
    .param p1, "dndMode"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    .line 247
    if-nez p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->removeAll()V

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndState()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 244
    return-void
.end method


# virtual methods
.method activatedByLongPress()Z
    .locals 1

    .prologue
    .line 500
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
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 478
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 479
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    if-ne p2, v0, :cond_0

    .line 480
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 482
    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 483
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    add-int/lit8 v1, p1, -0x1

    if-gt v0, v1, :cond_1

    .line 484
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    return v0

    .line 485
    :cond_1
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 488
    :cond_2
    return p2
.end method

.method public getDragGrabHandlePaddingBottom()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0

    .line 412
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getDragGrabHandlePaddingLeft()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0

    .line 373
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getDragGrabHandlePaddingRight()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0

    .line 399
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getDragGrabHandlePaddingTop()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0

    .line 386
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    return-object v0

    .line 263
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    return v0
.end method

.method abstract reorderIfNeeded()V
.end method

.method resetDndPositionValues()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 440
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    .line 441
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    .line 442
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    .line 439
    return-void
.end method

.method resetDndState()V
    .locals 0

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndTouchValuesAndBitmap()V

    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndPositionValues()V

    .line 416
    return-void
.end method

.method resetDndTouchValuesAndBitmap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    .line 422
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchMode:I

    .line 424
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchX:I

    .line 425
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    .line 426
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstTouchX:I

    .line 427
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstTouchY:I

    .line 428
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateX:I

    .line 429
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateY:I

    .line 430
    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    .line 431
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 433
    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 435
    :cond_0
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    .line 436
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 421
    return-void
.end method

.method public setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V
    .locals 0
    .param p1, "autoScrollListener"    # Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;

    .line 311
    return-void
.end method

.method public setDragAndDropEventListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;)V
    .locals 0
    .param p1, "dndListener"    # Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    .line 301
    return-void
.end method

.method public setDragGrabHandleDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    return-void
.end method

.method public setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 332
    return-void
.end method

.method public setDragGrabHandlePadding(IIII)V
    .locals 1
    .param p1, "paddingLeft"    # I
    .param p2, "paddingTop"    # I
    .param p3, "paddingRight"    # I
    .param p4, "paddingBottom"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 358
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 359
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 360
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 355
    :cond_0
    return-void
.end method

.method public setDragGrabHandlePositionGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 343
    iput p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePosGravity:I

    .line 342
    return-void
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "item"    # Landroid/graphics/Bitmap;

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 280
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mUserSetDragItemBitmap:Z

    .line 273
    return-void
.end method

.method public setDragViewAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 291
    iput p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapAlpha:I

    .line 292
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 289
    :cond_0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 6
    .param p1, "dndMode"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    if-nez v2, :cond_0

    .line 194
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "You must specify dndController to activate Drag&Drop."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 198
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDndModeInternal(Z)V

    .line 199
    return-void

    .line 203
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    if-eq v2, p1, :cond_4

    .line 204
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    .line 205
    .local v0, "fadeOut":Z
    if-nez v0, :cond_3

    .line 206
    invoke-direct {p0, v5}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDndModeInternal(Z)V

    .line 207
    iput v4, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragHandleAlpha:I

    .line 209
    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 210
    .local v1, "va":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 211
    new-instance v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;-><init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 223
    new-instance v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;-><init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 237
    if-eqz v0, :cond_5

    sget-object v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 192
    .end local v0    # "fadeOut":Z
    .end local v1    # "va":Landroid/animation/ValueAnimator;
    :cond_4
    return-void

    .line 238
    .restart local v0    # "fadeOut":Z
    .restart local v1    # "va":Landroid/animation/ValueAnimator;
    :cond_5
    sget-object v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public speakDescriptionForAccessibility()V
    .locals 3

    .prologue
    .line 505
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

    .line 506
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10408dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10408de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method speakDragReleaseForAccessibility(I)V
    .locals 5
    .param p1, "itemPosition"    # I

    .prologue
    .line 516
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

    const v3, 0x10408df

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 514
    return-void
.end method

.method speakDragStartForAccessibility(I)V
    .locals 5
    .param p1, "itemPosition"    # I

    .prologue
    .line 525
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

    .line 528
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 523
    return-void
.end method

.method speakNotDraggableForAccessibility(I)V
    .locals 5
    .param p1, "itemPosition"    # I

    .prologue
    .line 520
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

    const v3, 0x10408e0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 519
    return-void
.end method
