.class public abstract Lcom/android/launcher2/QuickView;
.super Landroid/widget/FrameLayout;
.source "QuickView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/QuickView$Animate;,
        Lcom/android/launcher2/QuickView$QuickViewInfoProvider;
    }
.end annotation


# static fields
.field public static final ANIMATION_FADE_TIME:I = 0xfa

.field public static final ANIMATION_GRIDIN_TIME:I = 0x12c

.field public static final ANIMATION_GRIDOUT_TIME:I = 0x12c

.field public static final ANIMATION_IN_TIME:I = 0x14d

.field public static final ANIMATION_OUT_TIME:I = 0x14d

.field protected static final ANIMATION_STATE_CLOSE_DONE:I = 0x8

.field protected static final ANIMATION_STATE_CLOSE_RUNNING:I = 0x4

.field protected static final ANIMATION_STATE_CLOSE_STARTING:I = 0x3

.field protected static final ANIMATION_STATE_DELETE_DROP_DONE:I = 0x10

.field protected static final ANIMATION_STATE_DELETE_DROP_RUNNING:I = 0x12

.field protected static final ANIMATION_STATE_DELETE_DROP_STARTING:I = 0x11

.field protected static final ANIMATION_STATE_GRID_CLOSE_RUNNING:I = 0xf

.field protected static final ANIMATION_STATE_GRID_CLOSE_STARTING:I = 0xe

.field protected static final ANIMATION_STATE_GRID_OPEN_DONE:I = 0xd

.field protected static final ANIMATION_STATE_GRID_OPEN_RUNNING:I = 0xc

.field protected static final ANIMATION_STATE_GRID_OPEN_STARTING:I = 0xb

.field protected static final ANIMATION_STATE_OPEN_DONE:I = 0x7

.field protected static final ANIMATION_STATE_OPEN_NONE:I = 0xa

.field protected static final ANIMATION_STATE_OPEN_RUNNING:I = 0x2

.field protected static final ANIMATION_STATE_OPEN_STARTING:I = 0x1

.field protected static final DEBUG:Z = true

.field static final INVALID_VALUE:I = -0x1

.field public static final PINCH_DISTANCE_DELTA:I = 0x32

.field protected static final SCALE_FACTOR:F = 1.15f

.field private static final TAG:Ljava/lang/String; = "QuickView"

.field static final TOUCH_STATE_DRAGGING:I = 0x2

.field static final TOUCH_STATE_REST:I = 0x0

.field static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static bgImageView:Landroid/widget/ImageView;

.field protected static mScaleFactor:F


# instance fields
.field protected mAniEngine:Lcom/android/launcher2/AnimateEngine;

.field protected mAnimationDeleteStartTime:J

.field protected mAnimationDropState:I

.field protected mAnimationDuration:I

.field protected mAnimationStartTime:J

.field protected mAnimationState:I

.field private mChangingOrientation:Z

.field protected mChildGapH:I

