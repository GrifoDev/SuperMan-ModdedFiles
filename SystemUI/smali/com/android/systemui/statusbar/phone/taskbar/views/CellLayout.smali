.class public Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;
.super Landroid/widget/FrameLayout;
.source "CellLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;
.implements Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$1;
    }
.end annotation


# instance fields
.field private DEBUGGABLE:Z

.field public mAnimateChildInstantly:Z

.field private mCellHeight:I

.field private mCellWidth:I

.field mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

.field private mCloseLayoutGapPosted:Z

.field private mCountX:I

.field private mCountY:I

.field protected mDisabled:Z

.field protected final mDragCell:[I

.field mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

.field mDragOutline:Landroid/graphics/Bitmap;

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Rect;

.field public mDragging:Z

.field protected mDrawDragOutlines:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mEmptyCell:I

.field private mForceReorder:Z

.field private mGapX:I

.field private mGapY:I

.field protected mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

.field protected mIsLayoutRTL:Z

.field protected mIsOverScrollViewSize:Z

.field private mLastVisualize:[I

.field private mOnDragListener:Landroid/view/View$OnDragListener;

.field private mPreviousTargetCell:I

.field private mReOrderingEnabled:Z

.field private mReorderAlarm:Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;

.field mReorderAlarmListener:Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm$OnAlarmListener;

.field protected mReorderImmediately:Z

.field private mReorderOnItemDeleted:Z

.field private mShadowOffset:F

.field mTargetCell:I

.field private final mTmpPoint:[I

.field protected final mTmpXY:[I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)[Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCloseLayoutGapPosted:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->DEBUGGABLE:Z

    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTmpXY:[I

    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTmpPoint:[I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragging:Z

    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragCell:[I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDrawDragOutlines:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDisabled:Z

    const/4 v12, 0x4

    new-array v12, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineAlphas:[F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    new-array v12, v12, [Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineAnims:[Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineCurrent:I

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    new-instance v12, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;

    invoke-direct {v12}, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderAlarm:Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;

    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mEmptyCell:I

    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mPreviousTargetCell:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReOrderingEnabled:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderOnItemDeleted:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderImmediately:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCloseLayoutGapPosted:Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    filled-new-array {v12, v13, v14, v15}, [I

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mLastVisualize:[I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mAnimateChildInstantly:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mForceReorder:Z

    new-instance v12, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderAlarmListener:Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm$OnAlarmListener;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mShadowOffset:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->setWillNotDraw(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    const v12, 0x7f0701b5

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCellWidth:I

    const v12, 0x7f0701b4

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCellHeight:I

    const v12, 0x7f0701b2

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapX:I

    const v12, 0x7f0701b3

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapY:I

    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x40200000    # 2.5f

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragCell:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragCell:[I

    const/4 v14, -0x1

    const/4 v15, 0x1

    aput v14, v13, v15

    const/4 v13, -0x1

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    if-ge v5, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v13, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x384

    const/4 v4, 0x0

    const/high16 v11, 0x433f0000    # 191.0f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineAlphas:[F

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/util/Arrays;->fill([FF)V

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineAnims:[Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    array-length v12, v12

    if-ge v5, v12, :cond_2

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    const-wide/16 v12, 0x384

    const/4 v14, 0x0

    const/high16 v15, 0x433f0000    # 191.0f

    invoke-direct {v2, v12, v13, v14, v15}, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;-><init>(JFF)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move v10, v5

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2, v10}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;I)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineAnims:[Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    aput-object v2, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    new-instance v12, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapY:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->setCellDimensions(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->setCellLayout(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->setVisibility(I)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v7, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->setCellLayout(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapY:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->setCellDimensions(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0701b7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v8, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 17

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/widget/TextView;

    if-nez v13, :cond_0

    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/widget/ImageView;

    if-eqz v13, :cond_6

    :cond_0
    if-eqz p4, :cond_6

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/widget/TextView;

    if-eqz v13, :cond_4

    move-object/from16 v13, p1

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/4 v13, 0x0

    array-length v15, v14

    :goto_0
    if-ge v13, v15, :cond_1

    aget-object v3, v14, v13

    if-eqz v3, :cond_3

    move-object v5, v3

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v13, 0x7f0b0020

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    add-int v13, v13, p3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    add-int v14, v14, p3

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v0, p3

    int-to-float v13, v0

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    int-to-float v14, v10

    add-float/2addr v13, v14

    move/from16 v0, p3

    int-to-float v14, v0

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v13, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v14, 0xf0

    if-ne v13, v14, :cond_5

    const v13, 0x3f59999a    # 0.85f

    const v14, 0x3f59999a    # 0.85f

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/widget/ImageView;

    if-eqz v13, :cond_1

    move-object/from16 v6, p1

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;

    invoke-direct {v5, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v13, :cond_8

    move-object/from16 v12, p1

    check-cast v12, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getExtendedPaddingTop()I

    move-result v13

    add-int/lit8 v13, v13, -0x3

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getLayout()Landroid/text/Layout;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getTextVisible()Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setTextVisible(Z)V

    const/4 v9, 0x1

    :cond_7
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    div-int/lit8 v14, p3, 0x2

    add-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    div-int/lit8 v15, p3, 0x2

    add-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v13, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v13}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual/range {p1 .. p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v9, :cond_2

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setTextVisible(Z)V

    goto :goto_3

    :cond_8
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/widget/TextView;

    if-eqz v13, :cond_7

    move-object/from16 v11, p1

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v13

    invoke-virtual {v11}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4
.end method

.method private forceRealTimeReorder()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mForceReorder:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->realTimeReorder()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mForceReorder:Z

    return-void
.end method

.method private invalidateVisualize()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mLastVisualize:[I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v1, v0, v2

    return-void
.end method

.method private removeDragGuideView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showDragGuideView(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->udpateGuideCursor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->setChildCount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->invalidate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private udpateDragGuideCursor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->udpateGuideCursor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragGuideView:Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateItemToNewPosition(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;I)V
    .locals 10

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-wide v8, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->setItemLocation(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;IIIIIJ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getChildrenLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v9, 0x0

    const/16 v7, 0xe6

    move-object v4, p0

    move v6, p2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->animateChildToPosition(Landroid/view/View;IIIZ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->addItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;Z)Z

    move-result v0

    return v0
.end method

.method public animateChildToPosition(Landroid/view/View;IIIZ)Z
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getChildrenLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    if-ltz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "[DS]CellLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "animateChildToPosition :: lp.s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->screen:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  pos="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eq v6, v7, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Tried to animate a item to an occupied cell. Failed to swap item positions because the inbound item belonged to a different cell layout."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;

    iget v6, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->screen:I

    iput v6, v4, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->screen:I

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    :cond_2
    iput p2, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->screen:I

    if-eqz p5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return v9

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    instance-of v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v6, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iput p2, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    :cond_4
    invoke-virtual {p0, p1, p3, v9, v9}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->animateIcon(Landroid/view/View;IZZ)Z

    move-result v6

    return v6

    :cond_5
    return v8
.end method

.method public animateIcon(Landroid/view/View;IZZ)Z
    .locals 11

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mAnimateChildInstantly:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getDispatchEventLayer()Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p4}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    const/4 v1, 0x0

    return v1

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v4, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v1, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getAnimGroup()I

    move-result v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-eqz p4, :cond_3

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->sRootLocationOnScreen:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    neg-int v2, v2

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->sRootLocationOnScreen:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    neg-int v6, v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->enableClipping()V

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method cancelRealTimeReorder()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderAlarm:Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->cancelAlarm()V

    return-void
.end method

.method cellToPoint(II[I)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getMeasuredWidth()I

    move-result v4

    add-int v5, v1, v0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCellWidth:I

    iget v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapX:I

    add-int/2addr v6, v7

    mul-int/2addr v6, p1

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    aput v4, p3, v8

    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapY:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v3

    const/4 v5, 0x1

    aput v4, p3, v5

    return-void

    :cond_0
    add-int v4, v1, v0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapX:I

    add-int/2addr v5, v6

    mul-int/2addr v5, p1

    add-int/2addr v4, v5

    aput v4, p3, v8

    goto :goto_0
.end method

.method public clearDragOutlines()V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->invalidateVisualize()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineCurrent:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineAnims:[Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;->animateOut()V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineAnims:[Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineCurrent:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    return-void
.end method

.method protected closeLayoutGap()V
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "[DS]CellLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "closeLayoutGap :: getItemCount()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getItemCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  mHiddenItem="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->hasAnimatingChild()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCloseLayoutGapPosted:Z

    if-eqz v6, :cond_1

    return-void

    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCloseLayoutGapPosted:Z

    new-instance v6, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$4;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)V

    const-wide/16 v8, 0x14

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getItemCount()I

    move-result v6

    if-nez v6, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->existsEmptyCell()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->findFirstEmptySpace()I

    move-result v1

    if-ne v1, v10, :cond_6

    :cond_4
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getItemCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->realTimeReorder()V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->findAllOccupiedCells()[Z

    move-result-object v4

    const/4 v5, -0x1

    add-int/lit8 v3, v1, 0x1

    :goto_1
    array-length v6, v4

    if-ge v3, v6, :cond_7

    aget-boolean v6, v4, v3

    if-eqz v6, :cond_8

    move v5, v3

    :cond_7
    if-eq v5, v1, :cond_4

    if-eq v5, v10, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getChildrenLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->updateItemToNewPosition(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;I)V

    goto :goto_0

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    instance-of v4, p1, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, p3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->obtain()Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;

    move-result-object v4

    invoke-virtual {v4, v0, p2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/utils/HolographicOutlineHelper;->createDragOutlineForIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    :cond_1
    invoke-virtual {p2, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_HIERARCHY()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[DS]CellLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[DRAG_HIERARCHY]dispatchDragEvent :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-interface {v1, v5, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v4

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    :cond_3
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mShadowOffset:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDrawDragOutlines:Z

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineAlphas:[F

    aget v0, v4, v2

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineAnims:[Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method existsEmptyCell()Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getItemCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderOnItemDeleted:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountX:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountY:I

    mul-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method findAllOccupiedCells()[Z
    .locals 8

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountX:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountY:I

    mul-int v0, v5, v6

    new-array v3, v0, [Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getChildrenLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPosition()I

    move-result v4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "[DS]CellLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "findAllOccupied :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  pos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ltz v4, :cond_0

    if-ge v4, v0, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderOnItemDeleted:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mEmptyCell:I

    if-eq v4, v5, :cond_0

    :cond_2
    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public findDropLocation(IIILjava/lang/Object;)V
    .locals 10

    if-eqz p4, :cond_1

    move-object v1, p4

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    :goto_0
    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->dragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getChildrenLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->getItem()Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->hasItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    new-array v6, v8, [I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->getItem()Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPosition()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getCellXFromPos(I)I

    move-result v8

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getCellYFromPos(I)I

    move-result v9

    invoke-virtual {p0, v8, v9, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->cellToPoint(II[I)V

    :try_start_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->getShadow()Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->getTouchOffset()[I

    move-result-object v4

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x0

    aget v9, v4, v9

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapX:I

    sub-int p1, v8, v9

    :goto_2
    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v4, v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapY:I

    add-int p2, v8, v9

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x0

    aget v9, v4, v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapX:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int p1, v8, v9

    goto :goto_2

    :catch_0
    move-exception v2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    aget v8, v6, v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapX:I

    sub-int p1, v8, v9

    :goto_3
    const/4 v8, 0x1

    aget v8, v6, v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapY:I

    add-int p2, v8, v9

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    aget v8, v6, v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapX:I

    add-int p1, v8, v9

    goto :goto_3

    :pswitch_1
    const/4 v8, 0x2

    new-array v7, v8, [I

    invoke-virtual {p0, p1, p2, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->pointToCellExact(II[I)V

    const/4 v8, 0x0

    aget v8, v7, v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getItemCount()I

    move-result v3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    if-le v8, v3, :cond_4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    :cond_4
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    if-ne v8, p0, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iget v8, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mScreen:I

    iget v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    if-ge v8, v9, :cond_5

    iget v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    if-gt v8, v3, :cond_5

    iget v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iget v8, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mScreen:I

    iget v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    if-ne v8, v9, :cond_6

    const/4 v0, -0x1

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->udpateDragGuideCursor(I)V

    goto/16 :goto_1

    :cond_7
    iget v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->udpateDragGuideCursor(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public findDropLocation(Landroid/view/DragEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->findDropLocation(IIILjava/lang/Object;)V

    return-void
.end method

.method public findFirstEmptySpace()I
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "[DS]CellLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "findFirstEmptySpace is mHiddenItem = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPosition()I

    move-result v3

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->findAllOccupiedCells()[Z

    move-result-object v2

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-boolean v3, v2, v1

    if-nez v3, :cond_4

    move v0, v1

    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "[DS]CellLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "findFirstEmptySpace = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCellWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCellWidth:I

    return v0
.end method

.method getCellXFromPos(I)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountX:I

    rem-int v0, p1, v0

    return v0
.end method

.method getCellYFromPos(I)I
    .locals 4

    int-to-double v0, p1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountX:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getChildrenLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    return-object v0
.end method

.method public getContainerType()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method getCountX()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountX:I

    return v0
.end method

.method getCountY()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountY:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getDesiredHeightForRows(I)I

    move-result v0

    return v0
.end method

.method public getDesiredHeightForRows(I)I
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCellHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapY:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingBottom()I

    move-result v2

    add-int v0, v1, v2

    if-lez p1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapY:I

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getDesiredWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountX:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getDesiredWidthForColumns(I)I

    move-result v0

    return v0
.end method

.method public getDesiredWidthForColumns(I)I
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapX:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    add-int v3, v4, v0

    if-lez p1, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapX:I

    sub-int/2addr v3, v4

    :cond_0
    return v3
.end method

.method protected getDispatchEventLayer()Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    return-object v0
.end method

.method public getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemById(J)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getItemById(J)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getViewForItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->buildView(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getWidthGap()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapX:I

    return v0
.end method

.method hasAnimatingChild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hide(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]CellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hide item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDisabled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->setItemVisibility(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    return-void
.end method

.method public isReOrderingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReOrderingEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onDragEnter()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragging:Z

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 12

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_HIERARCHY()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]CellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[DRAG_HIERARCHY]onDragEvent :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "[DS]CellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->toStringDragEvnet(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " :: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iget-wide v8, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mId:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  itemType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  dragOrigin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->isReOrderingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->findDropLocation(Landroid/view/DragEvent;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_4
    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->dragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    goto :goto_0

    :pswitch_0
    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    if-ne v0, p0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->onDragEnter()V

    :cond_5
    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    if-ne v0, p0, :cond_6

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutline:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutline:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    new-array v3, v0, [I

    iget v0, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mOriginalScreen:I

    const/4 v1, 0x0

    aput v0, v3, v1

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, v3, v1

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutline:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountX:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->showDragGuideView(I)V

    const/4 v0, 0x1

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderAlarm:Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->cancelAlarm()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->udpateDragGuideCursor(I)V

    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mPreviousTargetCell:I

    const/4 v0, 0x1

    return v0

    :pswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDisabled:Z

    if-eqz v0, :cond_7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0

    :cond_7
    const/4 v0, 0x1

    return v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderAlarm:Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->cancelAlarm()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->isReOrderingEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "rearrange_menu_icons_not_allowed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->onDragExit()V

    const/4 v0, 0x0

    return v0

    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->forceRealTimeReorder()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getCellXFromPos(I)I

    move-result v6

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getCellYFromPos(I)I

    move-result v7

    iget v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->getItem()Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getSpanX()I

    move-result v8

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getSpanY()I

    move-result v9

    move-object v5, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->moveItemTo(Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;IIIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->onDrop()V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->onEnd()V

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :pswitch_5
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->onEnd()V

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->dragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->dragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->onEnd()V

    :cond_b
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->dragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderAlarm:Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->cancelAlarm()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->isReOrderingEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    iget-boolean v0, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mRevertDrag:Z

    if-eqz v0, :cond_d

    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    if-ne p0, v0, :cond_d

    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->hide(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    iget v0, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mOriginalScreen:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->realTimeReorder(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->show(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutline:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->clearDragOutlines()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->onDragExit()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->removeDragGuideView()V

    const/4 v0, 0x1

    return v0

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->closeLayoutGap()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method onDragExit()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragging:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragCell:[I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragCell:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineAnims:[Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;->animateOut()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineAnims:[Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineCurrent:I

    return-void
.end method

.method public onFailedDrop(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]CellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFailedDrop :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderAlarm:Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->cancelAlarm()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingStart()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingTop()I

    move-result v5

    sub-int v6, p4, p2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingEnd()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v7, p5, p3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getDesiredWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getDesiredHeight()I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    move/from16 v0, v16

    if-le v0, v15, :cond_3

    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsOverScrollViewSize:Z

    if-nez v17, :cond_4

    const/high16 v17, -0x80000000

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsOverScrollViewSize:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move/from16 v16, v15

    :cond_0
    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    if-nez v11, :cond_6

    const/high16 v11, -0x80000000

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->setMeasuredDimension(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingLeft()I

    move-result v18

    sub-int v18, v16, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingRight()I

    move-result v19

    sub-int v5, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingTop()I

    move-result v18

    sub-int v18, v10, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingBottom()I

    move-result v19

    sub-int v3, v18, v19

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getChildCount()I

    move-result v9

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v9, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v13}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v8

    invoke-virtual {v13}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v7

    sub-int v18, v5, v8

    sub-int v18, v18, v7

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v6, v4}, Landroid/view/View;->measure(II)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    const/16 v18, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v18

    if-eqz v18, :cond_5

    move/from16 v0, v16

    if-le v0, v15, :cond_5

    const-string/jumbo v18, "[DS]CellLayout"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ".onMeasure. Parent maxWidth: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "; setting to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move/from16 v0, v16

    if-ge v0, v15, :cond_0

    move/from16 v16, v15

    goto/16 :goto_1

    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v18

    if-eqz v18, :cond_7

    if-le v10, v14, :cond_7

    const-string/jumbo v18, "[DS]CellLayout"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ".onMeasure. Parent maxHeight: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "; setting to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    if-ne v11, v0, :cond_1

    if-ge v10, v14, :cond_1

    move v10, v14

    goto/16 :goto_2

    :cond_8
    return-void
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;

    iget v2, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->screen:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPosition()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->findFirstEmptySpace()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->setPosition(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->setupLp(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;)V

    return-void
.end method

.method public pointToCellExact(II[I)V
    .locals 8

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountX:I

    iget v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountY:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->pointToCellExact(II[IIIII)V

    return-void
.end method

.method pointToCellExact(II[IIIII)V
    .locals 11

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingStart()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getPaddingTop()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCellWidth:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapX:I

    add-int v3, v9, v10

    iget v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCellHeight:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapY:I

    add-int v2, v9, v10

    sub-int v9, p1, v4

    sub-int/2addr v9, v5

    iget v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mGapX:I

    div-int/lit8 v10, v10, 0x2

    add-int v1, v9, v10

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v9, v1

    div-int/2addr v9, v3

    const/4 v10, 0x0

    aput v9, p3, v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v9, v1

    rem-int v7, v9, v3

    :goto_0
    mul-int/lit8 v9, v7, 0x2

    if-le v9, v3, :cond_0

    const/4 v9, 0x0

    aget v10, p3, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, p3, v9

    :cond_0
    sub-int v9, p2, v8

    div-int/2addr v9, v2

    const/4 v10, 0x1

    aput v9, p3, v10

    const/4 v9, 0x0

    aget v9, p3, v9

    if-ge v9, p4, :cond_1

    const/4 v9, 0x0

    aput p4, p3, v9

    :cond_1
    const/4 v9, 0x0

    aget v9, p3, v9

    move/from16 v0, p5

    if-lt v9, v0, :cond_2

    const/4 v9, 0x0

    aput p5, p3, v9

    :cond_2
    const/4 v9, 0x1

    aget v9, p3, v9

    move/from16 v0, p6

    if-ge v9, v0, :cond_3

    const/4 v9, 0x1

    aput p6, p3, v9

    :cond_3
    const/4 v9, 0x1

    aget v9, p3, v9

    move/from16 v0, p7

    if-lt v9, v0, :cond_4

    const/4 v9, 0x1

    aput p7, p3, v9

    :cond_4
    return-void

    :cond_5
    div-int v9, v1, v3

    const/4 v10, 0x0

    aput v9, p3, v10

    rem-int v7, v1, v3

    goto :goto_0
.end method

.method realTimeReorder()V
    .locals 9

    const/4 v8, -0x1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderOnItemDeleted:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mForceReorder:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->hasAnimatingChild()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderAlarm:Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->alarmPending()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderAlarm:Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;

    const-wide/16 v6, 0x14

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->setAlarm(J)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderOnItemDeleted:Z

    if-eqz v5, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mEmptyCell:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getItemCount()I

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->findFirstEmptySpace()I

    move-result v0

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "[DS]CellLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "realTimeReorder :: empty="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", maxTarget="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", target="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mTargetCell[%d]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    if-ne v4, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getChildrenLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v5

    if-nez v5, :cond_6

    return-void

    :cond_6
    if-ne v0, v8, :cond_7

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t find empty cell. This should never happen! Cell Occupancy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->findAllOccupiedCells()[Z

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " item count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    if-ne v4, v8, :cond_8

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Couldn\'t find target cell. This should never happen!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    const/4 v2, 0x0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderOnItemDeleted:Z

    if-eqz v5, :cond_a

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getChildrenLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getChildrenLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mTitle:Ljava/lang/String;

    if-nez v5, :cond_d

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getChildrenLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_2
    if-ge v4, v0, :cond_e

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v5, "[DS]CellLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shift all items right  target="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  empty="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getChildrenLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-result-object v5

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->updateItemToNewPosition(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;I)V

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_e
    :goto_3
    if-le v4, v0, :cond_11

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string/jumbo v5, "[DS]CellLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shift all items target="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  empty="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getChildrenLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->updateItemToNewPosition(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;I)V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_11
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->setPosition(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string/jumbo v5, "[DS]CellLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mHiddenItem setPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method

.method public realTimeReorder(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTargetCell:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->realTimeReorder()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->removeAllItems()V

    :cond_0
    return-void
.end method

.method public removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->closeLayoutGap()V

    :cond_1
    return v0
.end method

.method public setGridSize(II)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountY:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountX:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mCountY:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->requestLayout()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "[DS]CellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGridSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setItemLocation(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;IIIIIJ)V
    .locals 7

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "[DS]CellLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setItemLocation :: screen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, -0x1

    if-ne p6, v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid position"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iput p6, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mScreen:I

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, p7, p8, p6}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;JI)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;

    iput p6, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->screen:I

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setItemViewBuilder(Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->setItemViewBuilder(Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;)V

    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public show(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]CellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDisabled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->setItemVisibility(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mReorderAlarm:Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->cancelAlarm()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    return-void
.end method

.method public visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V
    .locals 13

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mLastVisualize:[I

    const/4 v9, 0x0

    aget v9, p3, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    const/4 v9, 0x1

    aget v9, p3, v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v9, 0x0

    aget v9, v2, v9

    const/4 v10, 0x0

    aget v10, p3, v10

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    aget v9, v2, v9

    const/4 v10, 0x1

    aget v10, p3, v10

    if-ne v9, v10, :cond_2

    const/4 v9, 0x2

    aget v9, v2, v9

    move/from16 v0, p4

    if-ne v9, v0, :cond_2

    const/4 v9, 0x3

    aget v9, v2, v9

    move/from16 v0, p5

    if-ne v9, v0, :cond_2

    return-void

    :cond_2
    const/4 v9, 0x0

    aget v9, p3, v9

    const/4 v10, 0x0

    aput v9, v2, v10

    const/4 v9, 0x1

    aget v9, p3, v9

    const/4 v10, 0x1

    aput v9, v2, v10

    const/4 v9, 0x2

    aput p4, v2, v9

    const/4 v9, 0x3

    aput p5, v2, v9

    if-eqz p2, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mTmpPoint:[I

    const/4 v9, 0x0

    aget v9, p3, v9

    const/4 v10, 0x1

    aget v10, p3, v10

    invoke-virtual {p0, v9, v10, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->cellToPoint(II[I)V

    const/4 v9, 0x0

    aget v3, v7, v9

    const/4 v9, 0x1

    aget v6, v7, v9

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineCurrent:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineAnims:[Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;->animateOut()V

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v10, v10

    rem-int/2addr v9, v10

    iput v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineCurrent:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0701bf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineCurrent:I

    aget-object v10, v9, v10

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    if-eqz v9, :cond_4

    sub-int v9, v3, v8

    :goto_0
    add-int v11, v6, v5

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    if-eqz v12, :cond_5

    :goto_1
    add-int v12, v6, v1

    add-int/2addr v12, v5

    invoke-virtual {v10, v9, v11, v3, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineAnims:[Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    iget v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineCurrent:I

    aget-object v9, v9, v10

    invoke-virtual {v9, p2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineAnims:[Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    iget v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mDragOutlineCurrent:I

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;->animateIn()V

    :cond_3
    return-void

    :cond_4
    move v9, v3

    goto :goto_0

    :cond_5
    add-int/2addr v3, v8

    goto :goto_1
.end method
