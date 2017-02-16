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
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TAP_TIMEOUT:J

    .line 1572
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$3;

    const-string/jumbo v1, "left"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->LEFT:Landroid/util/Property;

    .line 1588
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TOP:Landroid/util/Property;

    .line 1604
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->RIGHT:Landroid/util/Property;

    .line 1620
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$6;

    const-string/jumbo v1, "bottom"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->BOTTOM:Landroid/util/Property;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/widget/SemHorizontalAbsListView;I)V
    .locals 6
    .param p1, "listView"    # Landroid/widget/SemHorizontalAbsListView;
    .param p2, "styleResId"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 102
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 103
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 117
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    .line 162
    iput v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    .line 165
    iput v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    .line 217
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    .line 226
    new-instance v3, Lcom/samsung/android/widget/SemHorizontalFastScroller$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller$1;-><init>(Lcom/samsung/android/widget/SemHorizontalFastScroller;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 236
    new-instance v3, Lcom/samsung/android/widget/SemHorizontalFastScroller$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller$2;-><init>(Lcom/samsung/android/widget/SemHorizontalFastScroller;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 247
    iput-object p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    .line 248
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    .line 249
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 252
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScaledTouchSlop:I

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getScrollBarStyle()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    .line 255
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    .line 256
    iput v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    .line 258
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 257
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mMatchDragPosition:Z

    .line 260
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 261
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 262
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 263
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 264
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    .line 265
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 267
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 268
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 270
    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setStyle(I)V

    .line 272
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    .line 273
    .local v1, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 274
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 275
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 276
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 277
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 278
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 280
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getSectionsFromIndexer()V

    .line 281
    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLongList(II)V

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->semGetHorizontalScrollbarPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    .line 246
    return-void

    .line 258
    .end local v1    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1565
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
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1636
    sget-object v4, Lcom/samsung/android/widget/SemHorizontalFastScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1637
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1638
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/samsung/android/widget/SemHorizontalFastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1639
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/samsung/android/widget/SemHorizontalFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1640
    .local v0, "bottom":Landroid/animation/PropertyValuesHolder;
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
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .prologue
    .line 1558
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
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 623
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 624
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 622
    return-void

    .line 624
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1342
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    .line 1344
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    .line 1346
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    if-eqz v0, :cond_0

    .line 1347
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getSectionsFromIndexer()V

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    if-eqz v0, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1352
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 1353
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelFling()V

    .line 1341
    :cond_1
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1319
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    .line 1318
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1320
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/SemHorizontalAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1321
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1317
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    .line 1330
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    .line 1329
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 566
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 568
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 569
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 571
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 572
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 573
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 576
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 578
    return-object v1
.end method

.method private getPosFromItemCount(III)F
    .locals 18
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1237
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v15, :cond_1

    .line 1238
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getSectionsFromIndexer()V

    .line 1241
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v15, :cond_3

    .line 1242
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    array-length v15, v15

    if-lez v15, :cond_2

    const/4 v15, 0x1

    :goto_0
    move v3, v15

    .line 1243
    .local v3, "hasSections":Z
    :goto_1
    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mMatchDragPosition:Z

    if-eqz v15, :cond_4

    .line 1247
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    sub-int p1, p1, v15

    .line 1248
    if-gez p1, :cond_5

    .line 1249
    const/4 v15, 0x0

    return v15

    .line 1242
    .end local v3    # "hasSections":Z
    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    .line 1241
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1244
    .restart local v3    # "hasSections":Z
    :cond_4
    move/from16 v0, p1

    int-to-float v15, v0

    sub-int v16, p3, p2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    return v15

    .line 1251
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    sub-int p3, p3, v15

    .line 1254
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1256
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    if-nez v15, :cond_8

    .line 1257
    :cond_6
    const/4 v4, 0x0

    .line 1263
    .local v4, "incrementalPos":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v12

    .line 1264
    .local v12, "section":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v15, v12}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    .line 1265
    .local v14, "sectionPos":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    array-length v13, v15

    .line 1267
    .local v13, "sectionCount":I
    add-int/lit8 v15, v13, -0x1

    if-ge v12, v15, :cond_a

    .line 1269
    add-int/lit8 v15, v12, 0x1

    if-ge v15, v13, :cond_9

    .line 1270
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v16, v12, 0x1

    invoke-interface/range {v15 .. v16}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 1274
    .local v7, "nextSectionPos":I
    :goto_3
    sub-int v9, v7, v14

    .line 1281
    .end local v7    # "nextSectionPos":I
    .local v9, "positionsInSection":I
    :goto_4
    if-nez v9, :cond_b

    .line 1282
    const/4 v8, 0x0

    .line 1288
    .local v8, "posWithinSection":F
    :goto_5
    int-to-float v15, v12

    add-float/2addr v15, v8

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v10, v15, v16

    .line 1293
    .local v10, "result":F
    if-lez p1, :cond_7

    add-int v15, p1, p2

    move/from16 v0, p3

    if-ne v15, v0, :cond_7

    .line 1294
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    add-int/lit8 v16, p2, -0x1

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1295
    .local v5, "lastChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v15}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    .line 1298
    .local v11, "rightPadding":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1299
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1300
    .local v6, "maxSize":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int/2addr v15, v11

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v2, v15, v16

    .line 1305
    .local v2, "currentVisibleSize":I
    :goto_6
    if-lez v2, :cond_7

    if-lez v6, :cond_7

    .line 1306
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v10

    int-to-float v0, v2

    move/from16 v16, v0

    int-to-float v0, v6

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v10, v15

    .line 1310
    .end local v2    # "currentVisibleSize":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "maxSize":I
    .end local v11    # "rightPadding":I
    :cond_7
    return v10

    .line 1259
    .end local v4    # "incrementalPos":F
    .end local v8    # "posWithinSection":F
    .end local v9    # "positionsInSection":I
    .end local v10    # "result":F
    .end local v12    # "section":I
    .end local v13    # "sectionCount":I
    .end local v14    # "sectionPos":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v15}, Landroid/view/View;->getPaddingLeft()I

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

    .restart local v4    # "incrementalPos":F
    goto/16 :goto_2

    .line 1272
    .restart local v12    # "section":I
    .restart local v13    # "sectionCount":I
    .restart local v14    # "sectionPos":I
    :cond_9
    add-int/lit8 v7, p3, -0x1

    .restart local v7    # "nextSectionPos":I
    goto :goto_3

    .line 1276
    .end local v7    # "nextSectionPos":I
    :cond_a
    sub-int v9, p3, v14

    .restart local v9    # "positionsInSection":I
    goto :goto_4

    .line 1284
    :cond_b
    move/from16 v0, p1

    int-to-float v15, v0

    add-float/2addr v15, v4

    int-to-float v0, v14

    move/from16 v16, v0

    sub-float v15, v15, v16

    .line 1285
    int-to-float v0, v9

    move/from16 v16, v0

    .line 1284
    div-float v8, v15, v16

    .restart local v8    # "posWithinSection":F
    goto/16 :goto_5

    .line 1302
    .restart local v5    # "lastChild":Landroid/view/View;
    .restart local v10    # "result":F
    .restart local v11    # "rightPadding":I
    :cond_c
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int v6, v15, v11

    .line 1303
    .restart local v6    # "maxSize":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v2, v15, v16

    .restart local v2    # "currentVisibleSize":I
    goto :goto_6
.end method

.method private getPosFromMotionEvent(F)F
    .locals 8
    .param p1, "x"    # F

    .prologue
    const/4 v7, 0x0

    .line 1220
    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1221
    .local v4, "trackImage":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v1, v5

    .line 1222
    .local v1, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v0, v5

    .line 1223
    .local v0, "max":F
    move v2, v1

    .line 1224
    .local v2, "offset":F
    sub-float v3, v0, v1

    .line 1228
    .local v3, "range":F
    cmpg-float v5, v3, v7

    if-gtz v5, :cond_0

    .line 1229
    return v7

    .line 1232
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

    .prologue
    const/4 v2, 0x0

    .line 943
    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 945
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 946
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v1, v0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 947
    nop

    nop

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    .line 948
    nop

    nop

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 958
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_1

    .line 959
    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 960
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 961
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    .line 942
    :goto_0
    return-void

    .line 963
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 964
    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
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

    .prologue
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    const/4 v6, 0x0

    .line 1539
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1540
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1542
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1543
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1544
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 1545
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1542
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1547
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1551
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1509
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
    .param p1, "x"    # F

    .prologue
    const/4 v3, 0x0

    .line 1521
    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 1522
    .local v1, "offset":F
    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float v0, v4, v1

    .line 1523
    .local v0, "left":F
    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float v2, v4, v1

    .line 1524
    .local v2, "right":F
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
    .param p1, "y"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1513
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v2, :cond_1

    .line 1514
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1516
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

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

    .prologue
    const/4 v2, 0x0

    .line 777
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 778
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 779
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 776
    return-void
.end method

.method private layoutTrack()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 787
    iget-object v9, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 788
    .local v9, "track":Landroid/view/View;
    iget-object v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 789
    .local v6, "thumb":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 790
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 791
    .local v2, "containerHeight":I
    const/high16 v12, -0x80000000

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 792
    .local v3, "heightMeasureSpec":I
    invoke-static {v13, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 793
    .local v11, "widthMeasureSpec":I
    invoke-virtual {v9, v11, v3}, Landroid/view/View;->measure(II)V

    .line 795
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 796
    .local v10, "trackHeight":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v7, v12, 0x2

    .line 797
    .local v7, "thumbHalfWidth":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int v8, v12, v13

    .line 798
    .local v8, "top":I
    add-int v0, v8, v10

    .line 799
    .local v0, "bottom":I
    iget v12, v1, Landroid/graphics/Rect;->left:I

    add-int v4, v12, v7

    .line 800
    .local v4, "left":I
    iget v12, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v12, v7

    .line 801
    .local v5, "right":I
    invoke-virtual {v9, v4, v8, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 786
    return-void
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 713
    if-nez p2, :cond_0

    .line 714
    const/4 v10, 0x0

    .line 715
    .local v10, "marginLeft":I
    const/4 v11, 0x0

    .line 716
    .local v11, "marginTop":I
    const/4 v9, 0x0

    .line 723
    .local v9, "marginBottom":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 724
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 725
    .local v4, "containerHeight":I
    sub-int v15, v4, v11

    sub-int v1, v15, v9

    .line 726
    .local v1, "adjMaxHeight":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 727
    .local v7, "heightMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 728
    .local v14, "widthMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v7}, Landroid/view/View;->measure(II)V

    .line 731
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 732
    .local v5, "containerWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 733
    .local v6, "height":I
    div-int/lit8 v15, v5, 0xa

    add-int/2addr v15, v10

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v8, v15, v16

    .line 734
    .local v8, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int v12, v8, v15

    .line 735
    .local v12, "right":I
    sub-int v15, v4, v6

    div-int/lit8 v15, v15, 0x2

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v13, v15, v16

    .line 736
    .local v13, "top":I
    add-int v2, v8, v6

    .line 737
    .local v2, "bottom":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v13, v12, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 709
    return-void

    .line 718
    .end local v1    # "adjMaxHeight":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerHeight":I
    .end local v5    # "containerWidth":I
    .end local v6    # "height":I
    .end local v7    # "heightMeasureSpec":I
    .end local v8    # "left":I
    .end local v9    # "marginBottom":I
    .end local v10    # "marginLeft":I
    .end local v11    # "marginTop":I
    .end local v12    # "right":I
    .end local v13    # "top":I
    .end local v14    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 719
    .restart local v10    # "marginLeft":I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 720
    .restart local v11    # "marginTop":I
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    .restart local v9    # "marginBottom":I
    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 638
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 639
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 640
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 641
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 643
    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    .line 644
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 635
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 665
    if-nez p3, :cond_0

    .line 666
    const/4 v9, 0x0

    .line 667
    .local v9, "marginLeft":I
    const/4 v10, 0x0

    .line 668
    .local v10, "marginTop":I
    const/4 v8, 0x0

    .line 675
    .local v8, "marginBottom":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 676
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 678
    .local v4, "containerHeight":I
    if-nez p2, :cond_1

    .line 679
    move v11, v4

    .line 686
    .local v11, "maxHeight":I
    :goto_1
    sub-int v15, v11, v10

    sub-int v1, v15, v8

    .line 687
    .local v1, "adjMaxHeight":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 688
    .local v6, "heightMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 689
    .local v14, "widthMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v6}, Landroid/view/View;->measure(II)V

    .line 692
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 695
    .local v5, "height":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v15, :cond_4

    .line 696
    if-nez p2, :cond_3

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    :goto_2
    sub-int v2, v15, v8

    .line 697
    .local v2, "bottom":I
    sub-int v13, v2, v5

    .line 704
    .local v13, "top":I
    :goto_3
    move v7, v9

    .line 705
    .local v7, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int v12, v7, v15

    .line 706
    .local v12, "right":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v13, v12, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 661
    return-void

    .line 670
    .end local v1    # "adjMaxHeight":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerHeight":I
    .end local v5    # "height":I
    .end local v6    # "heightMeasureSpec":I
    .end local v7    # "left":I
    .end local v8    # "marginBottom":I
    .end local v9    # "marginLeft":I
    .end local v10    # "marginTop":I
    .end local v11    # "maxHeight":I
    .end local v12    # "right":I
    .end local v13    # "top":I
    .end local v14    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 671
    .restart local v9    # "marginLeft":I
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 672
    .restart local v10    # "marginTop":I
    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .restart local v8    # "marginBottom":I
    goto :goto_0

    .line 680
    .restart local v3    # "container":Landroid/graphics/Rect;
    .restart local v4    # "containerHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v15, :cond_2

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v11

    .restart local v11    # "maxHeight":I
    goto :goto_1

    .line 683
    .end local v11    # "maxHeight":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int v11, v4, v15

    .restart local v11    # "maxHeight":I
    goto :goto_1

    .line 696
    .restart local v1    # "adjMaxHeight":I
    .restart local v5    # "height":I
    .restart local v6    # "heightMeasureSpec":I
    .restart local v14    # "widthMeasureSpec":I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v15

    goto :goto_2

    .line 699
    :cond_4
    if-nez p2, :cond_5

    iget v15, v3, Landroid/graphics/Rect;->top:I

    :goto_4
    add-int v13, v15, v10

    .line 700
    .restart local v13    # "top":I
    add-int v2, v13, v5

    .restart local v2    # "bottom":I
    goto :goto_3

    .line 699
    .end local v2    # "bottom":I
    .end local v13    # "top":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v15

    goto :goto_4
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2
    .param p1, "peekIfEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 457
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    .line 469
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 455
    return-void

    .line 459
    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne v0, v1, :cond_2

    .line 460
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    goto :goto_0

    .line 461
    :cond_2
    if-eqz p1, :cond_0

    .line 462
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    .line 463
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    goto :goto_0

    .line 466
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->stop()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 911
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 912
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 910
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    .prologue
    .line 837
    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 838
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 839
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 836
    return-void

    .line 837
    .end local v0    # "isPressed":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isPressed":Z
    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 23
    .param p1, "position"    # F

    .prologue
    .line 980
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    .line 983
    .local v3, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 984
    .local v16, "sections":[Ljava/lang/Object;
    if-nez v16, :cond_3

    const/4 v14, 0x0

    .line 986
    .local v14, "sectionCount":I
    :goto_0
    if-eqz v16, :cond_a

    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v14, v0, :cond_a

    .line 988
    int-to-float v0, v14

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v21, v14, -0x1

    const/16 v22, 0x0

    .line 987
    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v4

    .line 989
    .local v4, "exactSection":I
    move/from16 v19, v4

    .line 990
    .local v19, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    .line 991
    .local v18, "targetIndex":I
    move v15, v4

    .line 999
    .local v15, "sectionIndex":I
    move v7, v3

    .line 1000
    .local v7, "nextIndex":I
    move/from16 v11, v18

    .line 1001
    .local v11, "prevIndex":I
    move v13, v4

    .line 1002
    .local v13, "prevSection":I
    add-int/lit8 v10, v4, 0x1

    .line 1005
    .local v10, "nextSection":I
    add-int/lit8 v20, v14, -0x1

    move/from16 v0, v20

    if-ge v4, v0, :cond_0

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    add-int/lit8 v21, v4, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 1010
    :cond_0
    move/from16 v0, v18

    if-ne v7, v0, :cond_2

    .line 1012
    :cond_1
    if-lez v19, :cond_2

    .line 1013
    add-int/lit8 v19, v19, -0x1

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 1015
    move/from16 v0, v18

    if-eq v11, v0, :cond_4

    .line 1016
    move/from16 v13, v19

    .line 1017
    move/from16 v15, v19

    .line 1033
    :cond_2
    :goto_1
    add-int/lit8 v8, v10, 0x1

    .line 1034
    .local v8, "nextNextSection":I
    :goto_2
    if-ge v8, v14, :cond_5

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    move/from16 v0, v20

    if-ne v0, v7, :cond_5

    .line 1036
    add-int/lit8 v8, v8, 0x1

    .line 1037
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 984
    .end local v4    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v13    # "prevSection":I
    .end local v14    # "sectionCount":I
    .end local v15    # "sectionIndex":I
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :cond_3
    move-object/from16 v0, v16

    array-length v14, v0

    .restart local v14    # "sectionCount":I
    goto/16 :goto_0

    .line 1019
    .restart local v4    # "exactSection":I
    .restart local v7    # "nextIndex":I
    .restart local v10    # "nextSection":I
    .restart local v11    # "prevIndex":I
    .restart local v13    # "prevSection":I
    .restart local v15    # "sectionIndex":I
    .restart local v18    # "targetIndex":I
    .restart local v19    # "targetSection":I
    :cond_4
    if-nez v19, :cond_1

    .line 1022
    const/4 v15, 0x0

    .line 1023
    goto :goto_1

    .line 1044
    .restart local v8    # "nextNextSection":I
    :cond_5
    int-to-float v0, v13

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v12, v20, v21

    .line 1045
    .local v12, "prevPosition":F
    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v9, v20, v21

    .line 1046
    .local v9, "nextPosition":F
    if-nez v3, :cond_7

    const v17, 0x7f7fffff    # Float.MAX_VALUE

    .line 1047
    .local v17, "snapThreshold":F
    :goto_3
    if-ne v13, v4, :cond_8

    sub-float v20, p1, v12

    cmpg-float v20, v20, v17

    if-gez v20, :cond_8

    .line 1048
    move/from16 v18, v11

    .line 1055
    :goto_4
    add-int/lit8 v20, v3, -0x1

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v18

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/SemHorizontalListView;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1058
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

    .line 1074
    .end local v4    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v9    # "nextPosition":F
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v12    # "prevPosition":F
    .end local v13    # "prevSection":I
    .end local v17    # "snapThreshold":F
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v15, :cond_6

    .line 1075
    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    .line 1077
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionPreviewLayout(I)Z

    move-result v5

    .line 1078
    .local v5, "hasPreview":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    if-eqz v5, :cond_c

    .line 1079
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToDragging()V

    .line 979
    .end local v5    # "hasPreview":Z
    :cond_6
    :goto_6
    return-void

    .line 1046
    .restart local v4    # "exactSection":I
    .restart local v7    # "nextIndex":I
    .restart local v8    # "nextNextSection":I
    .restart local v9    # "nextPosition":F
    .restart local v10    # "nextSection":I
    .restart local v11    # "prevIndex":I
    .restart local v12    # "prevPosition":F
    .restart local v13    # "prevSection":I
    .restart local v18    # "targetIndex":I
    .restart local v19    # "targetSection":I
    :cond_7
    int-to-float v0, v3

    move/from16 v20, v0

    const/high16 v21, 0x3e000000    # 0.125f

    div-float v17, v21, v20

    .restart local v17    # "snapThreshold":F
    goto :goto_3

    .line 1050
    :cond_8
    sub-int v20, v7, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v21, p1, v12

    mul-float v20, v20, v21

    .line 1051
    sub-float v21, v9, v12

    .line 1050
    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v18, v11, v20

    goto :goto_4

    .line 1060
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_5

    .line 1063
    .end local v4    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v9    # "nextPosition":F
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v12    # "prevPosition":F
    .end local v13    # "prevSection":I
    .end local v15    # "sectionIndex":I
    .end local v17    # "snapThreshold":F
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
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

    .line 1065
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/SemHorizontalListView;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 1066
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

    .line 1071
    :goto_7
    const/4 v15, -0x1

    .restart local v15    # "sectionIndex":I
    goto/16 :goto_5

    .line 1068
    .end local v15    # "sectionIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_7

    .line 1080
    .end local v6    # "index":I
    .restart local v5    # "hasPreview":Z
    .restart local v15    # "sectionIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    if-nez v5, :cond_6

    .line 1081
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToVisible()V

    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 805
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 807
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 808
    const/4 p1, 0x1

    .line 811
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne p1, v0, :cond_1

    .line 812
    return-void

    .line 815
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 831
    :goto_0
    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    .line 833
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->refreshDrawablePressedState()V

    .line 804
    return-void

    .line 817
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToHidden()V

    goto :goto_0

    .line 820
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToVisible()V

    goto :goto_0

    .line 823
    :pswitch_2
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToDragging()V

    goto :goto_0

    .line 826
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToVisible()V

    goto :goto_0

    .line 815
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 20
    .param p1, "position"    # F

    .prologue
    .line 1178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1179
    .local v1, "container":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 1180
    .local v2, "left":I
    iget v14, v1, Landroid/graphics/Rect;->right:I

    .line 1182
    .local v14, "right":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    .line 1183
    .local v17, "trackImage":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 1184
    .local v15, "thumbImage":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v0, v18

    int-to-float v5, v0

    .line 1185
    .local v5, "min":F
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v3, v0

    .line 1186
    .local v3, "max":F
    move v7, v5

    .line 1187
    .local v7, "offset":F
    sub-float v13, v3, v5

    .line 1188
    .local v13, "range":F
    mul-float v18, p1, v13

    add-float v16, v18, v5

    .line 1189
    .local v16, "thumbMiddle":F
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v16

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1193
    .local v9, "previewImage":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v8, v18, v19

    .line 1195
    .local v8, "previewHalfWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlayPosition:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 1204
    const/4 v12, 0x0

    .line 1209
    .local v12, "previewPos":F
    :goto_0
    int-to-float v0, v2

    move/from16 v18, v0

    add-float v6, v18, v8

    .line 1210
    .local v6, "minP":F
    int-to-float v0, v14

    move/from16 v18, v0

    sub-float v4, v18, v8

    .line 1211
    .local v4, "maxP":F
    invoke-static {v12, v6, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v11

    .line 1212
    .local v11, "previewMiddle":F
    sub-float v10, v11, v8

    .line 1213
    .local v10, "previewLeft":F
    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 1177
    return-void

    .line 1197
    .end local v4    # "maxP":F
    .end local v6    # "minP":F
    .end local v10    # "previewLeft":F
    .end local v11    # "previewMiddle":F
    .end local v12    # "previewPos":F
    :pswitch_0
    move/from16 v12, v16

    .line 1198
    .restart local v12    # "previewPos":F
    goto :goto_0

    .line 1200
    .end local v12    # "previewPos":F
    :pswitch_1
    sub-float v12, v16, v8

    .line 1201
    .restart local v12    # "previewPos":F
    goto :goto_0

    .line 1195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    .line 1338
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    .line 1337
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 24
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1095
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    .line 1096
    .local v13, "sections":[Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1097
    .local v19, "text":Ljava/lang/String;
    if-eqz v13, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 1098
    aget-object v12, v13, p1

    .line 1099
    .local v12, "section":Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 1100
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1104
    .end local v12    # "section":Ljava/lang/Object;
    .end local v19    # "text":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1105
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1108
    .local v7, "preview":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1109
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1110
    .local v15, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 1117
    .local v17, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1119
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1126
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

    .line 1127
    .local v14, "showTarget":Landroid/animation/Animator;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 1128
    .local v6, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1131
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1132
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1133
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1134
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1135
    invoke-static {v7, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v9

    .line 1136
    .local v9, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v20, 0x64

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1138
    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 1140
    .local v5, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1144
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v20

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    .line 1145
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    .line 1144
    sub-int v8, v20, v21

    .line 1149
    .local v8, "previewHeight":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v18

    .line 1150
    .local v18, "targetHeight":I
    move/from16 v0, v18

    if-le v0, v8, :cond_4

    .line 1151
    int-to-float v0, v8

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1152
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

    .line 1153
    .local v11, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1159
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v16

    .line 1160
    .local v16, "showingHeight":I
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 1161
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .line 1162
    .local v10, "scale":F
    invoke-static {v15, v10}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateScaleY(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1163
    .restart local v11    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1166
    .end local v10    # "scale":F
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    .line 1168
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v20, 0x0

    :goto_2
    return v20

    .line 1112
    .end local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v6    # "hideShowing":Landroid/animation/Animator;
    .end local v8    # "previewHeight":I
    .end local v9    # "resizePreview":Landroid/animation/Animator;
    .end local v14    # "showTarget":Landroid/animation/Animator;
    .end local v15    # "showing":Landroid/widget/TextView;
    .end local v16    # "showingHeight":I
    .end local v17    # "target":Landroid/widget/TextView;
    .end local v18    # "targetHeight":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1113
    .restart local v15    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .restart local v17    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 1155
    .restart local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v6    # "hideShowing":Landroid/animation/Animator;
    .restart local v8    # "previewHeight":I
    .restart local v9    # "resizePreview":Landroid/animation/Animator;
    .restart local v14    # "showTarget":Landroid/animation/Animator;
    .restart local v18    # "targetHeight":I
    :cond_4
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 1168
    .restart local v16    # "showingHeight":I
    :cond_5
    const/16 v20, 0x1

    goto :goto_2
.end method

.method private transitionToDragging()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x96

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 893
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 894
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 898
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 897
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    .line 898
    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v4, v3, v7

    const/high16 v4, 0x3f800000    # 1.0f

    .line 897
    invoke-static {v2, v4, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 901
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 900
    new-array v3, v7, [Landroid/view/View;

    .line 901
    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v5

    const/4 v4, 0x0

    .line 900
    invoke-static {v2, v4, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 903
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 904
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 905
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 907
    iput-boolean v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    .line 892
    return-void
.end method

.method private transitionToHidden()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x12c

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 846
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 847
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 850
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x5

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    .line 851
    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 850
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 854
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    :goto_0
    int-to-float v1, v3

    .line 856
    .local v1, "offset":F
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 855
    new-array v4, v9, [Landroid/view/View;

    .line 856
    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    .line 855
    invoke-static {v3, v1, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 859
    .local v2, "slideOut":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 860
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v2, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 861
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 863
    iput-boolean v7, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    .line 845
    return-void

    .line 854
    .end local v1    # "offset":F
    .end local v2    # "slideOut":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    goto :goto_0
.end method

.method private transitionToVisible()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 870
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 871
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 874
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

    .line 875
    const-wide/16 v4, 0x96

    .line 874
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 877
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 876
    new-array v4, v10, [Landroid/view/View;

    .line 877
    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    .line 876
    invoke-static {v3, v9, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 878
    const-wide/16 v4, 0x12c

    .line 876
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 880
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 879
    new-array v4, v8, [Landroid/view/View;

    .line 880
    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    .line 879
    invoke-static {v3, v9, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 880
    const-wide/16 v4, 0x96

    .line 879
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 882
    .local v2, "slideIn":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 883
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    aput-object v2, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 884
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 886
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    .line 869
    return-void
.end method

.method private updateAppearance()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 287
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 288
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 291
    .local v1, "height":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 293
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 297
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinWidth:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 299
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinHeight:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 302
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    .line 303
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 304
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 308
    :cond_1
    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinHeight:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeight:I

    .line 310
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 311
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinHeight:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 313
    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextAppearance:I

    if-eqz v3, :cond_2

    .line 314
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextAppearance:I

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 315
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextAppearance:I

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 318
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    .line 319
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 320
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 323
    :cond_3
    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextSize:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 324
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextSize:F

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 325
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextSize:F

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 328
    :cond_4
    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinWidth:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 329
    .local v2, "textMinSize":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 330
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 331
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 332
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 333
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 334
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 336
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->refreshDrawablePressedState()V

    .line 286
    return-void
.end method

.method private updateContainerRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000000

    const/4 v4, 0x0

    .line 744
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    .line 745
    .local v2, "list":Landroid/widget/SemHorizontalAbsListView;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 747
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 748
    .local v0, "container":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 749
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 750
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 751
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 753
    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    .line 754
    .local v3, "scrollbarStyle":I
    if-eq v3, v6, :cond_0

    .line 755
    if-nez v3, :cond_1

    .line 756
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 757
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 758
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 759
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 762
    if-ne v3, v6, :cond_1

    .line 763
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getHeight()I

    move-result v1

    .line 764
    .local v1, "height":I
    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 765
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v1

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 743
    .end local v1    # "height":I
    :cond_1
    :goto_0
    return-void

    .line 767
    .restart local v1    # "height":I
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iput v4, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method private updateLongList(II)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 554
    if-lez p1, :cond_1

    div-int v1, p2, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 555
    .local v0, "longList":Z
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLongList:Z

    if-eq v1, v0, :cond_0

    .line 556
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLongList:Z

    .line 558
    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onStateDependencyChanged(Z)V

    .line 553
    :cond_0
    return-void

    .line 554
    .end local v0    # "longList":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "longList":Z
    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeight:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 426
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
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1407
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1408
    return v3

    .line 1411
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1412
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 1413
    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-nez v1, :cond_2

    .line 1414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v1

    .line 1412
    if-eqz v1, :cond_2

    .line 1415
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    .line 1416
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    .line 1419
    :cond_2
    return v3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 1361
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1362
    return v6

    .line 1365
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1400
    :cond_1
    :goto_0
    return v6

    .line 1367
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1373
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1374
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    .line 1375
    const/4 v1, 0x1

    return v1

    .line 1378
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mInitialTouchX:F

    .line 1379
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->startPendingDrag()V

    goto :goto_0

    .line 1383
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1384
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1385
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

    .line 1386
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    .line 1388
    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mInitialTouchX:F

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1389
    .local v0, "pos":F
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->scrollTo(F)V

    .line 1391
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1396
    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1365
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
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 539
    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    if-eq v2, p1, :cond_3

    .line 540
    :cond_0
    iput p2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    .line 541
    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    .line 543
    sub-int v2, p2, p1

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 544
    .local v1, "hasMoreItems":Z
    :cond_1
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 545
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 546
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    .line 549
    .end local v0    # "firstVisibleItem":I
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLongList(II)V

    .line 538
    .end local v1    # "hasMoreItems":Z
    :cond_3
    return-void
.end method

.method public onScroll(III)V
    .locals 4
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 919
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 920
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    .line 921
    return-void

    .line 924
    :cond_0
    sub-int v2, p3, p2

    if-lez v2, :cond_1

    move v0, v1

    .line 925
    .local v0, "hasMoreItems":Z
    :cond_1
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-eq v2, v3, :cond_2

    .line 926
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    .line 929
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    .line 931
    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mFirstVisibleItem:I

    if-eq v2, p1, :cond_3

    .line 932
    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mFirstVisibleItem:I

    .line 935
    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-eq v2, v3, :cond_3

    .line 936
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    .line 937
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    .line 918
    :cond_3
    return-void
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 971
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    .line 531
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1426
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1427
    return v4

    .line 1430
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1495
    :cond_1
    :goto_0
    return v4

    .line 1433
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1434
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1435
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    .line 1436
    return v5

    .line 1438
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mInitialTouchX:F

    .line 1439
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->startPendingDrag()V

    goto :goto_0

    .line 1444
    :pswitch_1
    iget-wide v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    cmp-long v1, v2, v8

    if-ltz v1, :cond_3

    .line 1446
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    .line 1448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1449
    .local v0, "pos":F
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    .line 1450
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->scrollTo(F)V

    .line 1455
    .end local v0    # "pos":F
    :cond_3
    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne v1, v6, :cond_1

    .line 1459
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1460
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, v4}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 1462
    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    .line 1463
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    .line 1465
    return v5

    .line 1470
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

    .line 1471
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    .line 1476
    :cond_4
    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne v1, v6, :cond_1

    .line 1478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1479
    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    .line 1482
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_5

    .line 1483
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->scrollTo(F)V

    .line 1486
    :cond_5
    return v5

    .line 1491
    .end local v0    # "pos":F
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1430
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

    .prologue
    .line 402
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 403
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 405
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 401
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 435
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    .line 437
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onStateDependencyChanged(Z)V

    .line 433
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 415
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mEnabled:Z

    .line 417
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onStateDependencyChanged(Z)V

    .line 413
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 476
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 477
    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    .line 479
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    .line 475
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 495
    if-nez p1, :cond_0

    .line 496
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 497
    const/4 p1, 0x1

    .line 500
    :cond_0
    :goto_0
    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    if-eq v3, p1, :cond_2

    .line 501
    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    .line 502
    if-eq p1, v4, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    .line 504
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    iget-boolean v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v6, :cond_5

    :goto_2
    aget v2, v3, v4

    .line 505
    .local v2, "previewResId":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 508
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 509
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 510
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 511
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 512
    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewPadding:I

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 513
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 517
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    .line 494
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v2    # "previewResId":I
    :cond_2
    return-void

    .line 497
    :cond_3
    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    move v3, v5

    .line 502
    goto :goto_1

    :cond_5
    move v4, v5

    .line 504
    goto :goto_2
.end method

.method public setStyle(I)V
    .locals 9
    .param p1, "resId"    # I

    .prologue
    const/4 v8, 0x0

    .line 343
    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 345
    .local v1, "context":Landroid/content/Context;
    sget-object v5, Lcom/android/internal/R$styleable;->FastScroll:[I

    .line 344
    const/4 v6, 0x0

    .line 345
    const v7, 0x10103f7

    .line 344
    invoke-virtual {v1, v6, v5, v7, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 346
    .local v4, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 347
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 348
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 349
    .local v3, "index":I
    packed-switch v3, :pswitch_data_0

    .line 347
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    :pswitch_1
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlayPosition:I

    goto :goto_1

    .line 354
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v5, v8

    goto :goto_1

    .line 357
    :pswitch_3
    iget-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v7, 0x1

    aput v6, v5, v7

    goto :goto_1

    .line 360
    :pswitch_4
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 363
    :pswitch_5
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 366
    :pswitch_6
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextAppearance:I

    goto :goto_1

    .line 369
    :pswitch_7
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 372
    :pswitch_8
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextSize:F

    goto :goto_1

    .line 375
    :pswitch_9
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinWidth:I

    goto :goto_1

    .line 378
    :pswitch_a
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinHeight:I

    goto :goto_1

    .line 381
    :pswitch_b
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinWidth:I

    goto :goto_1

    .line 384
    :pswitch_c
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinHeight:I

    goto :goto_1

    .line 387
    :pswitch_d
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewPadding:I

    goto :goto_1

    .line 392
    .end local v3    # "index":I
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 394
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateAppearance()V

    .line 342
    return-void

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    .line 487
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    .line 588
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    .line 589
    return-void

    .line 592
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mUpdatingLayout:Z

    .line 594
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateContainerRect()V

    .line 596
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->layoutThumb()V

    .line 597
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->layoutTrack()V

    .line 599
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 600
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 601
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 602
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 603
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 606
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 607
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 608
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 609
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 610
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 612
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mUpdatingLayout:Z

    .line 585
    return-void
.end method
