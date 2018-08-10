.class public Lcom/samsung/android/widget/SemHorizontalFastScroller;
.super Ljava/lang/Object;
.source "SemHorizontalFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemHorizontalFastScroller$1;,
        Lcom/samsung/android/widget/SemHorizontalFastScroller$2;,
        Lcom/samsung/android/widget/SemHorizontalFastScroller$3;,
        Lcom/samsung/android/widget/SemHorizontalFastScroller$4;,
        Lcom/samsung/android/widget/SemHorizontalFastScroller$5;,
        Lcom/samsung/android/widget/SemHorizontalFastScroller$6;
    }
.end annotation


# static fields
.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x4

.field private static final OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final PREVIEW_BOTTOM:I = 0x1

.field private static final PREVIEW_TOP:I = 0x0

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAP_TIMEOUT:J

.field private static TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlwaysShow:Z

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mHeight:I

.field private mInitialTouchX:F

.field private mLayoutFromBottom:Z

.field private final mList:Landroid/widget/SemHorizontalAbsListView;

.field private mListAdapter:Landroid/widget/Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private mThumbMinHeight:I

.field private mThumbMinWidth:I

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemHorizontalFastScroller;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemHorizontalFastScroller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPrimary:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemHorizontalFastScroller;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TAP_TIMEOUT:J

    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$3;

    const-string/jumbo v1, "left"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->LEFT:Landroid/util/Property;

    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TOP:Landroid/util/Property;

    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->RIGHT:Landroid/util/Property;

    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$6;

    const-string/jumbo v1, "bottom"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/widget/SemHorizontalAbsListView;I)V
    .locals 6

    const/4 v4, -0x1

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempMargins:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    iput v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    iput v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    new-instance v3, Lcom/samsung/android/widget/SemHorizontalFastScroller$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller$1;-><init>(Lcom/samsung/android/widget/SemHorizontalFastScroller;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    new-instance v3, Lcom/samsung/android/widget/SemHorizontalFastScroller$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller$2;-><init>(Lcom/samsung/android/widget/SemHorizontalFastScroller;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScaledTouchSlop:I

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getScrollBarStyle()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    iput v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mMatchDragPosition:Z

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setStyle(I)V

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getSectionsFromIndexer()V

    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLongList(II)V

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->semGetHorizontalScrollbarPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v4, Lcom/samsung/android/widget/SemHorizontalFastScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/widget/SemHorizontalFastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/widget/SemHorizontalFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v7

    aput-object v3, v4, v8

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method private static animateScaleY(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 3

    const/4 v2, 0x1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getSectionsFromIndexer()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelFling()V

    return-void
.end method

.method private cancelFling()V
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/SemHorizontalAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3

    const/4 v2, -0x2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    return-object v1
.end method

.method private getPosFromItemCount(III)F
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v15, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getSectionsFromIndexer()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    array-length v15, v15

    if-lez v15, :cond_3

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mMatchDragPosition:Z

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_5

    :cond_2
    move/from16 v0, p1

    int-to-float v15, v0

    sub-int v16, p3, p2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    return v15

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    sub-int p1, p1, v15

    if-gez p1, :cond_6

    const/4 v15, 0x0

    return v15

    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    sub-int p3, p3, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    if-nez v15, :cond_9

    :cond_7
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v15, v12}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    array-length v13, v15

    add-int/lit8 v15, v13, -0x1

    if-ge v12, v15, :cond_b

    add-int/lit8 v15, v12, 0x1

    if-ge v15, v13, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v16, v12, 0x1

    invoke-interface/range {v15 .. v16}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    :goto_2
    sub-int v9, v7, v14

    :goto_3
    if-nez v9, :cond_c

    const/4 v8, 0x0

    :goto_4
    int-to-float v15, v12

    add-float/2addr v15, v8

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v10, v15, v16

    if-lez p1, :cond_8

    add-int v15, p1, p2

    move/from16 v0, p3

    if-ne v15, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    add-int/lit8 v16, p2, -0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v15}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v15}, Landroid/widget/SemHorizontalAbsListView;->getClipToPadding()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v15}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v15

    sub-int/2addr v15, v11

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v2, v15, v16

    :goto_5
    if-lez v2, :cond_8

    if-lez v6, :cond_8

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v10

    int-to-float v0, v2

    move/from16 v16, v0

    int-to-float v0, v6

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v10, v15

    :cond_8
    return v10

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v15}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v15

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v4, v15, v16

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v7, p3, -0x1

    goto :goto_2

    :cond_b
    sub-int v9, p3, v14

    goto :goto_3

    :cond_c
    move/from16 v0, p1

    int-to-float v15, v0

    add-float/2addr v15, v4

    int-to-float v0, v14

    move/from16 v16, v0

    sub-float v15, v15, v16

    int-to-float v0, v9

    move/from16 v16, v0

    div-float v8, v15, v16

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int v6, v15, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v15}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v2, v15, v16

    goto :goto_5
.end method

