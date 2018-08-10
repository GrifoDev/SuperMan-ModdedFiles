.class public Landroid/widget/SemExpandableListView;
.super Landroid/widget/ListView;
.source "SemExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemExpandableListView$1;,
        Landroid/widget/SemExpandableListView$2;,
        Landroid/widget/SemExpandableListView$CollapsingRect;,
        Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;,
        Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/SemExpandableListView$ExpandingRect;,
        Landroid/widget/SemExpandableListView$IndicatorImageView;,
        Landroid/widget/SemExpandableListView$OnChildClickListener;,
        Landroid/widget/SemExpandableListView$OnGroupClickListener;,
        Landroid/widget/SemExpandableListView$OnGroupCollapseListener;,
        Landroid/widget/SemExpandableListView$OnGroupExpandListener;,
        Landroid/widget/SemExpandableListView$SavedState;,
        Landroid/widget/SemExpandableListView$ViewInfo;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_COLLAPSING:I = 0x3

.field private static final ANIMATION_STATE_COLLAPSING_ALL:I = 0x5

.field private static final ANIMATION_STATE_EXPANDING:I = 0x2

.field private static final ANIMATION_STATE_EXPANDING_ALL:I = 0x4

.field private static final ANIMATION_STATE_IDLE:I = 0x1

.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final COLLAPSE_ALL_PENDING:I = 0x2

.field private static final DEBUGGABLE_LOW:Z

.field private static final DECORATED_VIEW_TAG:I = 0x7a0a1eff

