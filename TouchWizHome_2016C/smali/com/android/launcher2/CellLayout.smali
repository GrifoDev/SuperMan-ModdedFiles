.class public abstract Lcom/android/launcher2/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/android/launcher2/DragReceivable;
.implements Lcom/android/launcher2/DragOrigin;
.implements Lcom/android/launcher2/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$ReorderAlarmListener;,
        Lcom/android/launcher2/CellLayout$CellInfo;,
        Lcom/android/launcher2/CellLayout$LayoutParams;,
        Lcom/android/launcher2/CellLayout$ReorderStatus;
    }
.end annotation


# static fields
.field public static final DEBUGGABLE:Z

.field public static final REORDER_ANIMATION_DELAY:I = 0x21

.field public static final REORDER_ANIMATION_DURATION:I = 0x14a

.field private static final TAG:Ljava/lang/String; = "CellLayout"

.field private static isItemApp:Z

.field private static mEmptyMessageColor:I

.field private static mEmptyMessageColorType:I

.field private static mHasSetStartXY:Z

.field private static mItemComparator_BL:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mItemComparator_BR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field public static mItemComparator_TL:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field public static mItemComparator_TR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static mStateAnimationFinished:Z

.field private static sDeltaOffset:Z

.field private static sDragStartXY:[I

.field private static sIsDraggingWithinQuickOptionsBounds:Z


# instance fields
.field public mAnimateChildInstantly:Z

.field private mBackgroundAlpha:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field public mBackupItems:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/launcher2/BackupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mCellWidth:I

.field mChildren:Lcom/android/launcher2/CellLayoutChildren;

.field private mChildrenAlpha:F

.field private mCountX:I

.field private mCountY:I

.field private mCrossHairAlpha:F

.field private mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrosshairsFolderDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrosshairsVisibility:F

.field protected final mDragCell:[I

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Rect;

.field private final mDragSpan:[I

.field private mDragState:Lcom/android/launcher2/DragState;

.field private mDragViewCenter:[I

.field mDragging:Z

.field protected mDrawDragOutlines:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mEmptyMessage:Landroid/widget/TextView;

.field protected mFingerMovedOnDrag:Z

.field private mGapX:I

.field private mGapY:I

.field private mGlowBackgroundRect:Landroid/graphics/Rect;

.field private mGlowBackgroundScale:F

.field protected mHomeView:Lcom/android/launcher2/HomeView;

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIsDragOccuring:Z

.field private mIsDragOverlapping:Z

.field protected mIsPaused:Z

.field protected mIsZeroPageCell:Z

.field private mLastDownOnOccupiedCell:Z

.field private mLastReorderX:I

.field private mLastReorderY:I

.field private mLastVisualize:[I

.field private mLastXY:[F

.field protected mMinimumDistanceToDismissQuickOptions:I

.field private mNoNeedToDraw:Z

.field private mOnDragListener:Landroid/view/View$OnDragListener;

.field public mOutSideItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPageType:I

.field private final mPositioner:Lcom/android/launcher2/CellPositioner;

.field protected mPreFolderBg:Lcom/android/launcher2/AppIconView;

.field private final mReorderAlarm:Lcom/android/launcher2/Alarm;

.field public mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

.field public mRestoredItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShadowOffset:F

.field private final mTargetCell:[I

.field private mTempCountX:I

.field private mTempCountY:I

.field public mTempPage:Z

.field private final mTmpPoint:[I

.field protected final mTmpXY:[I

.field protected mWillCreateFolder:Z

.field private mWorkSpaceState:Lcom/android/launcher2/Workspace$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/CellLayout;->sDragStartXY:[I

    sput-boolean v1, Lcom/android/launcher2/CellLayout;->sIsDraggingWithinQuickOptionsBounds:Z

    sput-boolean v1, Lcom/android/launcher2/CellLayout;->sDeltaOffset:Z

    sput-boolean v1, Lcom/android/launcher2/CellLayout;->mHasSetStartXY:Z

    sput-boolean v1, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    sput-boolean v1, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    new-instance v0, Lcom/android/launcher2/CellLayout$6;

    invoke-direct {v0}, Lcom/android/launcher2/CellLayout$6;-><init>()V

    sput-object v0, Lcom/android/launcher2/CellLayout;->mItemComparator_TL:Ljava/util/Comparator;

    new-instance v0, Lcom/android/launcher2/CellLayout$7;

    invoke-direct {v0}, Lcom/android/launcher2/CellLayout$7;-><init>()V

    sput-object v0, Lcom/android/launcher2/CellLayout;->mItemComparator_TR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/launcher2/CellLayout$8;

    invoke-direct {v0}, Lcom/android/launcher2/CellLayout$8;-><init>()V

    sput-object v0, Lcom/android/launcher2/CellLayout;->mItemComparator_BL:Ljava/util/Comparator;

    new-instance v0, Lcom/android/launcher2/CellLayout$9;

    invoke-direct {v0}, Lcom/android/launcher2/CellLayout$9;-><init>()V

    sput-object v0, Lcom/android/launcher2/CellLayout;->mItemComparator_BR:Ljava/util/Comparator;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {v4}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mCrossHairAlpha:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v4, v4

    new-array v4, v4, [F

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v4, v4

    new-array v4, v4, [Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsFolderDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mPageType:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mNoNeedToDraw:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mWillCreateFolder:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mIsZeroPageCell:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mRestoredItems:Ljava/util/List;

    new-instance v4, Landroid/util/LongSparseArray;

    invoke-direct {v4}, Landroid/util/LongSparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mTempPage:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mMinimumDistanceToDismissQuickOptions:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mIsPaused:Z

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mLastReorderX:I

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mLastReorderY:I

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    new-instance v4, Lcom/android/launcher2/Alarm;

    invoke-direct {v4}, Lcom/android/launcher2/Alarm;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    sget-object v4, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DEFAULT:Lcom/android/launcher2/CellLayout$ReorderStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mTempCountX:I

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mTempCountY:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mShadowOffset:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mChildrenAlpha:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    const/4 v4, 0x2

    new-array v4, v4, [F

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mWorkSpaceState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const/4 v6, -0x1

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setWillNotDraw(Z)V

    sget-object v4, Lcom/sec/android/app/launcher/R$styleable;->CellLayout:[I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mIsZeroPageCell:Z

    :cond_0
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v4, 0x7f02005d

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    const v4, 0x7f020028

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsFolderDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40200000    # 2.5f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    const v4, 0x7f0c0038

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    new-instance v4, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v6, v12

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v7, v5, v8}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/CellLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/launcher2/CellLayout$1;-><init>(Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v7, 0x1

    const/4 v8, -0x1

    aput v8, v6, v7

    aput v8, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    aput v8, v4, v5

    const/4 v15, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v4, v4

    if-ge v15, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v4, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    const v4, 0x7f0c003c

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    const/4 v14, 0x0

    const v4, 0x7f0c003d

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([FF)V

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v4, v4

    if-ge v15, v4, :cond_2

    new-instance v11, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v4, v13

    const/4 v6, 0x0

    move/from16 v0, v18

    invoke-direct {v11, v4, v5, v6, v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    invoke-virtual {v11}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v17, v15

    invoke-virtual {v11}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/CellLayout$2;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v5, v0, v11, v1}, Lcom/android/launcher2/CellLayout$2;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v11}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/CellLayout$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v11}, Lcom/android/launcher2/CellLayout$3;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aput-object v11, v4, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundRect:Landroid/graphics/Rect;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setHoverScale(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setHoverAlpha(F)V

    new-instance v4, Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/launcher2/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->newCellPositioner()Lcom/android/launcher2/CellPositioner;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0a0311

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/CellLayout;->mMinimumDistanceToDismissQuickOptions:I

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayout;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/CellLayout;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/CellLayout;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/CellLayout;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/CellPositioner;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/launcher2/CellLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mLastReorderX:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/launcher2/CellLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mLastReorderY:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/launcher2/CellLayout;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/CellLayout;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    return-object v0
.end method

.method public static adjust(Landroid/graphics/Rect;IIII)V
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p4

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private animateIcon(Landroid/view/View;IZZJ)Z
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    if-eqz v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual {v4, v0, v5, v1, v2}, Lcom/android/launcher2/AnimationLayer;->updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v5}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v5, :cond_4

    move-object/from16 v7, p1

    check-cast v7, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppIconView;->getAnimGroup()I

    move-result v5

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move/from16 v12, p2

    move-wide/from16 v14, p5

    invoke-virtual/range {v4 .. v15}, Lcom/android/launcher2/AnimationLayer;->animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZJ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v16

    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/AnimationLayer$Anim;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-eqz p4, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/AnimationLayer$Anim;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v10, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    neg-int v10, v10

    invoke-virtual {v5, v6, v10}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/AnimationLayer$Anim;->enableClipping()V

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v7, p1

    check-cast v7, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v7}, Lcom/android/launcher2/AppIconView;->getAnimGroup()I

    move-result v5

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move/from16 v12, p2

    move-wide/from16 v14, p5

    invoke-virtual/range {v4 .. v15}, Lcom/android/launcher2/AnimationLayer;->animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZJ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v16

    goto :goto_1
.end method

.method private cleanupReorder(Z)V
    .locals 2

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    :cond_0
    iput v1, p0, Lcom/android/launcher2/CellLayout;->mLastReorderX:I

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mLastReorderY:I

    return-void
.end method

.method public static declared-synchronized findNearVacantCell([IIIII[[Z)Z
    .locals 19

    const-class v17, Lcom/android/launcher2/CellLayout;

    monitor-enter v17

    if-ltz p1, :cond_0

    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_1

    :cond_0
    const/16 v16, 0x0

    :goto_0
    monitor-exit v17

    return v16

    :cond_1
    if-ltz p2, :cond_2

    move/from16 v0, p2

    move/from16 v1, p4

    if-lt v0, v1, :cond_3

    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    :cond_3
    if-nez p5, :cond_4

    const/16 v16, 0x0

    goto :goto_0

    :cond_4
    :try_start_0
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_6

    const/16 v16, 0x0

    aget-object v16, p5, v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p4

    if-eq v0, v1, :cond_6

    :cond_5
    const/16 v16, 0x0

    goto :goto_0

    :cond_6
    filled-new-array/range {p3 .. p4}, [I

    move-result-object v16

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[I

    const/4 v6, 0x0

    :goto_1
    move/from16 v0, p3

    if-ge v6, v0, :cond_8

    const/4 v7, 0x0

    :goto_2
    move/from16 v0, p4

    if-ge v7, v0, :cond_7

    aget-object v16, v15, v6

    const/16 v18, 0x0

    aput v18, v16, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    aget-object v16, v15, p1

    const/16 v18, 0x1

    aput v18, v16, p2

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_11

    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v8, v4, -0x1

    move v9, v5

    add-int/lit8 v11, v4, 0x1

    move v12, v5

    move v13, v4

    add-int/lit8 v14, v5, -0x1

    move v2, v4

    add-int/lit8 v3, v5, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v8, v9, v0, v1}, Lcom/android/launcher2/CellLayout;->in(IIII)Z

    move-result v16

    if-eqz v16, :cond_b

    aget-object v16, v15, v8

    aget v16, v16, v9

    if-nez v16, :cond_a

    aget-object v16, p5, v8

    aget-boolean v16, v16, v9

    if-nez v16, :cond_a

    const/16 v16, 0x0

    aput v8, p0, v16

    const/16 v16, 0x1

    aput v9, p0, v16

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_a
    aget-object v16, v15, v8

    aget v16, v16, v9

    if-nez v16, :cond_b

    aget-object v16, p5, v8

    aget-boolean v16, v16, v9

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    aget-object v16, v15, v8

    const/16 v18, 0x1

    aput v18, v16, v9

    :cond_b
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v11, v12, v0, v1}, Lcom/android/launcher2/CellLayout;->in(IIII)Z

    move-result v16

    if-eqz v16, :cond_d

    aget-object v16, v15, v11

    aget v16, v16, v12

    if-nez v16, :cond_c

    aget-object v16, p5, v11

    aget-boolean v16, v16, v12

    if-nez v16, :cond_c

    const/16 v16, 0x0

    aput v11, p0, v16

    const/16 v16, 0x1

    aput v12, p0, v16

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_c
    aget-object v16, v15, v11

    aget v16, v16, v12

    if-nez v16, :cond_d

    aget-object v16, p5, v11

    aget-boolean v16, v16, v12

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    aget-object v16, v15, v11

    const/16 v18, 0x1

    aput v18, v16, v12

    :cond_d
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v13, v14, v0, v1}, Lcom/android/launcher2/CellLayout;->in(IIII)Z

    move-result v16

    if-eqz v16, :cond_f

    aget-object v16, v15, v13

    aget v16, v16, v14

    if-nez v16, :cond_e

    aget-object v16, p5, v13

    aget-boolean v16, v16, v14

    if-nez v16, :cond_e

    const/16 v16, 0x0

    aput v13, p0, v16

    const/16 v16, 0x1

    aput v14, p0, v16

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_e
    aget-object v16, v15, v13

    aget v16, v16, v14

    if-nez v16, :cond_f

    aget-object v16, p5, v13

    aget-boolean v16, v16, v14

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    aget-object v16, v15, v13

    const/16 v18, 0x1

    aput v18, v16, v14

    :cond_f
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v3, v0, v1}, Lcom/android/launcher2/CellLayout;->in(IIII)Z

    move-result v16

    if-eqz v16, :cond_9

    aget-object v16, v15, v2

    aget v16, v16, v3

    if-nez v16, :cond_10

    aget-object v16, p5, v2

    aget-boolean v16, v16, v3

    if-nez v16, :cond_10

    const/16 v16, 0x0

    aput v2, p0, v16

    const/16 v16, 0x1

    aput v3, p0, v16

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_10
    aget-object v16, v15, v2

    aget v16, v16, v3

    if-nez v16, :cond_9

    aget-object v16, p5, v2

    aget-boolean v16, v16, v3

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    aget-object v16, v15, v2

    const/16 v18, 0x1

    aput v18, v16, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v16

    monitor-exit v17

    throw v16

    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public static declared-synchronized findVacantCell([IIIII[[Z)Z
    .locals 10

    const-class v7, Lcom/android/launcher2/CellLayout;

    monitor-enter v7

    if-nez p5, :cond_0

    const/4 v6, 0x0

    :goto_0
    monitor-exit v7

    return v6

    :cond_0
    :try_start_0
    array-length v6, p5

    if-ne v6, p3, :cond_1

    array-length v6, p5

    if-lez v6, :cond_3

    const/4 v6, 0x0

    aget-object v6, p5, v6

    array-length v6, v6

    if-eq v6, p4, :cond_3

    :cond_1
    sget-boolean v6, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v6, :cond_2

    const-string v6, "CellLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findVacantCell size isn\'t matched with array. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, p5, v9

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p4, :cond_b

    const/4 v4, 0x0

    :goto_2
    if-ge v4, p3, :cond_a

    aget-object v6, p5, v4

    aget-boolean v6, v6, v5

    if-nez v6, :cond_5

    const/4 v0, 0x1

    :goto_3
    const/4 v3, 0x0

    move v1, v4

    :goto_4
    add-int v6, v4, p1

    if-ge v1, v6, :cond_4

    if-ge v1, p3, :cond_4

    move v2, v5

    :goto_5
    add-int v6, v5, p2

    if-ge v2, v6, :cond_8

    if-ge v2, p4, :cond_8

    if-eqz v0, :cond_6

    aget-object v6, p5, v1

    aget-boolean v6, v6, v2

    if-nez v6, :cond_6

    const/4 v0, 0x1

    :goto_6
    add-int/lit8 v3, v3, 0x1

    if-nez v0, :cond_7

    const/4 v3, 0x0

    :cond_4
    mul-int v6, p1, p2

    if-ne v3, v6, :cond_9

    const/4 v6, 0x0

    aput v4, p0, v6

    const/4 v6, 0x1

    aput v5, p0, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private gridSizeChanged(IIII)V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->isGridSelectMenuOpened()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v6

    if-eq v6, p0, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v1}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v6

    if-eq v6, p0, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v6

    if-ne v6, p0, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01c7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/high16 v2, 0x3f800000    # 1.0f

    if-le p2, p4, :cond_3

    int-to-float v6, v3

    mul-float/2addr v6, v8

    int-to-float v7, v4

    div-float v2, v6, v7

    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/launcher2/CellLayoutChildren;->gridChange:Z

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    :goto_1
    if-ltz v5, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v6, v0, v2}, Lcom/android/launcher2/CellLayoutChildren;->makePreviousRectMap(Landroid/view/View;F)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    if-ge p2, p4, :cond_2

    int-to-float v6, v4

    mul-float/2addr v6, v8

    int-to-float v7, v3

    div-float v2, v6, v7

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static in(IIII)Z
    .locals 1

    if-ltz p0, :cond_0

    if-ge p0, p2, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invalidateVisualize()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public static isItemApp()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    return v0
.end method

.method private offsetXYOccurredByScaleAnimation(Lcom/android/launcher2/BaseItem;)V
    .locals 10

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppIconView;

    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/launcher2/AppIconView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_0

    invoke-virtual {v4, v3}, Lcom/android/launcher2/AppIconView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget-object v6, v4, Lcom/android/launcher2/AppIconView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v6

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget-object v6, v4, Lcom/android/launcher2/AppIconView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, v6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    sget-object v5, Lcom/android/launcher2/CellLayout;->sDragStartXY:[I

    const/4 v6, 0x0

    aget v7, v5, v6

    sub-int/2addr v7, v1

    aput v7, v5, v6

    sget-object v5, Lcom/android/launcher2/CellLayout;->sDragStartXY:[I

    const/4 v6, 0x1

    aget v7, v5, v6

    int-to-float v7, v7

    int-to-float v8, v2

    const/high16 v9, 0x41a00000    # 20.0f

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v7, v7

    aput v7, v5, v6

    :cond_0
    return-void
.end method

.method public static scaleRect(Landroid/graphics/Rect;F)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method private setChildrenAlpha(F)V
    .locals 3

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mChildrenAlpha:F

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateGlowRect()V
    .locals 8

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v0, v3, v4

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v1, v3

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v2, v3

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;I)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    :cond_0
    return-void
.end method

.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/PagedView;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedView;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView;->isPageConstructed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher2/CellLayoutChildren;->addItem(Lcom/android/launcher2/BaseItem;Z)Z

    move-result v2

    return v2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public animateChildToPosition(Landroid/view/View;IIIJZ)Z
    .locals 15

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout$LayoutParams;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Tried to animate a item to an occupied cell. Failed to swap item positions because the inbound item belonged to a different cell layout."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget v3, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v3, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v3, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v14}, Landroid/view/View;->requestLayout()V

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    move/from16 v0, p2

    iput v0, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v0, p3

    iput v0, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-eqz p7, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/BaseItem;

    instance-of v3, v10, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_3

    move-object v11, v10

    check-cast v11, Lcom/android/launcher2/HomeItem;

    move/from16 v0, p2

    iput v0, v11, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, p3

    iput v0, v11, Lcom/android/launcher2/HomeItem;->cellY:I

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/CellLayout;->needToAnimateChild(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->CLIP_BY_DEFAULT()Z

    move-result v7

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellLayout;->animateIcon(Landroid/view/View;IZZJ)Z

    move-result v3

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected animateIcon(Landroid/view/View;IZZ)Z
    .locals 8

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher2/CellLayout;->animateIcon(Landroid/view/View;IZZJ)Z

    move-result v0

    return v0
.end method

.method public cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 6

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->regionToCenterPoint(IIII[I)V

    return-void
.end method

.method cellToPoint(III[I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v2

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    sub-int/2addr v3, p1

    sub-int v1, v3, p3

    :goto_0
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    add-int/2addr v4, v0

    aput v4, p4, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    aput v4, p4, v3

    return-void

    :cond_0
    move v1, p1

    goto :goto_0
.end method

.method cellToPoint(II[I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/launcher2/CellLayout;->cellToPoint(III[I)V

    return-void
.end method

.method public changeBackgroundDrawable(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/PanelBgDrawer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/PanelBgDrawer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PanelBgDrawer;->setMode(I)V

    :cond_0
    return-void
.end method

.method public changeColorCrosshair(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z
    .locals 12

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    new-array v7, v8, [I

    invoke-virtual {p0, p2, p3, v7}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    new-array v4, v8, [I

    aget v8, v7, v10

    aget v9, v7, v11

    invoke-virtual {p0, v8, v9, v4}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    iget v8, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v9, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int v1, v8, v9

    iget v8, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v9, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int v0, v8, v9

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v6

    aget v8, v6, v10

    sub-int v8, p2, v8

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v2, v8, v9

    aget v8, v6, v11

    sub-int v8, p3, v8

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    aget v8, v4, v10

    div-int/lit8 v9, v1, 0x4

    add-int/2addr v8, v9

    if-le v2, v8, :cond_0

    aget v8, v4, v10

    add-int/2addr v8, v1

    div-int/lit8 v9, v1, 0x4

    sub-int/2addr v8, v9

    if-ge v2, v8, :cond_0

    aget v8, v4, v11

    div-int/lit8 v9, v0, 0x4

    add-int/2addr v8, v9

    if-le v3, v8, :cond_0

    aget v8, v4, v11

    add-int/2addr v8, v0

    div-int/lit8 v9, v0, 0x4

    sub-int/2addr v8, v9

    if-ge v3, v8, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    return v0
.end method

.method public clearAllItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->clearAllItems()V

    return-void
.end method

.method public clearDragOutlines()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, -0x1

    aput v3, v2, v5

    aput v3, v1, v4

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    aput v4, v2, v5

    aput v4, v1, v4

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    return-void
.end method

.method public clearTagCellInfo()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method commitTempPlacement(Landroid/view/View;)V
    .locals 13

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeItem;

    if-eqz v11, :cond_2

    if-eq v8, p1, :cond_1

    iget v1, v11, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v2, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    if-ne v1, v2, :cond_0

    iget v1, v11, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v2, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v1, v2, :cond_0

    iget v1, v11, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v2, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v1, v2, :cond_0

    iget v1, v11, Lcom/android/launcher2/HomeItem;->spanY:I

    iget v2, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v0, Lcom/android/launcher2/DragState;

    invoke-virtual {p0, v11}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V

    iget v2, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v4, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z

    :cond_1
    iget v1, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iput v1, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v1, v11, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v1, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iput v1, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v1, v11, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v1, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v1, v11, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v1, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v1, v11, Lcom/android/launcher2/HomeItem;->spanY:I

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 8

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellPositioner;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public disableHardwareLayers()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->disableHardwareLayers()V

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    :cond_5
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mShadowOffset:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    aget v0, v4, v2

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    float-to-int v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    aget-object v5, v5, v2

    invoke-virtual {p1, v1, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dissolveFolder(Lcom/android/launcher2/DragState;)V
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v0

    if-gt v0, v1, :cond_0

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "CellLayout"

    const-string v1, "TTTT folder icon view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    invoke-virtual {v8, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    new-instance v7, Lcom/android/launcher2/DragState;

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v8, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v1

    invoke-virtual {v8, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, v10, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v4, v10, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v5, v11, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v6, v11, Lcom/android/launcher2/HomeItem;->spanY:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/DragState;->dropItemtoTarget(Landroid/view/View;Landroid/view/View;IIII)V

    iget-wide v0, v10, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Hotseat;

    move-object v9, v0

    check-cast v9, Lcom/android/launcher2/Hotseat;

    iget-object v0, v9, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    :cond_2
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->onDelete()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v7, Lcom/android/launcher2/DragState;

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->onDelete()V

    goto/16 :goto_0
.end method

.method public enableHardwareLayers()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->enableHardwareLayers()V

    return-void
.end method

.method existsEmptyCell()Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v0

    return v0
.end method

.method findCellForSpan([III)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/CellPositioner;->findCellForSpan([III)Z

    move-result v0

    goto :goto_0
.end method

.method findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[IZI)Z

    move-result v0

    return v0
.end method

.method findDragCell(Lcom/android/launcher2/DragState;II[I[IZI)Z
    .locals 42

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v4, 0x0

    move/from16 v0, p2

    int-to-float v5, v0

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v4, 0x1

    move/from16 v0, p3

    int-to-float v5, v0

    aput v5, v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v22

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    new-array v14, v3, [I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-static {v3, v14}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    invoke-static/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, v30

    instance-of v3, v0, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v3, :cond_1

    move-object/from16 v34, v30

    check-cast v34, Lcom/android/launcher2/HomePendingWidget;

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/HomePendingWidget;->getResizeSpans()[I

    move-result-object v37

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v3

    const/4 v4, 0x0

    aget v4, v14, v4

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    aget v3, v37, v3

    const/4 v4, 0x0

    aget v4, v14, v4

    if-gt v3, v4, :cond_0

    const/4 v3, 0x0

    aget v3, v14, v3

    move-object/from16 v0, v34

    iput v3, v0, Lcom/android/launcher2/HomePendingWidget;->spanX:I

    :cond_0
    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v3

    const/4 v4, 0x1

    aget v4, v14, v4

    if-le v3, v4, :cond_1

    const/4 v3, 0x1

    aget v3, v37, v3

    const/4 v4, 0x1

    aget v4, v14, v4

    if-gt v3, v4, :cond_1

    const/4 v3, 0x1

    aget v3, v14, v3

    move-object/from16 v0, v34

    iput v3, v0, Lcom/android/launcher2/HomePendingWidget;->spanY:I

    :cond_1
    const/16 v26, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static/range {v30 .. v30}, Lcom/android/launcher2/QuickOptionsPopup;->isValidType(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, v22

    check-cast v0, Lcom/android/launcher2/AppIconView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v26, 0x1

    move-object/from16 v0, v30

    check-cast v0, Lcom/android/launcher2/HomeItem;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/launcher2/CellLayout;->cellToCenterPoint(II[I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    const/4 v4, 0x0

    aget p2, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    const/4 v4, 0x1

    aget p3, v3, v4

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v41

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v40

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v39

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v41, v5

    sub-int v5, p2, v5

    div-int/lit8 v6, v40, 0x2

    add-int/2addr v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v41, v5

    sub-int v5, p3, v5

    div-int/lit8 v6, v39, 0x2

    add-int/2addr v5, v6

    aput v5, v3, v4

    :goto_0
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v32, v0

    const/4 v3, 0x0

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v4

    aput v4, v32, v3

    const/4 v3, 0x1

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v4

    aput v4, v32, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v4

    aput v4, v32, v3

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v4

    aput v4, v32, v3

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v3, :cond_b

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v3, :cond_5

    const/high16 v38, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_4

    check-cast v22, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getresizeResult()Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v3

    iget v0, v3, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    move/from16 v38, v0

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v41, v5

    sub-int v5, p2, v5

    int-to-float v5, v5

    move/from16 v0, v40

    int-to-float v6, v0

    mul-float v6, v6, v38

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, v3, v4

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x0

    aget v5, v32, v5

    const/4 v6, 0x1

    aget v6, v32, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellPositioner;->findNearestArea(IIII[I)[I

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v4, 0x0

    aget v35, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v4, 0x1

    aget v36, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mLastReorderX:I

    move/from16 v0, v35

    if-ne v3, v0, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mLastReorderY:I

    move/from16 v0, v36

    if-eq v3, v0, :cond_7

    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/CellLayout;->cleanupReorder(Z)V

    :cond_7
    const/4 v3, 0x0

    aget v3, p5, v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    aget v3, p5, v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v4

    aput v4, p5, v3

    const/4 v3, 0x1

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v4

    aput v4, p5, v3

    :cond_8
    if-eqz v26, :cond_c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, p4, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, p4, v3

    const/4 v3, 0x1

    :goto_2
    return v3

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v41, v5

    sub-int v5, p2, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v41, v5

    sub-int v5, p3, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    aput v5, v3, v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v24

    sget-boolean v3, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v3, :cond_a

    const-string v3, "CellLayout"

    const-string v4, "Null Pointer Exception Occurred"

    move-object/from16 v0, v24

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_3
    const/4 v3, 0x1

    goto :goto_2

    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/launcher2/CellLayout;->pointToCellExact(III[I)V

    goto/16 :goto_1

    :cond_c
    if-nez p6, :cond_14

    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_d

    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v3, :cond_f

    :cond_d
    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_e

    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v3, :cond_f

    :cond_e
    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_14

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_14

    const/16 v23, 0x1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v20

    const-wide/16 v4, -0x65

    cmp-long v3, v20, v4

    if-nez v3, :cond_15

    const/16 v19, 0x1

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v18

    const/16 v25, 0x0

    if-eqz v18, :cond_10

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_10

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/BaseItem;

    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/CellLayout;->mWillCreateFolder:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/FolderIconView;

    if-nez v3, :cond_1a

    if-eqz v19, :cond_1a

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/BaseItem;

    :cond_11
    if-eqz v16, :cond_17

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_12

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_17

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_16

    move-object/from16 v0, v29

    check-cast v0, Lcom/android/launcher2/AppIconView;

    move-object v15, v0

    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher2/CellLayout;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    if-eq v3, v15, :cond_a

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/android/launcher2/CellLayout;->setPreFolderBg(Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/BaseItem;)V

    goto/16 :goto_3

    :cond_14
    const/16 v23, 0x0

    goto/16 :goto_4

    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_5

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->resetPreFolderBg()V

    goto/16 :goto_3

    :cond_17
    if-eqz v23, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/android/launcher2/FolderIconView;

    if-eqz v27, :cond_a

    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher2/CellLayout;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->onDragEnter(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_3

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->resetPreFolderBg()V

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/CellLayout;->willCreateFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    sget-object v4, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_NEED_FIND_DROP_POSITION:Lcom/android/launcher2/CellLayout$ReorderStatus;

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->isBouncingItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v3

    move/from16 v0, p7

    if-eq v3, v0, :cond_1c

    :cond_1b
    if-eqz v23, :cond_26

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/HomePendingItem;

    if-nez v3, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->isBouncingItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-nez v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    sget-object v4, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_NEED_FIND_DROP_POSITION:Lcom/android/launcher2/CellLayout$ReorderStatus;

    if-eq v3, v4, :cond_26

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->reset()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/CellLayout;->mWillCreateFolder:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    sget-object v4, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DEFAULT:Lcom/android/launcher2/CellLayout$ReorderStatus;

    if-ne v3, v4, :cond_1f

    sget-object v3, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DELAYING:Lcom/android/launcher2/CellLayout$ReorderStatus;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    new-instance v31, Landroid/os/Handler;

    invoke-direct/range {v31 .. v31}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher2/CellLayout$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher2/CellLayout$4;-><init>(Lcom/android/launcher2/CellLayout;)V

    const-wide/16 v4, 0x14a

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    sget-object v4, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DELAY_END:Lcom/android/launcher2/CellLayout$ReorderStatus;

    if-ne v3, v4, :cond_1e

    sget-object v3, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DEFAULT:Lcom/android/launcher2/CellLayout$ReorderStatus;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher2/CellLayout;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->resetPreFolderBg()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v5

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/CellPositioner;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v33

    if-nez v33, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v3}, Lcom/android/launcher2/CellPositioner;->revertTempState()V

    :cond_1e
    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, p4, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, p4, v3

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    sget-object v4, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DELAYING:Lcom/android/launcher2/CellLayout$ReorderStatus;

    if-ne v3, v4, :cond_1d

    move-object/from16 v0, v18

    instance-of v3, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_22

    move-object/from16 v0, v18

    check-cast v0, Lcom/android/launcher2/AppIconView;

    move-object v15, v0

    invoke-virtual/range {p0 .. p3}, Lcom/android/launcher2/CellLayout;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    if-eq v3, v15, :cond_1d

    :cond_20
    if-eqz v23, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/FolderIconView;

    if-eqz v17, :cond_1d

    check-cast v17, Lcom/android/launcher2/FolderIconView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->onDragEnter(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_6

    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/android/launcher2/CellLayout;->setPreFolderBg(Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/BaseItem;)V

    goto/16 :goto_6

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->resetPreFolderBg()V

    goto/16 :goto_6

    :cond_23
    if-eqz v33, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v3}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v3

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mLastReorderX:I

    move/from16 v0, v35

    if-ne v3, v0, :cond_24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mLastReorderY:I

    move/from16 v0, v36

    if-eq v3, v0, :cond_1e

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x0

    aget v5, v32, v5

    const/4 v6, 0x1

    aget v6, v32, v6

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v7

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v12, 0x0

    move-object/from16 v11, p5

    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher2/CellPositioner;->performReorder(IIIIIILandroid/view/View;[I[II)Z

    move-result v3

    if-nez v3, :cond_25

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, p4, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, p4, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v3}, Lcom/android/launcher2/CellPositioner;->revertTempState()V

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_25
    new-instance v2, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;

    const/4 v3, 0x0

    aget v5, v32, v3

    const/4 v3, 0x1

    aget v6, v32, v3

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v7

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v9

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout;IIIILandroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v4, 0x14a

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto/16 :goto_7

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->resetPreFolderBg()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    sget-object v4, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_NEED_FIND_DROP_POSITION:Lcom/android/launcher2/CellLayout$ReorderStatus;

    if-eq v3, v4, :cond_27

    sget-object v3, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DEFAULT:Lcom/android/launcher2/CellLayout$ReorderStatus;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v6

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher2/CellPositioner;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v33

    if-nez v33, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v3}, Lcom/android/launcher2/CellPositioner;->revertTempState()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, p4, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, p4, v3

    goto/16 :goto_3

    :cond_28
    if-eqz v33, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v3}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mLastReorderX:I

    move/from16 v0, v35

    if-ne v3, v0, :cond_29

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mLastReorderY:I

    move/from16 v0, v36

    if-eq v3, v0, :cond_a

    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, 0x0

    aget v6, v32, v6

    const/4 v7, 0x1

    aget v7, v32, v7

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v8

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v10

    const/4 v13, 0x0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v3 .. v13}, Lcom/android/launcher2/CellPositioner;->performReorder(IIIIIILandroid/view/View;[I[II)Z

    move-result v3

    if-nez v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v3}, Lcom/android/launcher2/CellPositioner;->revertTempState()V

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_2a
    new-instance v2, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;

    const/4 v3, 0x0

    aget v5, v32, v3

    const/4 v3, 0x1

    aget v6, v32, v3

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v7

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v9

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/CellLayout$ReorderAlarmListener;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout;IIIILandroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v4, 0x14a

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/Alarm;->setAlarm(J)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method findNearestVacantArea(IIII[I)[I
    .locals 6

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-nez v0, :cond_0

    :goto_0
    return-object p5

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellPositioner;->findNearestVacantArea(IIII[I)[I

    move-result-object p5

    goto :goto_0
.end method

.method findNearestVacantAreaWithCell(IIII[I)[I
    .locals 6

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-nez v0, :cond_0

    :goto_0
    return-object p5

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher2/CellLayout;->cellToPoint(III[I)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x0

    aget v1, v0, v3

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellPositioner;->findNearestVacantArea(IIII[I)[I

    move-result-object p5

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getCellHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mChildrenAlpha:F

    return v0
.end method

.method public getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    return-object v0
.end method

.method getContainer()Lcom/android/launcher2/CellLayoutContainer;
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutContainer;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutContainer;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher2/CellLayoutContainer;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getContainerType()J
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/HomeView;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x65

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x64

    goto :goto_0
.end method

.method public getCountX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    return v0
.end method

.method public getCountY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    return v0
.end method

.method public getCrossHairAlpha()F
    .locals 2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mCrossHairAlpha:F

    :goto_0
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCrossHairAlpha:F

    return v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mCrossHairAlpha:F

    goto :goto_0
.end method

.method public getCurrentDragOutline()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getDesiredHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getDesiredHeightForRows(I)I

    move-result v0

    return v0
.end method

.method public getDesiredHeightForRows(I)I
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    const/4 p1, 0x2

    :cond_0
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    instance-of v3, v1, Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getMaxFolderVisibleRows()I

    move-result v3

    if-le p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a03aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1
    if-lez p1, :cond_3

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    sub-int/2addr v0, v3

    :cond_2
    :goto_0
    return v0

    :cond_3
    if-nez p1, :cond_2

    instance-of v3, v1, Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a018d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDesiredWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getDesiredWidthForColumns(I)I

    move-result v0

    return v0
.end method

.method public getDesiredWidthForColumns(I)I
    .locals 3

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    if-lez p1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getDragSpan()[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    return-object v0
.end method

.method public getExpandabilityArrayForView(Landroid/view/View;[I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    aput v1, p2, v4

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aput v1, p2, v5

    :goto_0
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    aput v2, p2, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, p2, v1

    return-void

    :cond_0
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aput v1, p2, v4

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    aput v1, p2, v5

    goto :goto_0
.end method

.method getGapX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    return v0
.end method

.method getGapY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    return v0
.end method

.method getHeightGap()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    return v0
.end method

.method getIsDragOverlapping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getItemAt(II)Lcom/android/launcher2/BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(II)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    return-object v0
.end method

.method public getObjectType()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v1, :cond_0

    const-string v0, "CellLayoutMenu"

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, p0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v1, :cond_1

    const-string v0, "CellLayoutHotseat"

    goto :goto_0

    :cond_1
    instance-of v1, p0, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v1, :cond_2

    const-string v0, "CellLayoutMoveApps"

    goto :goto_0

    :cond_2
    instance-of v1, p0, Lcom/android/launcher2/CellLayoutFolder;

    if-eqz v1, :cond_3

    const-string v0, "CellLayoutFolder"

    goto :goto_0

    :cond_3
    instance-of v1, p0, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v1, :cond_4

    const-string v0, "CellLayoutNoGap"

    goto :goto_0

    :cond_4
    const-string v0, "CellLayoutWithResizableWidgets"

    goto :goto_0
.end method

.method public getOccupied()[[Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v0}, Lcom/android/launcher2/CellPositioner;->getOccupied()[[Z

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, [[Z

    goto :goto_0
.end method

.method public getOutSideItems(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->BOTTOM_LEFT:Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    sget-object v1, Lcom/android/launcher2/CellLayout;->mItemComparator_BL:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->BOTTOM_RIGHT:Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    sget-object v1, Lcom/android/launcher2/CellLayout;->mItemComparator_BR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->TOP_LEFT:Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    sget-object v1, Lcom/android/launcher2/CellLayout;->mItemComparator_TL:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->TOP_RIGHT:Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeScreenGridChangeHelper$OutSidePosition;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    sget-object v1, Lcom/android/launcher2/CellLayout;->mItemComparator_TR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public getPageChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageType()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mPageType:I

    return v0
.end method

.method public getReorderStatus()Lcom/android/launcher2/CellLayout$ReorderStatus;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    return-object v0
.end method

.method getScreen()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getTag()Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellInfo;

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getWidthGap()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    return v0
.end method

.method public hide(Lcom/android/launcher2/BaseItem;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/CellLayoutChildren;->setItemVisibility(Lcom/android/launcher2/BaseItem;I)V

    return-void
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public isBouncingAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v0}, Lcom/android/launcher2/CellPositioner;->isBouncingAnimationRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBouncingItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v1}, Lcom/android/launcher2/CellPositioner;->isBouncingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->isBouncingItem()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNoNeedToDraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mNoNeedToDraw:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsPaused:Z

    return v0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellPositioner;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected needToAnimateChild(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method abstract newCellPositioner()Lcom/android/launcher2/CellPositioner;
.end method

.method protected noRoomForDrop(Lcom/android/launcher2/DragState;III)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    return-void
.end method

.method onDragEnter()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 64

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v51

    if-nez v51, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/DragState;

    move-object v5, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v21

    const/4 v4, 0x4

    move/from16 v0, v21

    if-eq v0, v4, :cond_3

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->hasDeleted()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    move/from16 v0, v21

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    move/from16 v0, v21

    if-eq v0, v4, :cond_4

    const/4 v4, 0x1

    move/from16 v0, v21

    if-eq v0, v4, :cond_4

    move-object/from16 v0, v51

    instance-of v4, v0, Lcom/android/launcher2/Workspace;

    if-eqz v4, :cond_4

    move-object/from16 v4, v51

    check-cast v4, Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v6, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    float-to-int v7, v4

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v59

    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    :goto_2
    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v41

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v8, :cond_5

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v8, :cond_5

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v8, :cond_b

    :cond_5
    const/16 v36, 0x1

    :goto_3
    sput-boolean v36, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    const/4 v4, 0x5

    move/from16 v0, v21

    if-ne v0, v4, :cond_6

    iget-object v4, v5, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-eq v4, v0, :cond_6

    iget-object v4, v5, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v4, v4, Lcom/android/launcher2/CellLayout;

    if-eqz v4, :cond_6

    iget-object v0, v5, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {v44 .. v44}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {v44 .. v44}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v40

    const/16 v60, 0x1

    packed-switch v21, :pswitch_data_0

    :cond_7
    :goto_4
    packed-switch v21, :pswitch_data_1

    :cond_8
    :goto_5
    packed-switch v21, :pswitch_data_2

    :cond_9
    :goto_6
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDragEvent(Landroid/view/DragEvent;)Z

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    goto :goto_2

    :cond_b
    const/16 v36, 0x0

    goto :goto_3

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v8, 0x0

    aget v4, v4, v8

    sub-int/2addr v6, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v8, 0x1

    aget v4, v4, v8

    sub-int/2addr v7, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v8, 0x0

    int-to-float v10, v6

    aput v10, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v8, 0x1

    int-to-float v10, v7

    aput v10, v4, v8

    goto :goto_4

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    if-nez v4, :cond_7

    if-nez v40, :cond_7

    :pswitch_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static/range {v26 .. v26}, Lcom/android/launcher2/QuickOptionsPopup;->isValidType(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_f

    sget-boolean v4, Lcom/android/launcher2/CellLayout;->sDeltaOffset:Z

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/launcher2/CellLayout;->offsetXYOccurredByScaleAnimation(Lcom/android/launcher2/BaseItem;)V

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/launcher2/CellLayout;->sDeltaOffset:Z

    :cond_c
    sget-object v4, Lcom/android/launcher2/CellLayout;->sDragStartXY:[I

    const/4 v8, 0x0

    aget v4, v4, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v62

    sget-object v4, Lcom/android/launcher2/CellLayout;->sDragStartXY:[I

    const/4 v8, 0x1

    aget v4, v4, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v63

    const-string v4, "CellLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CellLayout.ACTION_DROP: xDiff = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v62

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", yDiff = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v63

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v62

    int-to-double v10, v0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    move/from16 v0, v63

    int-to-double v12, v0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayout;->mMinimumDistanceToDismissQuickOptions:I

    int-to-double v12, v4

    cmpl-double v4, v10, v12

    if-lez v4, :cond_d

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/CellLayout;->sIsDraggingWithinQuickOptionsBounds:Z

    :cond_d
    sget-boolean v4, Lcom/android/launcher2/CellLayout;->sIsDraggingWithinQuickOptionsBounds:Z

    if-eqz v4, :cond_e

    iget-object v4, v5, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-eq v4, v0, :cond_f

    :cond_e
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v4

    if-eqz v4, :cond_f

    const-string v4, "CellLayout"

    const-string v8, "onDragEvent: Dismiss Quick Options Popup on ACTION_DROP."

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z

    move-result v60

    goto/16 :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v4}, Lcom/android/launcher2/CellPositioner;->reset()V

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v54, v0

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v42

    check-cast v42, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v42

    iget v8, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, v42

    iget v10, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v4, v8, v10, v1}, Lcom/android/launcher2/CellLayout;->cellToPoint(III[I)V

    const/4 v4, 0x0

    aget v4, v54, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int v6, v4, v8

    const/4 v4, 0x1

    aget v4, v54, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int v7, v4, v8

    move-object/from16 v0, v59

    instance-of v4, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v4, :cond_11

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v50

    const/4 v4, 0x0

    aget v4, v50, v4

    add-int/2addr v6, v4

    const/4 v4, 0x1

    aget v4, v50, v4

    add-int/2addr v7, v4

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/launcher2/CellPositioner;->prepareChildForDrag(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_4
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static/range {v26 .. v26}, Lcom/android/launcher2/QuickOptionsPopup;->isValidType(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-boolean v4, Lcom/android/launcher2/CellLayout;->mHasSetStartXY:Z

    if-nez v4, :cond_12

    sget-object v4, Lcom/android/launcher2/CellLayout;->sDragStartXY:[I

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    aput v10, v4, v8

    sget-object v4, Lcom/android/launcher2/CellLayout;->sDragStartXY:[I

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    aput v10, v4, v8

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/launcher2/CellLayout;->mHasSetStartXY:Z

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/launcher2/CellLayout;->sIsDraggingWithinQuickOptionsBounds:Z

    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    if-ne v4, v8, :cond_13

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    :cond_13
    move-object/from16 v0, v51

    move-object/from16 v1, v59

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->onDragStartedWithItem(Landroid/view/View;)V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    goto/16 :goto_6

    :pswitch_5
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static/range {v26 .. v26}, Lcom/android/launcher2/QuickOptionsPopup;->isValidType(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget-boolean v4, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    if-eqz v4, :cond_17

    iget-object v4, v5, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v4, v4, Lcom/android/launcher2/CellLayout;

    if-nez v4, :cond_14

    iget-object v4, v5, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v4, v4, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v4, :cond_17

    :cond_14
    sget-boolean v4, Lcom/android/launcher2/CellLayout;->sDeltaOffset:Z

    if-nez v4, :cond_15

    const-string v4, "CellLayout"

    const-string v8, "onDragEvent: Offset delta occurred by scale animation."

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/launcher2/CellLayout;->offsetXYOccurredByScaleAnimation(Lcom/android/launcher2/BaseItem;)V

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/launcher2/CellLayout;->sDeltaOffset:Z

    :cond_15
    sget-object v4, Lcom/android/launcher2/CellLayout;->sDragStartXY:[I

    const/4 v8, 0x0

    aget v4, v4, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v62

    sget-object v4, Lcom/android/launcher2/CellLayout;->sDragStartXY:[I

    const/4 v8, 0x1

    aget v4, v4, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v63

    const-string v4, "CellLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CellLayout.ACTION_DRAG_LOCATION: xDiff = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v62

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", yDiff = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v63

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v62

    int-to-double v10, v0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    move/from16 v0, v63

    int-to-double v12, v0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayout;->mMinimumDistanceToDismissQuickOptions:I

    int-to-double v12, v4

    cmpl-double v4, v10, v12

    if-lez v4, :cond_16

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/CellLayout;->sIsDraggingWithinQuickOptionsBounds:Z

    :cond_16
    sget-boolean v4, Lcom/android/launcher2/CellLayout;->sIsDraggingWithinQuickOptionsBounds:Z

    if-nez v4, :cond_17

    move-object/from16 v4, v59

    check-cast v4, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v4

    if-eqz v4, :cond_17

    const-string v4, "CellLayout"

    const-string v8, "onDragEvent: Dismiss Quick Options Popup on ACTION_DRAG_LOCATION."

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v59

    check-cast v4, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    :cond_17
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    iget-object v4, v5, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-nez v4, :cond_1c

    if-nez v40, :cond_1c

    const/16 v27, 0x1

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/FolderItem;

    if-nez v4, :cond_18

    if-nez v41, :cond_18

    if-eqz v60, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v8, 0x0

    aget v4, v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v10, 0x1

    aget v8, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v58

    if-eqz v58, :cond_18

    move-object/from16 v0, v58

    instance-of v4, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v4, :cond_18

    check-cast v58, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {v58 .. v58}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_18

    const/16 v27, 0x0

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v8, 0x0

    aget v4, v4, v8

    const/4 v8, -0x1

    if-ne v4, v8, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v8, 0x1

    aget v4, v4, v8

    const/4 v8, -0x1

    if-ne v4, v8, :cond_1d

    const/16 v27, 0x0

    :cond_19
    :goto_7
    if-eqz v27, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v4

    if-nez v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    if-nez v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    sget-object v8, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DELAYING:Lcom/android/launcher2/CellLayout$ReorderStatus;

    if-eq v4, v8, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    const/4 v8, 0x2

    aget v4, v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    const/4 v10, 0x0

    aget v8, v8, v10

    if-ne v4, v8, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    const/4 v8, 0x3

    aget v4, v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    const/4 v10, 0x1

    aget v8, v8, v10

    if-eq v4, v8, :cond_1b

    :cond_1a
    invoke-interface/range {v51 .. v51}, Lcom/android/launcher2/CellLayoutContainer;->clearDragOutline()V

    :cond_1b
    move-object/from16 v0, v51

    move-object/from16 v1, v59

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/CellLayoutContainer;->getDragOutline(Landroid/view/View;Lcom/android/launcher2/CellLayout;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    const/4 v8, 0x0

    aget v12, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    const/4 v8, 0x1

    aget v13, v4, v8

    move-object/from16 v8, p0

    move-object/from16 v9, v59

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    :cond_1c
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-nez v4, :cond_9

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mWillCreateFolder:Z

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mWorkSpaceState:Lcom/android/launcher2/Workspace$State;

    sget-object v8, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v8, :cond_19

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    goto/16 :goto_7

    :cond_1e
    sget-boolean v4, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    if-nez v4, :cond_1f

    if-nez v27, :cond_1c

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    goto :goto_8

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move-result-object v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/HomeEditBar;->getNeedDragSkip()Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/android/launcher2/HomeEditBar;->setNeedDragSkip(Z)V

    :cond_20
    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v32

    if-eqz v32, :cond_21

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    :cond_21
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    goto/16 :goto_6

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->resetPreFolderBg()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/LauncherAppWidgetHostView;->sIsDrag:Z

    goto/16 :goto_6

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v56

    const-wide/16 v10, -0x65

    cmp-long v4, v24, v10

    if-nez v4, :cond_23

    const/16 v23, 0x1

    :goto_9
    if-eqz v23, :cond_22

    move-object/from16 v4, v51

    check-cast v4, Lcom/android/launcher2/Hotseat;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v10, 0x0

    aget v8, v8, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v4, v8, v10}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v56

    :cond_22
    sget-boolean v4, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v4, :cond_24

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayout;->mPageType:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_24

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->onEnd()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v8

    iget v8, v8, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v4, v8}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto/16 :goto_6

    :cond_23
    const/16 v23, 0x0

    goto :goto_9

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v8, 0x0

    aget v4, v4, v8

    const/4 v8, -0x1

    if-eq v4, v8, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v8, 0x1

    aget v4, v4, v8

    const/4 v8, -0x1

    if-eq v4, v8, :cond_25

    const/16 v34, 0x1

    :goto_a
    if-eqz v34, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_26

    const/16 v61, 0x1

    :goto_b
    move-object/from16 v0, v59

    instance-of v4, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    if-nez v4, :cond_27

    iget-object v4, v5, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-ne v4, v0, :cond_27

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->onEnd()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    check-cast v59, Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v0, v59

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v4}, Lcom/android/launcher2/CellPositioner;->reset()V

    goto/16 :goto_6

    :cond_25
    const/16 v34, 0x0

    goto :goto_a

    :cond_26
    const/16 v61, 0x0

    goto :goto_b

    :cond_27
    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v42

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v30

    move-object/from16 v0, v42

    instance-of v0, v0, Lcom/android/launcher2/AppItem;

    move/from16 v37, v0

    const/16 v46, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v46

    :cond_28
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v4

    if-eqz v4, :cond_29

    if-eqz v46, :cond_29

    if-eqz v30, :cond_29

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v4

    if-eqz v4, :cond_2d

    if-nez v37, :cond_2d

    move-object/from16 v0, v46

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-nez v4, :cond_2d

    const/16 v39, 0x1

    :cond_29
    :goto_c
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v4

    if-eqz v4, :cond_2a

    if-eqz v46, :cond_2a

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v4

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v4

    sget-object v8, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v8, :cond_2a

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v4, "home_only_locked_items"

    invoke-static/range {v42 .. v42}, Lcom/android/launcher2/BaseItem;->getContainingFolderId(Lcom/android/launcher2/BaseItem;)J

    move-result-wide v10

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v10, v11}, Lcom/android/launcher2/FolderLock;->isLockedFolderId(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_2a

    const/16 v38, 0x1

    :cond_2a
    :goto_d
    move-object/from16 v0, v42

    instance-of v4, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v4, :cond_2b

    move-object/from16 v33, v42

    check-cast v33, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    const/4 v8, 0x0

    aget v4, v4, v8

    move-object/from16 v0, v33

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    const/4 v8, 0x1

    aget v4, v4, v8

    move-object/from16 v0, v33

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v8, 0x0

    aget v4, v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v10, 0x1

    aget v8, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v48

    const/16 v31, 0x0

    if-eqz v48, :cond_2c

    invoke-virtual/range {v48 .. v48}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_2c

    invoke-virtual/range {v48 .. v48}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/BaseItem;

    :cond_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->isBouncingItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-nez v4, :cond_2f

    if-eqz v48, :cond_2f

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v48

    if-eq v0, v4, :cond_2f

    move-object/from16 v0, v48

    instance-of v4, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v4, :cond_2f

    sget-object v4, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_NEED_FIND_DROP_POSITION:Lcom/android/launcher2/CellLayout$ReorderStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v4

    if-eqz v4, :cond_2f

    sget-object v4, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DEFAULT:Lcom/android/launcher2/CellLayout$ReorderStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    goto/16 :goto_6

    :cond_2d
    const/16 v39, 0x0

    goto/16 :goto_c

    :cond_2e
    const-string v4, "home_locked_items"

    invoke-static/range {v42 .. v42}, Lcom/android/launcher2/BaseItem;->getContainingFolderId(Lcom/android/launcher2/BaseItem;)J

    move-result-wide v10

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v10, v11}, Lcom/android/launcher2/FolderLock;->isLockedFolderId(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_2a

    const/16 v38, 0x1

    goto/16 :goto_d

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->resetPreFolderBg()V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher2/CellLayout;->willCreateFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->isBouncingItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-nez v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    sget-object v8, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_NEED_FIND_DROP_POSITION:Lcom/android/launcher2/CellLayout$ReorderStatus;

    if-eq v4, v8, :cond_3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/launcher2/CellLayout;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v4

    if-eqz v4, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v8, 0x0

    aget v4, v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v10, 0x1

    aget v8, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/android/launcher2/CellLayout;->getItemAt(II)Lcom/android/launcher2/BaseItem;

    move-result-object v22

    if-eqz v48, :cond_32

    new-instance v28, Lcom/android/launcher2/DragState;

    move-object/from16 v0, v28

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    const/4 v9, 0x0

    if-eqz v39, :cond_36

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/launcher2/DragState;->createHomeFolderFromDragItem(Lcom/android/launcher2/BaseItem;ZZ)Lcom/android/launcher2/FolderIconView;

    move-result-object v9

    :goto_e
    if-eqz v9, :cond_30

    sget-object v4, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DEFAULT:Lcom/android/launcher2/CellLayout$ReorderStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v12

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v13

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v14

    move-object v8, v5

    invoke-virtual/range {v8 .. v14}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z

    :cond_30
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGameHome()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getGameHomeManager()Lcom/android/launcher2/gamehome/GameHomeManager;

    move-result-object v4

    if-nez v4, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->initGameHomeManager()V

    :cond_31
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getGameHomeManager()Lcom/android/launcher2/gamehome/GameHomeManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v4, v8, v0}, Lcom/android/launcher2/gamehome/GameHomeManager;->startGameHUN(Landroid/content/Context;Ljava/util/List;)V

    :cond_32
    if-eqz v39, :cond_39

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/AppItem;

    if-nez v4, :cond_39

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderMenuItem(Lcom/android/launcher2/FolderItem;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-static {v0, v4, v8, v5}, Lcom/android/launcher2/LockUnlockItemDialog;->createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/launcher2/DragState;)V

    :cond_33
    :goto_f
    sget-object v4, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DEFAULT:Lcom/android/launcher2/CellLayout$ReorderStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    move-object/from16 v0, v51

    instance-of v4, v0, Lcom/android/launcher2/Workspace;

    if-eqz v4, :cond_34

    if-eqz v61, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_34

    move-object/from16 v4, v51

    check-cast v4, Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->turnOffEmptyPageMsg()V

    :cond_34
    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->onDrop()V

    move-object/from16 v0, v59

    instance-of v4, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v4, :cond_35

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v45

    check-cast v45, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object/from16 v55, v59

    check-cast v55, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual/range {v55 .. v55}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_35

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    move-object/from16 v0, v45

    iget v8, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v45

    iget v10, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual/range {v55 .. v55}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v35

    iget v12, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v4, v8, v10, v11, v12}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    :cond_35
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->dissolveFolder(Lcom/android/launcher2/DragState;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v57

    goto/16 :goto_6

    :cond_36
    if-eqz v38, :cond_37

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/launcher2/DragState;->createHomeFolderFromDragItem(Lcom/android/launcher2/BaseItem;ZZ)Lcom/android/launcher2/FolderIconView;

    move-result-object v9

    goto/16 :goto_e

    :cond_37
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/launcher2/DragState;->createHomeFolderFromDragItem(Lcom/android/launcher2/BaseItem;ZZ)Lcom/android/launcher2/FolderIconView;

    move-result-object v9

    goto/16 :goto_e

    :cond_38
    sget-object v4, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_NEED_FIND_DROP_POSITION:Lcom/android/launcher2/CellLayout$ReorderStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_39
    if-eqz v38, :cond_33

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderMenuItem(Lcom/android/launcher2/FolderItem;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lcom/android/launcher2/LockUnlockItemDialog;->createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;)V

    goto/16 :goto_f

    :cond_3a
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v49, v0

    const/4 v4, 0x0

    invoke-virtual/range {v42 .. v42}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v8

    aput v8, v49, v4

    const/4 v4, 0x1

    invoke-virtual/range {v42 .. v42}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v8

    aput v8, v49, v4

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v4

    if-eqz v4, :cond_3b

    const/4 v4, 0x0

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v8

    aput v8, v49, v4

    const/4 v4, 0x1

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v8

    aput v8, v49, v4

    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v8, 0x0

    aget v11, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragViewCenter:[I

    const/4 v8, 0x1

    aget v12, v4, v8

    const/4 v4, 0x0

    aget v13, v49, v4

    const/4 v4, 0x1

    aget v14, v49, v4

    invoke-virtual/range {v42 .. v42}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v15

    invoke-virtual/range {v42 .. v42}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v16

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v10 .. v20}, Lcom/android/launcher2/CellPositioner;->performReorder(IIIIIILandroid/view/View;[I[II)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->commitTempPlacement(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v8, 0x0

    aget v12, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v8, 0x1

    aget v13, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    const/4 v8, 0x0

    aget v14, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    const/4 v8, 0x1

    aget v15, v4, v8

    const/16 v17, 0x1

    move-object v10, v5

    move-object/from16 v11, p0

    move/from16 v16, v56

    invoke-virtual/range {v10 .. v17}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/AppItem;

    if-eqz v4, :cond_3c

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getReceiver()Lcom/android/launcher2/DragReceivable;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickOptionsHelpView()Lcom/android/launcher2/QuickOptionsHelpView;

    move-result-object v53

    if-eqz v53, :cond_3c

    invoke-virtual/range {v53 .. v53}, Lcom/android/launcher2/QuickOptionsHelpView;->show()V

    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v4

    sget-object v8, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v8, :cond_3d

    move-object/from16 v0, v59

    instance-of v4, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v4, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    move-object/from16 v4, v59

    check-cast v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    invoke-virtual {v8, v4, v0}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v4

    move/from16 v0, v56

    if-eq v0, v4, :cond_3e

    new-instance v47, Landroid/os/Handler;

    invoke-direct/range {v47 .. v47}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/launcher2/CellLayout$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/launcher2/CellLayout$5;-><init>(Lcom/android/launcher2/CellLayout;)V

    const-wide/16 v10, 0xa

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3e
    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v29

    if-eqz v29, :cond_3f

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/AppItem;

    if-nez v4, :cond_3f

    if-eqz v46, :cond_3f

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/launcher2/FolderLock;->isShouldHideBar(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-nez v4, :cond_3f

    if-eqz v39, :cond_3f

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderHomeItem(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderMenuItem(Lcom/android/launcher2/FolderItem;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-static {v0, v4, v8, v5}, Lcom/android/launcher2/LockUnlockItemDialog;->createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/launcher2/DragState;)V

    goto/16 :goto_f

    :cond_3f
    if-eqz v38, :cond_33

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderHomeItem(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderMenuItem(Lcom/android/launcher2/FolderItem;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lcom/android/launcher2/LockUnlockItemDialog;->createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;)V

    goto/16 :goto_f

    :cond_40
    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v42

    const/16 v52, 0x0

    invoke-static/range {v42 .. v42}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_41

    move-object/from16 v0, v42

    instance-of v4, v0, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v4, :cond_41

    move-object/from16 v52, v42

    check-cast v52, Lcom/android/launcher2/HomePendingWidget;

    :cond_41
    if-eqz v52, :cond_42

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Lcom/android/launcher2/HomeView;->checkSingleInstanceAppWidget(Lcom/android/launcher2/HomePendingWidget;)Z

    move-result v4

    if-eqz v4, :cond_42

    const-string v4, "CellLayout"

    const-string v8, "CellLayout noRoomForDrop ----checkSingleInstanceAppWidget() true"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v4

    if-eqz v4, :cond_35

    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/launcher2/HomePendingWidget;->mBoundWidget:Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v4

    move-object/from16 v0, v52

    iget-object v8, v0, Lcom/android/launcher2/HomePendingWidget;->mBoundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v8}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v44

    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/launcher2/HomePendingWidget;->mBoundWidget:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    const/4 v4, 0x0

    move-object/from16 v0, v52

    iput-object v4, v0, Lcom/android/launcher2/HomePendingWidget;->mBoundWidget:Landroid/appwidget/AppWidgetHostView;

    goto/16 :goto_10

    :cond_42
    if-eqz v52, :cond_43

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v8, 0x7f09008f

    const/4 v10, 0x0

    invoke-static {v4, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10

    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v8, 0x7f09008e

    const/4 v10, 0x0

    invoke-static {v4, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10

    :pswitch_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->resetPreFolderBg()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    move-object/from16 v0, v51

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->onEnd()V

    sget-object v4, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    if-eqz v4, :cond_44

    sget-object v4, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->onEnd()V

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/LauncherAppWidgetHostView;->sIsDrag:Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/launcher2/CellLayout;->sDragStartXY:[I

    const/4 v8, 0x0

    sget-object v10, Lcom/android/launcher2/CellLayout;->sDragStartXY:[I

    const/4 v11, 0x1

    const/4 v12, -0x1

    aput v12, v10, v11

    aput v12, v4, v8

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/CellLayout;->sIsDraggingWithinQuickOptionsBounds:Z

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/CellLayout;->sDeltaOffset:Z

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/CellLayout;->mHasSetStartXY:Z

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method onDragExit()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->reset()V

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, -0x1

    aput v3, v2, v5

    aput v3, v1, v4

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    aput v4, v2, v5

    aput v4, v1, v4

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v10

    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->postInvalidate()V

    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->isGridSelectMenuOpened()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    int-to-double v14, v13

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v14, v14, v16

    double-to-int v9, v14

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    int-to-double v14, v13

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v14, v14, v16

    double-to-int v6, v14

    :goto_0
    const/high16 v13, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v5, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    div-int/lit8 v14, v9, 0x2

    sub-int v11, v13, v14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v13, v14

    add-int/2addr v11, v13

    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v13, v3, -0x1

    if-gt v2, v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    div-int/lit8 v14, v6, 0x2

    sub-int v12, v13, v14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsFolderDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x2

    if-ge v4, v13, :cond_3

    const/4 v8, 0x1

    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-gt v7, v8, :cond_5

    add-int v13, v11, v9

    add-int v14, v12, v6

    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v8, v4, -0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x1

    :goto_4
    add-int/lit8 v13, v4, -0x1

    if-gt v7, v13, :cond_5

    add-int v13, v11, v9

    add-int v14, v12, v6

    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v13, v14

    add-int/2addr v11, v13

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method public onFailedDrop(Lcom/android/launcher2/BaseItem;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportEmptyMsg()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110115

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/launcher2/CellLayout;->mEmptyMessageColor:I

    const/4 v0, 0x1

    sput v0, Lcom/android/launcher2/CellLayout;->mEmptyMessageColorType:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/launcher2/CellLayout;->mEmptyMessageColor:I

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/CellLayout;->mEmptyMessageColorType:I

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayout;->setTagToCellInfoForPoint(II)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v5

    sub-int v6, p4, p2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v7, p5, p3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v8, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    if-nez v17, :cond_3

    const/high16 v17, -0x80000000

    :cond_0
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    if-nez v11, :cond_5

    const/high16 v11, -0x80000000

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v18

    sub-int v18, v16, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v19

    sub-int v7, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v18

    sub-int v18, v10, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v19

    sub-int v5, v18, v19

    move/from16 v0, v17

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v9

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v9, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v4, v0, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    sget-boolean v18, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v18, :cond_4

    move/from16 v0, v16

    if-le v0, v15, :cond_4

    const-string v18, "CellLayout"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".onMeasure. Parent maxWidth: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; setting to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move/from16 v0, v16

    if-ge v0, v15, :cond_0

    move/from16 v16, v15

    goto/16 :goto_0

    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    sget-boolean v18, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v18, :cond_6

    if-le v10, v14, :cond_6

    const-string v18, "CellLayout"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".onMeasure. Parent maxHeight: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; setting to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    if-ne v11, v0, :cond_1

    if-ge v10, v14, :cond_1

    move v10, v14

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/high16 v19, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/high16 v20, -0x80000000

    move/from16 v0, v20

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->measureChild(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    move/from16 v18, v0

    sub-int v18, v10, v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    move/from16 v18, v0

    sub-int v18, v16, v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    :cond_8
    return-void
.end method

.method public onPreReorderAnimation(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->updateGlowRect()V

    return-void
.end method

.method public onStateAnimationEnd(Lcom/android/launcher2/Workspace$State;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    aget v0, v0, v8

    float-to-int v2, v0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    aget v0, v0, v7

    float-to-int v3, v0

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, v0, p0}, Lcom/android/launcher2/CellLayoutContainer;->getDragOutline(Landroid/view/View;Lcom/android/launcher2/CellLayout;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    aget v4, v0, v8

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragSpan:[I

    aget v5, v0, v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mWorkSpaceState:Lcom/android/launcher2/Workspace$State;

    sput-boolean v7, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    return-void
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeItem;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x64

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget v3, v8, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v4, v8, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v5, v8, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v6, v8, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setId(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    return-void
.end method

.method pointToCellExact(III[I)V
    .locals 9

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v8, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/CellLayout;->pointToCellExact(III[IIIII)V

    return-void
.end method

.method pointToCellExact(III[IIIII)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    sub-int v2, p1, v0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    aput v2, p4, v5

    sub-int v2, p2, v1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    aput v2, p4, v6

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    aget v3, p4, v5

    sub-int/2addr v2, v3

    sub-int/2addr v2, p3

    aput v2, p4, v5

    :cond_0
    aget v2, p4, v5

    if-ge v2, p5, :cond_1

    aput p5, p4, v5

    :cond_1
    aget v2, p4, v5

    if-lt v2, p6, :cond_2

    add-int/lit8 v2, p6, -0x1

    aput v2, p4, v5

    :cond_2
    aget v2, p4, v6

    if-ge v2, p7, :cond_3

    aput p7, p4, v6

    :cond_3
    aget v2, p4, v6

    if-lt v2, p8, :cond_4

    add-int/lit8 v2, p8, -0x1

    aput v2, p4, v6

    :cond_4
    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 9

    const/4 v5, 0x0

    const/4 v3, 0x1

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v8, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/CellLayout;->pointToCellExact(III[IIIII)V

    return-void
.end method

.method pointToCellPartial(III[IIIII)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v2

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v3

    sub-int p1, v3, p1

    :cond_0
    sub-int v3, p1, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float v1, v3, v4

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p4, v3

    const/4 v3, 0x1

    sub-int v4, p2, v2

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p4, v3

    const/4 v3, 0x0

    aget v3, p4, v3

    if-ge v3, p5, :cond_1

    const/4 v3, 0x0

    aput p5, p4, v3

    :cond_1
    const/4 v3, 0x0

    aget v3, p4, v3

    if-le v3, p6, :cond_2

    const/4 v3, 0x0

    aput p6, p4, v3

    :cond_2
    const/4 v3, 0x1

    aget v3, p4, v3

    if-ge v3, p7, :cond_3

    const/4 v3, 0x1

    aput p7, p4, v3

    :cond_3
    const/4 v3, 0x1

    aget v3, p4, v3

    if-lt v3, p8, :cond_4

    const/4 v3, 0x1

    add-int/lit8 v4, p8, -0x1

    aput v4, p4, v3

    :cond_4
    return-void
.end method

.method pointToCellPartial(II[I)V
    .locals 9

    const/4 v5, 0x0

    const/4 v3, 0x1

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v8, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/CellLayout;->pointToCellPartial(III[IIIII)V

    return-void
.end method

.method realRemoveView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method refreshCellDimension()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIIII)V

    return-void
.end method

.method regionToCenterPoint(IIII[I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v2

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    sub-int/2addr v3, p1

    sub-int v1, v3, p3

    :goto_0
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v5, p3

    add-int/lit8 v6, p3, -0x1

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    aput v4, p5, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v5, p4

    add-int/lit8 v6, p4, -0x1

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    aput v4, p5, v3

    return-void

    :cond_0
    move v1, p1

    goto :goto_0
.end method

.method regionToRect(IIIILandroid/graphics/Rect;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v4

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    sub-int/2addr v5, p1

    sub-int v2, v5, p3

    :goto_0
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v2

    add-int v1, v0, v5

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v5, v6

    mul-int/2addr v5, p2

    add-int v3, v4, v5

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v5, p3

    add-int/lit8 v6, p3, -0x1

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v6, p4

    add-int/lit8 v7, p4, -0x1

    iget v8, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    invoke-virtual {p5, v1, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    move v2, p1

    goto :goto_0
.end method

.method public removeAllItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllItems()V

    return-void
.end method

.method public removeAllViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllItemsInLayout()V

    :cond_0
    return-void
.end method

.method public removeAllViewsOnPage()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    return-void
.end method

.method public removeChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellPositioner;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;Z)Z

    move-result v1

    return v1
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeItem(Lcom/android/launcher2/BaseItem;Z)Z

    move-result v0

    return v0
.end method

.method public removeOldItem(Lcom/android/launcher2/BaseItem;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeOldItem(Lcom/android/launcher2/BaseItem;Z)Z

    move-result v0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeViewAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewAt(I)V

    return-void
.end method

.method public removeViews(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViewsInLayout(II)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellLayout;->cleanupReorder(Z)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v0}, Lcom/android/launcher2/CellPositioner;->revertTempState()V

    :cond_0
    return-void
.end method

.method protected resetPreFolderBg()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    return-void
.end method

.method public restoreGridSize(II)V
    .locals 3

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-eq v0, p2, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mTempCountX:I

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mTempCountY:I

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v0}, Lcom/android/launcher2/CellPositioner;->changeGridSize()V

    :cond_1
    sget-boolean v0, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v0, :cond_2

    const-string v0, "CellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreGridSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setImportantForAccessibility(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    instance-of v4, v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout;->setChildrenAlpha(F)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public setBackgroundAlpha(F)V
    .locals 2

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public setCellSize(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public setCrosshairsVisibility(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->cancel()V

    :cond_0
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    return-void
.end method

.method public setEmptyMessageColor(II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez p2, :cond_1

    const v4, 0x7f0c0063

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v1, v4

    const v4, 0x7f0c0062

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v0, v4

    const v4, 0x7f0e0001

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v0, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    sput p1, Lcom/android/launcher2/CellLayout;->mEmptyMessageColor:I

    sput p2, Lcom/android/launcher2/CellLayout;->mEmptyMessageColorType:I

    :cond_0
    return-void

    :cond_1
    const v4, 0x7f0c0061

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v1, v4

    const v4, 0x7f0c0060

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v0, v4

    const v4, 0x7f0e002e

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    goto :goto_0
.end method

.method public setEmptyMessageVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/android/launcher2/CellLayout;->mEmptyMessageColor:I

    sget v1, Lcom/android/launcher2/CellLayout;->mEmptyMessageColorType:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->setEmptyMessageColor(II)V

    goto :goto_0
.end method

.method public setGaps(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    iput p2, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    return-void
.end method

.method public setGridSize(II)V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mTempCountX:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mTempCountY:I

    if-eq v0, v2, :cond_5

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mTempCountX:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mTempCountY:I

    if-eq v0, v2, :cond_6

    :cond_1
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mTempCountX:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mTempCountY:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/launcher2/CellLayout;->gridSizeChanged(IIII)V

    :cond_2
    :goto_0
    iput v2, p0, Lcom/android/launcher2/CellLayout;->mTempCountX:I

    iput v2, p0, Lcom/android/launcher2/CellLayout;->mTempCountY:I

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->refreshCellDimension()V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual {v0}, Lcom/android/launcher2/CellPositioner;->changeGridSize()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    sget-boolean v0, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v0, :cond_5

    const-string v0, "CellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGridSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")   ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getObjectType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/launcher2/CellLayout;->gridSizeChanged(IIII)V

    goto :goto_0
.end method

.method public setHomeView(Lcom/android/launcher2/HomeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    return-void
.end method

.method public setHoverAlpha(F)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    return-void
.end method

.method public setHoverScale(F)V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->updateGlowRect()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIconAutoAlign()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher2/CellLayoutChildren;->gridChange:Z

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher2/CellLayoutChildren;->makePreviousRectMap(Landroid/view/View;F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    return-void
.end method

.method setIsDragOccuring(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIsPaused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsPaused:Z

    return-void
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V
    .locals 11

    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    move-wide/from16 v2, p7

    move/from16 v4, p6

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v0, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v0, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v0, v1, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v0, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget v0, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v0, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    return-void
.end method

.method public setNoNeedToDraw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mNoNeedToDraw:Z

    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setPageType(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mPageType:I

    return-void
.end method

.method protected setPreFolderBg(Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/BaseItem;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    if-eqz v17, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/launcher2/AppIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_4

    const v9, 0x3f933333    # 1.15f

    const/high16 v8, 0x3fa00000    # 1.25f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v12

    const/4 v15, 0x0

    const-wide/16 v18, -0x66

    cmp-long v3, v12, v18

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v3

    sget-object v18, Lcom/android/launcher2/IconConfig$TYPE;->MENU:Lcom/android/launcher2/IconConfig$TYPE;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v15

    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v10

    int-to-float v3, v15

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v3, v3, v18

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v6, v3, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    sub-int/2addr v3, v15

    int-to-float v3, v3

    const/high16 v18, 0x40000000    # 2.0f

    div-float v4, v3, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v3

    int-to-float v5, v3

    cmpg-float v3, v4, v5

    if-gez v3, :cond_7

    move/from16 v16, v4

    :goto_1
    int-to-float v3, v15

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v16

    add-float v3, v3, v18

    int-to-float v0, v15

    move/from16 v18, v0

    div-float v7, v3, v18

    const v3, 0x3f933333    # 1.15f

    cmpg-float v3, v7, v3

    if-gez v3, :cond_8

    const v7, 0x3f933333    # 1.15f

    :cond_1
    :goto_2
    sget-boolean v3, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v3, :cond_2

    const-string v3, "PreFolderDrawable"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] mode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", scaleFactor = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Lcom/android/launcher2/PreFolderDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/PreFolderDrawable;-><init>(Landroid/content/Context;FFFF)V

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/BaseItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0900d7

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    iget-object v0, v11, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, ", "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0900df

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v3, v0, v14, v1}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/AppIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void

    :cond_5
    const-wide/16 v18, -0x65

    cmp-long v3, v12, v18

    if-nez v3, :cond_6

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v3

    sget-object v18, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v15

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v3

    sget-object v18, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v15

    goto/16 :goto_0

    :cond_7
    move/from16 v16, v5

    goto/16 :goto_1

    :cond_8
    const/high16 v3, 0x3fa00000    # 1.25f

    cmpl-float v3, v7, v3

    if-lez v3, :cond_1

    const/high16 v7, 0x3fa00000    # 1.25f

    goto/16 :goto_2
.end method

.method public setTagToCellInfoForPoint(II)V
    .locals 13

    const/4 v12, 0x1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScrollX()I

    move-result v10

    add-int/2addr v10, p1

    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getScrollX()I

    move-result v11

    add-int v8, v10, v11

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScrollY()I

    move-result v10

    add-int/2addr v10, p2

    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getScrollY()I

    move-result v11

    add-int v9, v10, v11

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    add-int/lit8 v5, v3, -0x1

    :goto_0
    if-ltz v5, :cond_1

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    if-eqz v10, :cond_4

    :cond_0
    iget-boolean v10, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v10, :cond_4

    const/high16 v7, 0x3f800000    # 1.0f

    instance-of v10, v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v10, :cond_3

    move-object v10, v2

    check-cast v10, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getresizeResult()Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v10

    iget v7, v10, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    invoke-virtual {v6, v8, v9, v7}, Lcom/android/launcher2/CellLayout$LayoutParams;->containsPtwithScale(IIF)Z

    move-result v10

    if-eqz v10, :cond_4

    iput-object v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget v10, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v10, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    iget v10, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    iget v10, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    const/4 v4, 0x1

    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    if-nez v4, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    invoke-virtual {p0, v8, v9, v12, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(III[I)V

    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v10, 0x0

    aget v10, v1, v10

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    aget v10, v1, v12

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    iput v12, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    iput v12, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {v6, v8, v9}, Lcom/android/launcher2/CellLayout$LayoutParams;->containsPt(II)Z

    move-result v10

    if-eqz v10, :cond_4

    iput-object v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget v10, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v10, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    iget v10, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    iget v10, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public show(Lcom/android/launcher2/BaseItem;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/CellLayoutChildren;->setItemVisibility(Lcom/android/launcher2/BaseItem;I)V

    return-void
.end method

.method public spanToPixel(II)[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p2

    add-int/lit8 v3, p2, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public updateItem(Lcom/android/launcher2/BaseItem;)V
    .locals 4

    instance-of v3, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v3, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v3, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    :cond_0
    return-void
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    const/4 v12, 0x0

    aget v12, p3, v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    const/4 v12, 0x1

    aget v12, p3, v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v12, 0x0

    aget v12, v4, v12

    const/4 v13, 0x0

    aget v13, p3, v13

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    aget v12, v4, v12

    const/4 v13, 0x1

    aget v13, p3, v13

    if-ne v12, v13, :cond_2

    const/4 v12, 0x2

    aget v12, v4, v12

    move/from16 v0, p4

    if-ne v12, v0, :cond_2

    const/4 v12, 0x3

    aget v12, v4, v12

    move/from16 v0, p5

    if-eq v12, v0, :cond_0

    :cond_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    aget v13, p3, v13

    aput v13, v4, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget v13, p3, v13

    aput v13, v4, v12

    const/4 v12, 0x2

    aput p4, v4, v12

    const/4 v12, 0x3

    aput p5, v4, v12

    if-nez p2, :cond_3

    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    const/4 v12, 0x0

    aget v12, p3, v12

    const/4 v13, 0x1

    aget v13, p3, v13

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v12, v13, v1, v10}, Lcom/android/launcher2/CellLayout;->cellToPoint(III[I)V

    const/4 v12, 0x0

    aget v5, v10, v12

    const/4 v12, 0x1

    aget v9, v10, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v8

    move-object/from16 v0, p0

    instance-of v12, v0, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/IconMoveContainer;->getIconSize()I

    move-result v3

    move v11, v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    add-int/lit8 v9, v9, 0x3

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    sub-int/2addr v12, v11

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v5, v12

    :cond_5
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    add-int/lit8 v12, v6, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v13, v13

    rem-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v12, v12, v13

    add-int v13, v5, v11

    add-int v14, v9, v3

    invoke-virtual {v12, v5, v9, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v12, v12, v13

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_6

    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_6

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v12, v12, Lcom/android/launcher2/PagedView;

    if-eqz v12, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0900db

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x1

    aget v16, v4, v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aget v16, v4, v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedView;

    invoke-virtual {v7}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v12

    if-nez v12, :cond_6

    sget-object v12, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v12, v2}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto/16 :goto_0

    :cond_7
    instance-of v12, v8, Lcom/android/launcher2/Workspace;

    if-eqz v12, :cond_a

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v12, v13}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v3

    move v11, v3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v12, v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a010c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v9, v12

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a01d6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v9, v12

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a010c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v9, v12

    goto/16 :goto_1

    :cond_a
    instance-of v12, v8, Lcom/android/launcher2/Hotseat;

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v12, v13}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v3

    move v11, v3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a012f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v9, v12

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHotseatGridSize()Lcom/android/launcher2/LauncherApplication$HotseatGridSize;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/LauncherApplication$HotseatGridSize;->FULL:Lcom/android/launcher2/LauncherApplication$HotseatGridSize;

    if-eq v12, v13, :cond_c

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq v12, v13, :cond_d

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a012f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v9, v12

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a01e0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v9, v12

    goto/16 :goto_1

    :cond_e
    instance-of v12, v8, Lcom/android/launcher2/Folder;

    if-nez v12, :cond_11

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/IconConfig$TYPE;->MENU:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v12, v13}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v3

    move v11, v3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v12, v13, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a01e8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v9, v12

    goto/16 :goto_1

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a016e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v9, v12

    goto/16 :goto_1

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a016e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v9, v12

    goto/16 :goto_1

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0224

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v9, v12

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a02b6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v9, v12

    goto/16 :goto_1

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v12, v12, Lcom/android/launcher2/Hotseat;

    if-eqz v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0900d6

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget v16, v4, v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v12, v2}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public willCreateFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-eqz p2, :cond_3

    instance-of v6, p2, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v6, :cond_3

    move-object v2, p2

    check-cast v2, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v7

    if-eq v6, v7, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_3

    :cond_2
    const/4 v4, 0x0

    :cond_3
    instance-of v6, p0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v6, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/Hotseat;

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Hotseat;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getDragInContentArea()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v3, 0x0

    :cond_4
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/FolderIconView;

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/HomePendingItem;

    if-nez v6, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v6

    if-eq p2, v6, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    instance-of v6, p2, Lcom/android/launcher2/FolderIconView;

    if-nez v6, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/HomeWidgetItem;

    if-nez v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method