.method private getPosFromMotionEvent(F)F
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v1, v5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v0, v5

    move v2, v1

    sub-float v3, v0, v1

    cmpg-float v5, v3, v7

    if-gtz v5, :cond_0

    return v7

    :cond_0
    sub-float v5, p1, v1

    div-float/2addr v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v7, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    return v5
.end method

.method private getSectionsFromIndexer()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    check-cast v0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x0

    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    :goto_0
    if-ltz v3, :cond_1

    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1

    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInsideX(F)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPointInsideX(F)Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float v0, v4, v1

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float v2, v4, v1

    cmpl-float v4, p1, v0

    if-ltz v4, :cond_0

    cmpg-float v4, p1, v2

    if-gtz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private isPointInsideY(F)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private layoutThumb()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private layoutTrack()V
    .locals 14

    const/4 v13, 0x0

    iget-object v9, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/high16 v12, -0x80000000

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v13, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v11, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v7, v12, 0x2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int v8, v12, v13

    add-int v0, v8, v10

    iget v12, v1, Landroid/graphics/Rect;->left:I

    add-int v4, v12, v7

    iget v12, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v12, v7

    invoke-virtual {v9, v4, v8, v5, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17

    if-nez p2, :cond_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v15, v4, v11

    sub-int v1, v15, v9

    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v15, v5, 0xa

    add-int/2addr v15, v10

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v8, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int v12, v8, v15

    sub-int v15, v4, v6

    div-int/lit8 v15, v15, 0x2

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v13, v15, v16

    add-int v2, v8, v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v13, v12, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17

    if-nez p3, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-nez p2, :cond_1

    move v11, v4

    :goto_1
    sub-int v15, v11, v10

    sub-int v1, v15, v8

    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v15, :cond_4

    if-nez p2, :cond_3

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    :goto_2
    sub-int v2, v15, v8

    sub-int v13, v2, v5

    :goto_3
    move v7, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int v12, v7, v15

    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v13, v12, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v15, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int v11, v4, v15

    goto :goto_1

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v15

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    iget v15, v3, Landroid/graphics/Rect;->top:I

    :goto_4
    add-int v13, v15, v10

    add-int v2, v13, v5

    goto :goto_3

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v15

    goto :goto_4
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->resolvePadding()V

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->stop()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 23

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    const/4 v14, 0x0

    :goto_0
    if-eqz v16, :cond_a

    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v14, v0, :cond_a

    int-to-float v0, v14

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v21, v14, -0x1

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v4

    move/from16 v19, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    move v15, v4

    move v7, v3

    move/from16 v11, v18

    move v13, v4

    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v20, v14, -0x1

    move/from16 v0, v20

    if-ge v4, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    add-int/lit8 v21, v4, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    :cond_0
    move/from16 v0, v18

    if-ne v7, v0, :cond_2

    :cond_1
    if-lez v19, :cond_2

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    move/from16 v0, v18

    if-eq v11, v0, :cond_4

    move/from16 v13, v19

    move/from16 v15, v19

    :cond_2
    :goto_1
    add-int/lit8 v8, v10, 0x1

    :goto_2
    if-ge v8, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    move/from16 v0, v20

    if-ne v0, v7, :cond_5

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, v16

    array-length v14, v0

    goto/16 :goto_0

    :cond_4
    if-nez v19, :cond_1

    const/4 v15, 0x0

    goto :goto_1

    :cond_5
    int-to-float v0, v13

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v12, v20, v21

    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v9, v20, v21

    if-nez v3, :cond_7

    const v17, 0x7f7fffff    # Float.MAX_VALUE

    :goto_3
    if-ne v13, v4, :cond_8

    sub-float v20, p1, v12

    cmpg-float v20, v20, v17

    if-gez v20, :cond_8

    move/from16 v18, v11

    :goto_4
    add-int/lit8 v20, v3, -0x1

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/SemHorizontalListView;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/SemHorizontalListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v15, :cond_6

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionPreviewLayout(I)Z

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    if-eqz v5, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToDragging()V

    :cond_6
    :goto_6
    return-void

    :cond_7
    int-to-float v0, v3

    move/from16 v20, v0

    const/high16 v21, 0x3e000000    # 0.125f

    div-float v17, v21, v20

    goto :goto_3

    :cond_8
    sub-int v20, v7, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v21, p1, v12

    mul-float v20, v20, v21

    sub-float v21, v9, v12

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v18, v11, v20

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    goto :goto_5

    :cond_a
    int-to-float v0, v3

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v21, v3, -0x1

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/SemHorizontalListView;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/SemHorizontalListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v6

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    :goto_7
    const/4 v15, -0x1

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    xor-int/lit8 v20, v5, 0x1

    if-eqz v20, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToVisible()V

    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_0
    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->refreshDrawablePressedState()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToHidden()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToVisible()V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToDragging()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToVisible()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v14, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v0, v18

    int-to-float v5, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v3, v0

    move v7, v5

    sub-float v13, v3, v5

    mul-float v18, p1, v13

    add-float v16, v18, v5

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v18, v18, v16

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v8, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlayPosition:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    const/4 v12, 0x0

    :goto_0
    int-to-float v0, v2

    move/from16 v18, v0

    add-float v6, v18, v8

    int-to-float v0, v14

    move/from16 v18, v0

    sub-float v4, v18, v8

    invoke-static {v12, v6, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v11

    sub-float v10, v11, v8

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void

    :pswitch_0
    move/from16 v12, v16

    goto :goto_0

    :pswitch_1
    sub-float v12, v16, v8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startPendingDrag()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 24

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    const/16 v19, 0x0

    if-eqz v13, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v12, v13, p1

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v14

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->right:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v9

    const-wide/16 v20, 0x64

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v20

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    sub-int v8, v20, v21

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getHeight()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v8, :cond_4

    int-to-float v0, v8

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateScaleY(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    invoke-virtual {v15}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    invoke-static {v15, v10}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateScaleY(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    return v20

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    goto/16 :goto_0

    :cond_4
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_1
.end method

.method private transitionToDragging()V
    .locals 10

    const-wide/16 v8, 0x96

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v4, v3, v7

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    return-void
.end method

.method private transitionToHidden()V
    .locals 12

    const-wide/16 v10, 0x12c

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x5

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    const/4 v6, 0x4

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    :goto_0
    int-to-float v1, v3

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v3, v1, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v2, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v7, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    neg-int v3, v3

    goto :goto_0
.end method

.method private transitionToVisible()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v10, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    invoke-static {v3, v9, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    invoke-static {v3, v9, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    aput-object v2, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    return-void
.end method

.method private updateAppearance()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinHeight:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinHeight:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinHeight:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextAppearance:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextAppearance:I

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextAppearance:I

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextSize:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextSize:F

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextSize:F

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinWidth:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->refreshDrawablePressedState()V

    return-void
.end method

.method private updateContainerRect()V
    .locals 7

    const/high16 v6, 0x1000000

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->resolvePadding()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    if-eq v3, v6, :cond_0

    if-nez v3, :cond_1

    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v3, v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getHeight()I

    move-result v1

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v1

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iput v4, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method private updateLongList(II)V
    .locals 4

    const/4 v3, 0x0

    if-lez p1, :cond_1

    div-int v1, p2, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLongList:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLongList:Z

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onStateDependencyChanged(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeight:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    :cond_2
    return v3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    return v6

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->isInScrollingContainer()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mInitialTouchX:F

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->startPendingDrag()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelPendingDrag()V

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mInitialTouchX:F

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->scrollTo(F)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelPendingDrag()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemCountChanged(II)V
    .locals 4

    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    if-eq v2, p1, :cond_2

    :cond_0
    iput p2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    sub-int v2, p2, p1

    if-lez v2, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLongList(II)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScroll(III)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    return-void

    :cond_0
    sub-int v1, p3, p2

    if-lez v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-eq v1, v4, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromItemCount(III)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    :cond_1
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mFirstVisibleItem:I

    if-eq v1, p1, :cond_2

    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mFirstVisibleItem:I

    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-eq v1, v4, :cond_2

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSectionsChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    return v4

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->isInScrollingContainer()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    return v5

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mInitialTouchX:F

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->startPendingDrag()V

    goto :goto_0

    :pswitch_1
    iget-wide v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    cmp-long v1, v2, v8

    if-ltz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->scrollTo(F)V

    :cond_3
    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, v4}, Landroid/widget/SemHorizontalAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, v4}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    return v5

    :pswitch_2
    iget-wide v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    cmp-long v1, v2, v8

    if-ltz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mInitialTouchX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    :cond_4
    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne v1, v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->scrollTo(F)V

    :cond_5
    return v5

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onStateDependencyChanged(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mEnabled:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onStateDependencyChanged(Z)V

    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p1, 0x1

    :cond_0
    :goto_0
    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    if-eq v3, p1, :cond_2

    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    if-eq p1, v4, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    iget-boolean v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v6, :cond_5

    :goto_2
    aget v2, v3, v4

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewPadding:I

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    move v3, v5

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2
.end method

.method public setStyle(I)V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v5}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Lcom/android/internal/R$styleable;->FastScroll:[I

    const/4 v6, 0x0

    const v7, 0x10103f7

    invoke-virtual {v1, v6, v5, v7, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlayPosition:I

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v5, v8

    goto :goto_1

    :pswitch_3
    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v7, 0x1

    aput v6, v5, v7

    goto :goto_1

    :pswitch_4
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_5
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_6
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextAppearance:I

    goto :goto_1

    :pswitch_7
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    :pswitch_8
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextSize:F

    goto :goto_1

    :pswitch_9
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinWidth:I

    goto :goto_1

    :pswitch_a
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinHeight:I

    goto :goto_1

    :pswitch_b
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinWidth:I

    goto :goto_1

    :pswitch_c
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinHeight:I

    goto :goto_1

    :pswitch_d
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewPadding:I

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateAppearance()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_c
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    return-void
.end method

.method public updateLayout()V
    .locals 3

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mUpdatingLayout:Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateContainerRect()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->layoutThumb()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->layoutTrack()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mUpdatingLayout:Z

    return-void
.end method