.field protected mChildRects:[Landroid/graphics/Rect;

.field protected mCurrentPage:I

.field protected mCurrentRects:[Landroid/graphics/Rect;

.field protected mDraftSlop:I

.field protected mDraggingDeleteView:Landroid/view/View;

.field protected mDraggingDeletpage:Lcom/android/launcher2/CellLayout;

.field protected mDraggingIndex:I

.field protected mDraggingView:Landroid/view/View;

.field protected mDualFirstBgImageView:Landroid/widget/ImageView;

.field protected mDualFirstCheckImageView:Landroid/widget/ImageView;

.field protected mDualFirstTextView:Landroid/widget/TextView;

.field protected mDualSecondBgImageView:Landroid/widget/ImageView;

.field protected mDualSecondCheckImageView:Landroid/widget/ImageView;

.field protected mDualSecondTextView:Landroid/widget/TextView;

.field protected mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

.field protected mEnabledChildAnimation:Z

.field protected mFinishRects:[Landroid/graphics/Rect;

.field protected mHomeZeroPageDualView:Landroid/widget/LinearLayout;

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mMultiTouchUsed:Z

.field private mOrientation:I

.field protected mOriginDragIndex:I

.field private mPanelHeightLand:I

.field private mPanelHeightPort:I

.field protected mPanelPadding:Landroid/graphics/Rect;

.field private mPanelWidthLand:I

.field private mPanelWidthPort:I

.field protected mPinchIndex:I

.field protected mPinchOutIndex:I

.field protected mPinchOutProcess:Z

.field protected mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

.field private final mScreenRect:Landroid/graphics/Rect;

.field protected mStartRects:[Landroid/graphics/Rect;

.field protected mStatusBarHeight:I

.field protected mTmpRect:Landroid/graphics/Rect;

.field protected mTouchPointDistance:I

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchedView:Landroid/view/View;

.field private mUpdateHitRect:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x7

    iput v1, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    iput v3, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/16 v1, 0x10

    iput v1, p0, Lcom/android/launcher2/QuickView;->mAnimationDropState:I

    iput-boolean v3, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    iput-boolean v3, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    iput-boolean v3, p0, Lcom/android/launcher2/QuickView;->mUpdateHitRect:Z

    iput-boolean v3, p0, Lcom/android/launcher2/QuickView;->mChangingOrientation:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/QuickView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mHomeZeroPageDualView:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mDualFirstCheckImageView:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mDualSecondCheckImageView:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mDualFirstBgImageView:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mDualSecondBgImageView:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mDualFirstTextView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mDualSecondTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mPanelWidthPort:I

    const v1, 0x7f0a00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mPanelHeightPort:I

    const v1, 0x7f0a0100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mPanelWidthLand:I

    const v1, 0x7f0a00f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mPanelHeightLand:I

    new-instance v1, Lcom/android/launcher2/AnimateEngine;

    invoke-direct {v1}, Lcom/android/launcher2/AnimateEngine;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/QuickView;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AnimateEngine;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickView;->setClickable(Z)V

    return-void
.end method

.method public static SetZeropageBGImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    sget-object v0, Lcom/android/launcher2/QuickView;->bgImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/launcher2/QuickView;->bgImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v0, Lcom/android/launcher2/QuickView;->bgImageView:Landroid/widget/ImageView;

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private clearDragVars()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    iput v1, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    iput v1, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    iput v1, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    return-void
.end method

.method private initDVFSHelper()V
    .locals 0

    return-void
.end method

.method private setAniRects([Landroid/graphics/Rect;II)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v18

    if-lez v18, :cond_0

    if-ltz p2, :cond_0

    move/from16 v0, p3

    move/from16 v1, p2

    if-gt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v18, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v18

    add-int/lit8 v6, v18, -0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getPage(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getPage(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_2

    move-object v12, v7

    :cond_2
    sget-boolean v18, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v18, :cond_7

    sub-int v18, p3, p2

    add-int/lit8 v16, v18, -0x1

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v18, v0

    const/16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a00fa

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a023f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0101

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a00f9

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v9, v8

    div-int/lit8 v18, v11, 0x2

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    move/from16 v20, v0

    add-int v19, v19, v20

    mul-int v19, v19, v16

    add-int v13, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a00fb

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mStatusBarHeight:I

    move/from16 v19, v0

    sub-int v14, v18, v19

    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/QuickView;->mStatusBarHeight:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportStatusBarMarginDisable()Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v15, 0x0

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v18

    if-nez v18, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    sget-boolean v18, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v18, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0128

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    add-int v13, v13, v18

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v18, v0

    const/16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v18, v0

    const/16 v19, 0xf

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    :cond_5
    aget-object v18, p1, p2

    add-int v19, v14, v15

    add-int v20, v13, v5

    add-int v21, v14, v4

    add-int v21, v21, v15

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    add-int/lit8 v10, p2, -0x1

    :goto_4
    if-ltz v10, :cond_d

    aget-object v18, p1, v10

    add-int/lit8 v19, v10, 0x1

    aget-object v19, p1, v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v18, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v18, :cond_c

    aget-object v18, p1, v10

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int v17, v18, v9

    :goto_5
    aget-object v18, p1, v10

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_7
    move/from16 v16, p2

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v18, v0

    const/16 v19, 0xf

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0272

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0273

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0215

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0213

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v9, v8

    div-int/lit8 v18, v11, 0x2

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    move/from16 v20, v0

    add-int v19, v19, v20

    mul-int v19, v19, v16

    add-int v13, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0214

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mStatusBarHeight:I

    move/from16 v19, v0

    sub-int v14, v18, v19

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getPage(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v4

    :goto_6
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    move/from16 v20, v0

    add-int v19, v19, v20

    mul-int v19, v19, v16

    add-int v13, v18, v19

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getPageHorizontalOffset()I

    move-result v9

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v4

    goto :goto_6

    :cond_b
    aget-object v18, p1, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v19, v13, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v20, v14, v20

    add-int v20, v20, v15

    add-int v21, v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v22, v14, v4

    add-int v22, v22, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int v22, v22, v23

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    :cond_c
    aget-object v18, p1, v10

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    sub-int v17, v18, v9

    goto/16 :goto_5

    :cond_d
    add-int/lit8 v10, p2, 0x1

    :goto_7
    move/from16 v0, p3

    if-ge v10, v0, :cond_0

    aget-object v18, p1, v10

    add-int/lit8 v19, v10, -0x1

    aget-object v19, p1, v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v18, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v18, :cond_e

    aget-object v18, p1, v10

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    sub-int v17, v18, v9

    :goto_8
    aget-object v18, p1, v10

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_e
    aget-object v18, p1, v10

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int v17, v18, v9

    goto :goto_8
.end method


# virtual methods
.method public cancelDrag()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const-string v0, "QuickView"

    const-string v1, "cancelDrag()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/QuickView;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->updateTags()V

    iput v3, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    iput v2, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    iput-object v4, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iput-object v4, p0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    iput v2, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    iput v2, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->invalidate()V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/QuickView;->mEnabledChildAnimation:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickView;->setVisibility(I)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    return-void
.end method

.method public closeGrid(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->isGridSelectMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawCloseAnimation()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v0, 0x14d

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawOpenAnimation(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    iput p2, p0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    return-void
.end method

.method public drawOpenNonAnimation()V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    return-void
.end method

.method protected drop(II)V
    .locals 5

    const v4, 0x7f0900a2

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    iget v0, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickView;->isValidTag(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickView;->swapScreen(I)V

    :goto_1
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v2}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v4, v0, v2}, Lcom/sec/dtl/launcher/Talk;->say(III)V

    goto :goto_0

    :cond_1
    const-string v1, "QuickView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid drop index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mDraggingIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickView;->swapScreen(I)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/dtl/launcher/Talk;->say(III)V

    goto :goto_0
.end method

.method protected endDrag()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/QuickView;->clearDragVars()V

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewDragEnd()V

    return-void
.end method

.method protected getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/QuickView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mPanelWidthLand:I

    iget v2, p0, Lcom/android/launcher2/QuickView;->mPanelHeightLand:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mPanelWidthPort:I

    iget v2, p0, Lcom/android/launcher2/QuickView;->mPanelHeightPort:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    return v0
.end method

.method public getDefaultZeroImg()Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageSetItem()Lcom/android/launcher2/ZeroPageListItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageSetItem()Lcom/android/launcher2/ZeroPageListItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageListItem;->getPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTouchState()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTouchedIndex(II)I
    .locals 6

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-nez v3, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v0, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getScrollX()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getScrollY()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected init(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    const v3, 0x7f0a00fd

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->removeAllViews()V

    invoke-direct {p0}, Lcom/android/launcher2/QuickView;->clearDragVars()V

    iput-object p1, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-direct {p0}, Lcom/android/launcher2/QuickView;->initDVFSHelper()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    const v1, 0x7f0a03bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mDraftSlop:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher2/QuickView;->mOrientation:I

    const v1, 0x7f0a00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    const v2, 0x7f0a00fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    const v2, 0x7f0a00fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    const v1, 0x7f0a02c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mStatusBarHeight:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickView;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    return-object v1
.end method

.method public isAnimStateOkayForClickEvents()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationDropState:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAnimating()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationDropState:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAvailableRect(Landroid/graphics/Rect;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/QuickView;->isAvailableRect(Landroid/graphics/Rect;I)Z

    move-result v0

    return v0
.end method

.method protected isAvailableRect(Landroid/graphics/Rect;I)Z
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChangingOrientation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/QuickView;->mChangingOrientation:Z

    return v0
.end method

.method public final isCloseAnimating()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGridSelectMenuOpened()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isValidTag(Ljava/lang/Object;)Z
.end method

.method protected onPinchOut()Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    iput-boolean v0, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    iget v0, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    iput v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->drawCloseAnimation()Z

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->postInvalidate()V

    const/4 v0, 0x1

    return v0
.end method

.method public open()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickView;->mEnabledChildAnimation:Z

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickView;->setScrollX(I)V

    return-void
.end method

.method public openGrid(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected referenceTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected reloadLayoutParameters()Landroid/widget/FrameLayout$LayoutParams;
    .locals 9

    const v8, 0x7f0a00fd

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/HomeScreenOptionMenu;->getScreenGridSelectMenu()Lcom/android/launcher2/HomeScreenGridSelectMenu;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    const v4, 0x7f0a03bd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    const v4, 0x7f0a03bc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/QuickView;->mDraftSlop:I

    iput-boolean v7, p0, Lcom/android/launcher2/QuickView;->mChangingOrientation:Z

    iput v1, p0, Lcom/android/launcher2/QuickView;->mOrientation:I

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->loadLayoutParameters()V

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->isActive()Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0a0215

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/QuickView;->mPanelWidthPort:I

    const v4, 0x7f0a0213

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/QuickView;->mPanelHeightPort:I

    const v4, 0x7f0a0272

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    :goto_0
    const v4, 0x7f0a0100

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/QuickView;->mPanelWidthLand:I

    const v4, 0x7f0a00f8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/QuickView;->mPanelHeightLand:I

    iget-object v4, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    const v5, 0x7f0a00fe

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    const v5, 0x7f0a00fc

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/launcher2/QuickView;->mOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/android/launcher2/QuickView;->mPanelWidthLand:I

    iget v5, p0, Lcom/android/launcher2/QuickView;->mPanelHeightLand:I

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_1
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->setZeroPageBgImage()V

    :cond_1
    iget v4, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    packed-switch v4, :pswitch_data_0

    :goto_2
    iput-object v6, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    iput-object v6, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    iput-object v6, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iput-boolean v7, p0, Lcom/android/launcher2/QuickView;->mUpdateHitRect:Z

    return-object v0

    :cond_2
    const v4, 0x7f0a0101

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/QuickView;->mPanelWidthPort:I

    const v4, 0x7f0a00f9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/QuickView;->mPanelHeightPort:I

    const v4, 0x7f0a00fa

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/android/launcher2/QuickView;->mPanelWidthPort:I

    iget v5, p0, Lcom/android/launcher2/QuickView;->mPanelHeightPort:I

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :pswitch_0
    const/4 v4, 0x7

    iput v4, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    goto :goto_2

    :pswitch_1
    iget-object v4, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v4}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewCloseAnimationStarted()V

    :pswitch_2
    const/16 v4, 0x8

    iput v4, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    iget-object v4, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v4}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewCloseAnimationCompleted()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAnimateOpenNone()V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    return-void
.end method

.method protected setCloseEndRect(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getChildCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    array-length v2, v2

    if-eq v2, v0, :cond_1

    :cond_0
    new-array v2, v0, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    invoke-direct {p0, v2, p1, v0}, Lcom/android/launcher2/QuickView;->setAniRects([Landroid/graphics/Rect;II)V

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    return-void
.end method

.method protected setOpenStartRect(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getChildCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    array-length v2, v2

    if-eq v2, v0, :cond_1

    :cond_0
    new-array v2, v0, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    invoke-direct {p0, v2, p1, v0}, Lcom/android/launcher2/QuickView;->setAniRects([Landroid/graphics/Rect;II)V

    return-void
.end method

.method public setZeroPageBgImage()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getDefaultZeroImg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickView;->bgImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Launcher;->updateCaptureFile(IZ)V

    :cond_0
    return-void
.end method

.method public setZeroPageBgImageFile(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->getDefaultZeroImg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickView;->bgImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/launcher2/Launcher;->iszerofile:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/launcher2/QuickView;->bgImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v1, Lcom/android/launcher2/QuickView;->bgImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/launcher2/QuickView;->bgImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v1, Lcom/android/launcher2/QuickView;->bgImageView:Landroid/widget/ImageView;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected startDrag(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    iget v0, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    iput v0, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    iput-object p1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/launcher2/QuickView;->mScaleFactor:F

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->invalidate()V

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewDragStart()V

    return-void
.end method

.method protected abstract swapScreen(I)V
.end method

.method protected updateParamsIfNeeded(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/QuickView;->mUpdateHitRect:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickView;->getHitRect(Landroid/graphics/Rect;)V

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/QuickView;->mChangingOrientation:Z

    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher2/QuickView;->mUpdateHitRect:Z

    return-void
.end method

.method protected abstract updateTags()V
.end method