.field private static final EMPTY_STATE_SET:[I

.field private static final EXPAND_ALL_PENDING:I = 0x1

.field private static final EXPAND_COLLAPSE_ALL_IDLE:I = 0x0

.field private static final EXPAND_COLLAPSE_BASE_DURATION:I = 0x2bc

.field private static EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field private static final EXPAND_COLLAPSE_MIN_DURATION:I = 0x96

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field public static final INDICATOR_ANIMATION_TYPE_MORPH:I = 0x2

.field public static final INDICATOR_ANIMATION_TYPE_ROTATE:I = 0x1

.field private static final INDICATOR_UNDEFINED:I = -0x2

.field private static final PACKED_POSITION_FOOTER_VIEW_BASE:J = -0x100000000L

.field private static final PACKED_POSITION_GROUP_FOOTER_TYPE:I = -0x3

.field private static final PACKED_POSITION_GROUP_HEADER_TYPE:I = -0x2

.field private static final PACKED_POSITION_HEADER_VIEW_BASE:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL

.field private static final TAG:Ljava/lang/String;

.field private static mExpandInterpolator:Landroid/view/animation/ElasticCustom;


# instance fields
.field private final COLLAPSE_CONTENT_DESCRIPTION:Ljava/lang/String;

.field private final DEBUGGABLE:Z

.field private final EXPAND_CONTENT_DESCRIPTION:Ljava/lang/String;

.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mAnimationEnabled:Z

.field private mAnimationState:I

.field private mBitmapUpdateBounds:Landroid/graphics/Rect;

.field mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mBlockTouchEvent:Z

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorEnd:I

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mChildIndicatorStart:I

.field private mCollapsedGroupTopEnd:I

.field private mCollapsedGroupTopStart:I

.field private mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

.field private mConnector:Landroid/widget/SemExpandableListConnector;

.field private mExpListDividerHeight:[I

.field private mExpandCollapseAllState:I

.field private mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

.field private mGhostExpandCollapseChildViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemExpandableListView$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGhostViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemExpandableListView$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGhostViewsVisibleArea:Landroid/graphics/RectF;

.field private mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mGroupIndicatorHeight:I

.field private mGroupIndicatorWidth:I

.field private mIndicatorAnimationType:I

.field private mIndicatorEnd:I

.field private mIndicatorGravity:I

.field private mIndicatorLeft:I

.field public mIndicatorPaddingHeight:F

.field private mIndicatorPaddingLeft:I

.field private mIndicatorPaddingRight:I

.field private mIndicatorRight:I

.field private mIndicatorStart:I

.field private mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

.field private mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

.field private mRotationAngle:I

.field private mTranslationOffset:I

.field private mViewSnapshots:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/widget/SemExpandableListView$ViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/widget/SemExpandableListView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->COLLAPSE_CONTENT_DESCRIPTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Landroid/widget/SemExpandableListView;->DEBUGGABLE_LOW:Z

    return v0
.end method

.method static synthetic -get10(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get11(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    return v0
.end method

.method static synthetic -get12(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    return v0
.end method

.method static synthetic -get13(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    return v0
.end method

.method static synthetic -get14(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    return v0
.end method

.method static synthetic -get15(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$CollapsingRect;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    return-object v0
.end method

.method static synthetic -get16(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    return-object v0
.end method

.method static synthetic -get17(Landroid/widget/SemExpandableListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get18(Landroid/widget/SemExpandableListView;)[I
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    return-object v0
.end method

.method static synthetic -get19()Landroid/view/animation/ElasticCustom;
    .locals 1

    sget-object v0, Landroid/widget/SemExpandableListView;->mExpandInterpolator:Landroid/view/animation/ElasticCustom;

    return-object v0
.end method

.method static synthetic -get2()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/widget/SemExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get20(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$ExpandingRect;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    return-object v0
.end method

.method static synthetic -get21(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get22(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic -get24(Landroid/widget/SemExpandableListView;)[Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic -get25(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get26(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorHeight:I

    return v0
.end method

.method static synthetic -get27(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorWidth:I

    return v0
.end method

.method static synthetic -get28(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    return v0
.end method

.method static synthetic -get29(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/SemExpandableListView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->EXPAND_CONTENT_DESCRIPTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get30(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    return v0
.end method

.method static synthetic -get31(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingLeft:I

    return v0
.end method

.method static synthetic -get32(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingRight:I

    return v0
.end method

.method static synthetic -get33(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    return v0
.end method

.method static synthetic -get34(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupCollapseListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    return-object v0
.end method

.method static synthetic -get35(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupExpandListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    return-object v0
.end method

.method static synthetic -get36(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic -get37(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic -get38(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    return v0
.end method

.method static synthetic -get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic -get4()[I
    .locals 1

    sget-object v0, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    return-object v0
.end method

.method static synthetic -get5()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/SemExpandableListView;)Landroid/widget/ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    return v0
.end method

.method static synthetic -get8(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get9(Landroid/widget/SemExpandableListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemExpandableListView;->mBottom:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/SemExpandableListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    return p1
.end method

.method static synthetic -set1(Landroid/widget/SemExpandableListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    return p1
.end method

.method static synthetic -set2(Landroid/widget/SemExpandableListView;[Landroid/widget/SemExpandableListView$ExpandingRect;)[Landroid/widget/SemExpandableListView$ExpandingRect;
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    return-object p1
.end method

.method static synthetic -set3(Landroid/widget/SemExpandableListView;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic -set4(Landroid/widget/SemExpandableListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/SemExpandableListView;I)Landroid/animation/Animator;
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getSelectorRectAnim(I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/SemExpandableListView;->createViewSnapshotAnimationReverse(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/widget/SemExpandableListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resetExpandAnimationState()V

    return-void
.end method

.method static synthetic -wrap11(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemExpandableListView;->startIndicatorAnimation(Landroid/view/View;ZI)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/SemExpandableListView;->createViewSnapshotAnimation(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getDivider(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getIndicator(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/widget/SemExpandableListView;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/widget/SemExpandableListView;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/widget/SemExpandableListView;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Landroid/widget/SemExpandableListView;)I
    .locals 1

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getLastNonFooterPosition()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Landroid/widget/SemExpandableListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resetCollapseAnimationState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const v2, 0x10100a9

    const v1, 0x10100a8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/widget/SemExpandableListView;->DEBUGGABLE_LOW:Z

    new-array v0, v3, [I

    sput-object v0, Landroid/widget/SemExpandableListView;->EMPTY_STATE_SET:[I

    new-array v0, v4, [I

    aput v1, v0, v3

    sput-object v0, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    new-array v0, v4, [I

    aput v2, v0, v3

    sput-object v0, Landroid/widget/SemExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    filled-new-array {v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Landroid/widget/SemExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/SemExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/SemExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/widget/SemExpandableListView;->GROUP_STATE_SETS:[[I

    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Landroid/widget/SemExpandableListView;->CHILD_LAST_STATE_SET:[I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/widget/SemExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v5, v1}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    sput-object v0, Landroid/widget/SemExpandableListView;->mExpandInterpolator:Landroid/view/animation/ElasticCustom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    const/4 v2, 0x3

    const/4 v4, -0x2

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v5, p0, Landroid/widget/SemExpandableListView;->DEBUGGABLE:Z

    iput-boolean v5, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    iput-boolean v6, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    iput v5, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    iput v5, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    iput v5, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    iput v5, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingLeft:I

    iput v5, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingRight:I

    iput v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    const/16 v1, 0xb4

    iput v1, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    iput v6, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    iput v5, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    iput v6, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    new-instance v1, Landroid/widget/SemExpandableListView$1;

    invoke-direct {v1, p0}, Landroid/widget/SemExpandableListView$1;-><init>(Landroid/widget/SemExpandableListView;)V

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    new-instance v1, Landroid/widget/SemExpandableListView$2;

    invoke-direct {v1, p0}, Landroid/widget/SemExpandableListView$2;-><init>(Landroid/widget/SemExpandableListView;)V

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->isRtlCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    if-nez v1, :cond_2

    new-array v1, v6, [I

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    :cond_2
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040318

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x1040319

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->EXPAND_CONTENT_DESCRIPTION:Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040317

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x1040319

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemExpandableListView;->COLLAPSE_CONTENT_DESCRIPTION:Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorWidth:I

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicatorHeight:I

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingHeight:F

    return-void
.end method

.method private captureViewsPriorAnimation()V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int v7, v3, v2

    invoke-virtual {p0, v7}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Landroid/widget/SemExpandableListView$ViewInfo;

    invoke-direct {v6, v0}, Landroid/widget/SemExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    iget-object v7, v6, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private collapseAllGroups()V
    .locals 3

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->collapseGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createViewSnapshotAnimation(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 8

    const/4 v7, 0x0

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    iget v4, p2, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    iget v5, p2, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    iget v6, p2, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v7, p1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    const-string/jumbo v4, "bounds"

    sget-object v5, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private createViewSnapshotAnimationReverse(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    .locals 8

    const/4 v7, 0x0

    new-instance v1, Landroid/graphics/Rect;

    iget v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    iget v4, p2, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    iget v5, p2, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    iget v6, p2, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v7, p1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, p2, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    const-string/jumbo v4, "bounds"

    sget-object v5, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private drawGhostViews(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget v6, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    :cond_1
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    iget-object v6, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget v6, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    iget-object v6, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_3
    iget v6, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    array-length v2, v6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_6

    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    aget-object v6, v6, v1

    if-nez v6, :cond_4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/widget/SemExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    goto :goto_3

    :cond_5
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/widget/SemExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    iget-object v6, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_7
    iget v6, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_b

    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    array-length v2, v6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_a

    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    aget-object v6, v6, v1

    if-nez v6, :cond_8

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_9

    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/widget/SemExpandableListView$CollapsingRect;->destinationRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    goto :goto_6

    :cond_9
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/widget/SemExpandableListView$CollapsingRect;->destinationRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    const/4 v0, 0x1

    goto :goto_6

    :cond_a
    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    iget-object v6, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    :cond_b
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private expandAllGroups()V
    .locals 3

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/SemExpandableListConnector;->expandGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Landroid/widget/SemExpandableListPosition;)J
    .locals 3

    iget v0, p1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDivider(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getExpandedState()[Z
    .locals 7

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getLastNonFooterPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    new-array v0, v6, [Z

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v2, :cond_0

    iget-object v6, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v6, v1}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v6

    aput-boolean v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getHeaderFooterPackedPosition(I)J
    .locals 8

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    move v2, p1

    int-to-long v4, p1

    const-wide v6, 0x7fffffff00000000L

    or-long/2addr v4, v6

    return-wide v4

    :cond_0
    iget v3, p0, Landroid/widget/SemExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFooterViewsCount()I

    move-result v4

    sub-int v1, v3, v4

    sub-int v0, p1, v1

    int-to-long v4, v0

    const-wide v6, -0x100000000L

    or-long/2addr v4, v6

    return-wide v4
.end method

.method private getIndicator(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v6, v6, Landroid/widget/SemExpandableListPosition;->type:I

    if-ne v6, v4, :cond_5

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    if-eqz v6, :cond_1

    iget-object v6, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v6, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v7, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v7, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v6, v7, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    if-eqz v1, :cond_4

    :goto_2
    or-int v3, v6, v4

    sget-object v4, Landroid/widget/SemExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    :goto_3
    return-object v0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v4, v4, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    sget-object v2, Landroid/widget/SemExpandableListView;->CHILD_LAST_STATE_SET:[I

    :goto_4
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_3

    :cond_6
    sget-object v2, Landroid/widget/SemExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_4
.end method

.method private getLastNonFooterPosition()I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getLastVisiblePosition()I

    move-result v1

    move v2, v1

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v0

    :goto_0
    if-lt v2, v0, :cond_0

    invoke-direct {p0, v2}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static getPackedPositionChild(J)I
    .locals 8

    const-wide v6, 0xffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v2, -0x1

    cmp-long v0, p0, v6

    if-nez v0, :cond_0

    return v2

    :cond_0
    and-long v0, p0, v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    return v2

    :cond_1
    and-long v0, p0, v6

    long-to-int v0, v0

    return v0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 6

    const-wide v4, -0x100000000L

    const-wide v2, 0x7fffffff00000000L

    and-long v0, p0, v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x2

    return v0

    :cond_1
    and-long v0, p0, v2

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getPackedPositionType(J)I
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSelectorRectAnim(I)Landroid/animation/Animator;
    .locals 8

    const/4 v7, 0x0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v7, p1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    const-string/jumbo v4, ""

    sget-object v5, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private hasRtlSupport()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 4

    const/4 v1, 0x1

    iget v2, p0, Landroid/widget/SemExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v2

    if-lt p1, v2, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isHoverable()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isLongClickable()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isRtlCompatibilityMode()Z
    .locals 2

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->hasRtlSupport()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private printArrays([I)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p1, v2

    if-gtz v0, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private resetCollapseAnimationState()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopEnd:I

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    iput-object v2, p0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    iput-boolean v1, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    return-void
.end method

.method private resetExpandAnimationState()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mGhostViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput v3, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    iput-object v4, p0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    iput-object v4, p0, Landroid/widget/SemExpandableListView;->mExpandingRects:[Landroid/widget/SemExpandableListView$ExpandingRect;

    iput-boolean v3, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resolveChildIndicator()V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    :cond_0
    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    if-lt v1, v2, :cond_3

    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    :cond_3
    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    goto :goto_0
.end method

.method private resolveIndicator()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    :cond_0
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_1

    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    :cond_1
    :goto_0
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    :cond_2
    return-void

    :cond_3
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_4

    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    :cond_4
    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_1

    iget v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    goto :goto_0
.end method

.method private startCollapseAllAnimation([ZLjava/lang/Runnable;)V
    .locals 33

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v16

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getLastNonFooterPosition()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/lit8 v4, v7, 0x1

    new-array v0, v4, [I

    move-object/from16 v18, v0

    add-int/lit8 v4, v7, 0x1

    new-array v4, v4, [Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    add-int/lit8 v4, v7, 0x1

    new-array v4, v4, [Landroid/widget/SemExpandableListView$CollapsingRect;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v12

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    const/16 v22, 0x1

    :goto_0
    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v22

    if-ge v0, v4, :cond_1

    invoke-static/range {v22 .. v22}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int/lit8 v4, v22, -0x1

    aget v4, v18, v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v18, v22

    new-instance v30, Landroid/graphics/RectF;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v5, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    add-int/lit8 v5, v22, -0x1

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    add-int/lit8 v5, v22, -0x1

    new-instance v6, Landroid/widget/SemExpandableListView$CollapsingRect;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    add-int/lit8 v32, v22, -0x1

    aget-object v9, v9, v32

    move-object/from16 v0, v30

    invoke-direct {v6, v0, v9}, Landroid/widget/SemExpandableListView$CollapsingRect;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v6, v4, v5

    move-object/from16 v25, v19

    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    new-instance v30, Landroid/graphics/RectF;

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v5, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    aput-object v5, v4, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mCollapsingRects:[Landroid/widget/SemExpandableListView$CollapsingRect;

    new-instance v5, Landroid/widget/SemExpandableListView$CollapsingRect;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;

    aget-object v6, v6, v7

    move-object/from16 v0, v30

    invoke-direct {v5, v0, v6}, Landroid/widget/SemExpandableListView$CollapsingRect;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v5, v4, v7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    if-ge v0, v12, :cond_5

    add-int v4, v22, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v4

    if-nez v4, :cond_4

    const/16 v23, 0x1

    :goto_3
    if-nez v23, :cond_2

    invoke-static {v14, v15}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/widget/SemExpandableListView$ViewInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v14, v15}, Landroid/util/LongSparseArray;->remove(J)V

    aget v4, v18, v17

    neg-int v4, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Landroid/widget/SemExpandableListView;->createViewSnapshotAnimation(ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/16 v23, 0x0

    goto :goto_3

    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v32

    new-instance v4, Landroid/widget/SemExpandableListView$9;

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v10}, Landroid/widget/SemExpandableListView$9;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;II[ZLjava/util/ArrayList;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private startCollapseAnimation(ILjava/lang/Runnable;)V
    .locals 22

    invoke-static/range {p1 .. p1}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v14

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v8

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v4, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_0

    sget-object v4, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startCollapseAnimation() BEFORE: groupPos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", flatPos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", firstPos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->resetCollapseAnimationState()V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int v4, v18, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-nez v17, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v4, v16, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/SemExpandableListView;->mCollapsedGroupTopStart:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v19

    new-instance v4, Landroid/widget/SemExpandableListView$8;

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v7, p1

    invoke-direct/range {v4 .. v12}, Landroid/widget/SemExpandableListView$8;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;IIIIII)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    goto :goto_0
.end method

.method private startExpandAllAnimation([ZLjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/widget/SemExpandableListView$7;

    invoke-direct {v1, p0, p2, p1}, Landroid/widget/SemExpandableListView$7;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;[Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private startExpandAnimation(ILjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/widget/SemExpandableListView$6;

    invoke-direct {v1, p0, p2, p1}, Landroid/widget/SemExpandableListView$6;-><init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private startIndicatorAnimation(Landroid/view/View;ZI)V
    .locals 6

    if-eqz p2, :cond_1

    iget v2, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    :goto_0
    const v3, 0x7a0a1eff

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    if-nez v3, :cond_2

    :cond_0
    sget-object v3, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startIndicatorAnimation() holder or indicatorImgView is null, startAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v3, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    neg-int v2, v3

    goto :goto_0

    :cond_2
    iget-object v1, v0, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    iget v3, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    int-to-float v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setRotation(F)V

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Landroid/widget/SemExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, p3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :goto_1
    if-eqz p2, :cond_4

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->COLLAPSE_CONTENT_DESCRIPTION:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    invoke-virtual {v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->startIndicatorMorphAimation()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->EXPAND_CONTENT_DESCRIPTION:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public collapseAll()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->collapseAllGroups()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->triggerJumpScrollToTop()V

    return-void
.end method

.method public collapseGroup(I)Z
    .locals 2

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1, p1}, Landroid/widget/SemExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Landroid/widget/SemExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    :cond_0
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9

    invoke-direct {p0, p2}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, v6}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v7

    iget-object v8, v7, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-direct {p0, v8}, Landroid/widget/SemExpandableListView;->getChildOrGroupId(Landroid/widget/SemExpandableListPosition;)J

    move-result-wide p3

    invoke-virtual {v8}, Landroid/widget/SemExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    new-instance v0, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->drawGhostViews(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->drawGhostViews(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 6

    iget v4, p0, Landroid/widget/SemExpandableListView;->mFirstPosition:I

    add-int v2, p3, v4

    if-ltz v2, :cond_2

    invoke-direct {p0, v2}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v4, v0}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v3

    iget-object v4, v3, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v4, v4, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v5, v3, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v4, v5, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    :cond_2
    invoke-super {p0, p1, p2, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public expandAll()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iput v1, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->expandAllGroups()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->triggerJumpScrollToTop()V

    return-void
.end method

.method public expandCollapseAll(Z)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public expandGroup(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x2

    invoke-static {v5, p1, v6, v6}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    iget-object v5, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v5, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v5, 0x0

    return v5

    :cond_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    iget-object v5, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v5, v2}, Landroid/widget/SemExpandableListConnector;->expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    move-result v3

    iget-object v5, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    invoke-interface {v5, p1}, Landroid/widget/SemExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object v5, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v5, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v5

    add-int v4, v1, v5

    iget-object v5, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Landroid/widget/SemExpandableListView;->smoothScrollToPosition(II)V

    :cond_2
    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return v3
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getExpandCollapseDuration()I
    .locals 6

    iget v1, p0, Landroid/widget/SemExpandableListView;->mTranslationOffset:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x4085e00000000000L    # 700.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    const/16 v1, 0x96

    if-ge v0, v1, :cond_0

    const/16 v0, 0x96

    :cond_0
    return v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getHeaderFooterPackedPosition(I)J

    move-result-wide v4

    return-wide v4

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    iget-object v4, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v4, v0}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    iget-object v4, v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-virtual {v4}, Landroid/widget/SemExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return-wide v2
.end method

.method public getFlatListPosition(J)I
    .locals 5

    const/4 v4, -0x1

    invoke-static {p1, p2}, Landroid/widget/SemExpandableListPosition;->obtainPosition(J)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v3, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    if-nez v2, :cond_1

    return v4

    :cond_1
    iget-object v3, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v3, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    invoke-direct {p0, v1}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    return v3
.end method

.method public getSelectedId()J
    .locals 6

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getSelectedPosition()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-wide/16 v4, -0x1

    return-wide v4

    :cond_0
    invoke-static {v2, v3}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    invoke-static {v2, v3}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    return-wide v4

    :cond_1
    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v2, v3}, Landroid/widget/SemExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v1, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v4

    return-wide v4
.end method

.method public getSelectedPosition()J
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getUnfoldedChildAt(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-super {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 13

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v10

    iget-object v0, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-direct {p0, v0}, Landroid/widget/SemExpandableListView;->getChildOrGroupId(Landroid/widget/SemExpandableListPosition;)J

    move-result-wide p3

    iget-object v0, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

    iget-object v1, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/SemExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v10}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->captureViewsPriorAnimation()V

    :cond_1
    iget-object v0, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v9, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-virtual {v10}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v8, Landroid/widget/SemExpandableListView$3;

    invoke-direct {v8, p0, v9}, Landroid/widget/SemExpandableListView$3;-><init>(Landroid/widget/SemExpandableListView;I)V

    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v9, v8}, Landroid/widget/SemExpandableListView;->startCollapseAnimation(ILjava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, v10}, Landroid/widget/SemExpandableListConnector;->collapseGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    new-instance v0, Landroid/widget/SemExpandableListView$4;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListView$4;-><init>(Landroid/widget/SemExpandableListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListView;->playSoundEffect(I)V

    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-nez v0, :cond_3

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v10}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return v11

    :cond_4
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, v10}, Landroid/widget/SemExpandableListConnector;->expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListView;->playSoundEffect(I)V

    iget-object v0, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v1

    add-int v12, v0, v1

    new-instance v8, Landroid/widget/SemExpandableListView$5;

    invoke-direct {v8, p0, v9, v12}, Landroid/widget/SemExpandableListView$5;-><init>(Landroid/widget/SemExpandableListView;II)V

    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v9, v8}, Landroid/widget/SemExpandableListView;->startExpandAnimation(ILjava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListView;->playSoundEffect(I)V

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

    iget-object v0, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v4, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget-object v0, v10, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v5, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v1 .. v7}, Landroid/widget/SemExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IIJ)Z

    move-result v0

    return v0

    :cond_7
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public isGroupExpanded(I)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method protected layoutChildren()V
    .locals 3

    const/4 v2, 0x3

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    iget v1, p0, Landroid/widget/SemExpandableListView;->mAnimationState:I

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector;->semRegisterDataSetObserver()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector;->semUnregisterDataSetObserver()V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->isHoverable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->isHovered()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/SemExpandableListView;->setHovered(Z)V

    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method onJumpScrollToTopFinished()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/ListView;->onJumpScrollToTopFinished()V

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->captureViewsPriorAnimation()V

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getExpandedState()[Z

    move-result-object v1

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->expandAllGroups()V

    new-instance v0, Landroid/widget/SemExpandableListView$10;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListView$10;-><init>(Landroid/widget/SemExpandableListView;)V

    invoke-direct {p0, v1, v0}, Landroid/widget/SemExpandableListView;->startExpandAllAnimation([ZLjava/lang/Runnable;)V

    :cond_1
    :goto_0
    iput v4, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    return-void

    :cond_2
    iget v2, p0, Landroid/widget/SemExpandableListView;->mExpandCollapseAllState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->captureViewsPriorAnimation()V

    new-instance v0, Landroid/widget/SemExpandableListView$11;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListView$11;-><init>(Landroid/widget/SemExpandableListView;)V

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->getExpandedState()[Z

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/widget/SemExpandableListView;->startCollapseAllAnimation([ZLjava/lang/Runnable;)V

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->collapseAllGroups()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v1, p1, Landroid/widget/SemExpandableListView$SavedState;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/SemExpandableListView$SavedState;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/SemExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    iget-object v2, v0, Landroid/widget/SemExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveIndicator()V

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveChildIndicator()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v2, Landroid/widget/SemExpandableListView$SavedState;

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    if-eqz v3, :cond_0

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :cond_0
    invoke-direct {v2, v0, v1}, Landroid/widget/SemExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemExpandableListView;->mBlockTouchEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-interface {v2, p1}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p2}, Landroid/widget/SemExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0, v1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    return v2

    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/SemExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    invoke-virtual {p0, v1, v0, p3, p4}, Landroid/widget/SemExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v2

    return v2
.end method

.method public scrollTo(Landroid/view/View;IILandroid/widget/SemExpandableListConnector$PositionMetadata;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/SemExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/SemExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListConnector;->setItemDecorator(Landroid/widget/SemExpandableListConnector$ItemDecorator;)V

    :goto_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    return-void
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorLeft:I

    iput p2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorRight:I

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveChildIndicator()V

    return-void
.end method

.method public setChildIndicatorBoundsRelative(II)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorStart:I

    iput p2, p0, Landroid/widget/SemExpandableListView;->mChildIndicatorEnd:I

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveChildIndicator()V

    return-void
.end method

.method public setCollapseAllSpeedFactor(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setCollapseSpeedFactor(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iput v3, p0, Landroid/widget/SemExpandableListView;->mDividerHeight:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    aput v1, v0, v3

    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDivider() height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iput v1, p0, Landroid/widget/SemExpandableListView;->mDividerHeight:I

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mExpListDividerHeight:[I

    aput p1, v0, v1

    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDividerHeight() height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setExpandAllSpeedFactor(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setExpandSpeedFactor(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setExpandingAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemExpandableListView;->mAnimationEnabled:Z

    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Landroid/widget/SemExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    :cond_0
    return-void
.end method

.method public setGroupIndicatorAnimationType(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorAnimationType:I

    return-void
.end method

.method public setGroupIndicatorRotationAngle(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mRotationAngle:I

    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorLeft:I

    iput p2, p0, Landroid/widget/SemExpandableListView;->mIndicatorRight:I

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveIndicator()V

    return-void
.end method

.method public setIndicatorBoundsRelative(II)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorStart:I

    iput p2, p0, Landroid/widget/SemExpandableListView;->mIndicatorEnd:I

    invoke-direct {p0}, Landroid/widget/SemExpandableListView;->resolveIndicator()V

    return-void
.end method

.method public setIndicatorGravity(I)V
    .locals 3

    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    sget-object v0, Landroid/widget/SemExpandableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIndicatorGravity() gravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIndicatorGravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemExpandableListView;->mIndicatorGravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIndicatorPaddings(II)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingLeft:I

    iput p2, p0, Landroid/widget/SemExpandableListView;->mIndicatorPaddingRight:I

    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnChildClickListener:Landroid/widget/SemExpandableListView$OnChildClickListener;

    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/SemExpandableListView$OnGroupClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnGroupClickListener:Landroid/widget/SemExpandableListView$OnGroupClickListener;

    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/SemExpandableListView$OnGroupCollapseListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnGroupCollapseListener:Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/SemExpandableListView$OnGroupExpandListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView;->mOnGroupExpandListener:Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5

    invoke-static {p1, p2}, Landroid/widget/SemExpandableListPosition;->obtainChildPosition(II)Landroid/widget/SemExpandableListPosition;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    if-nez v2, :cond_1

    if-nez p3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {v1}, Landroid/widget/SemExpandableListPosition;->recycle()V

    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    const/4 v3, 0x1

    return v3
.end method

.method public setSelectedGroup(I)V
    .locals 4

    invoke-static {p1}, Landroid/widget/SemExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/SemExpandableListPosition;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/SemExpandableListView;->mConnector:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/widget/SemExpandableListPosition;->recycle()V

    iget-object v3, v2, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/SemExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {v2}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return-void
.end method
