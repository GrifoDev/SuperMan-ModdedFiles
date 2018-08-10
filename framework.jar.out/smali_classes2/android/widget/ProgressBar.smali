.class public Landroid/widget/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ProgressBar$1;,
        Landroid/widget/ProgressBar$AccessibilityEventSender;,
        Landroid/widget/ProgressBar$ProgressTintInfo;,
        Landroid/widget/ProgressBar$RefreshData;,
        Landroid/widget/ProgressBar$RefreshProgressRunnable;,
        Landroid/widget/ProgressBar$SavedState;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MAX_LEVEL:I = 0x2710

.field public static final MODE_STANDARD:I = 0x0

.field private static final PROGRESS_ANIM_DURATION:I = 0x50

.field private static final PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field public static final SEM_MODE_DUAL_COLOR:I = 0x2

.field public static final SEM_MODE_SPLIT:I = 0x4

.field public static final SEM_MODE_VERTICAL:I = 0x3

.field public static final SEM_MODE_WARNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProgressBar"

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private final VISUAL_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

.field private mAggregatedIsVisible:Z

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field protected mCurrentMode:I

.field protected mDensity:F

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field public mIsDeviceDefaultDark:Z

.field private mMax:I

.field mMaxHeight:I

.field private mMaxInitialized:Z

.field mMaxWidth:I

.field private mMin:I

.field mMinHeight:I

.field private mMinInitialized:Z

.field mMinWidth:I

.field mMirrorForRtl:Z

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

.field mSampleWidth:I

.field private mSecondaryProgress:I

.field public mSemMin:I

.field public mSemMinEnabled:Z

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J

.field private mVisualProgress:F


# direct methods
.method static synthetic -get0(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/ProgressBar;)F
    .locals 1

    iget v0, p0, Landroid/widget/ProgressBar;->mVisualProgress:F

    return v0
.end method

.method static synthetic -set0(Landroid/widget/ProgressBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    return p1
.end method

.method static synthetic -set1(Landroid/widget/ProgressBar;F)F
    .locals 0

    iput p1, p0, Landroid/widget/ProgressBar;->mVisualProgress:F

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/ProgressBar;IIZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/ProgressBar;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;->setVisualProgress(IF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/ProgressBar;->DEBUG:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/widget/ProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/ProgressBar;->mSampleWidth:I

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/ProgressBar;->mCurrentMode:I

    new-instance v5, Landroid/widget/ProgressBar$1;

    const-string/jumbo v6, "visual_progress"

    invoke-direct {v5, p0, v6}, Landroid/widget/ProgressBar$1;-><init>(Landroid/widget/ProgressBar;Ljava/lang/String;)V

    iput-object v5, p0, Landroid/widget/ProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    invoke-direct {p0}, Landroid/widget/ProgressBar;->initProgressBar()V

    sget-object v5, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    iget v5, p0, Landroid/widget/ProgressBar;->mDuration:I

    const/16 v6, 0x9

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mDuration:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    const/16 v6, 0xb

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    const/16 v6, 0xc

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    iget v5, p0, Landroid/widget/ProgressBar;->mBehavior:I

    const/16 v6, 0xa

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mBehavior:I

    const/16 v5, 0xd

    const v6, 0x10a000b

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0, p1, v4}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    :cond_1
    iget v5, p0, Landroid/widget/ProgressBar;->mMin:I

    const/16 v6, 0x1a

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setMin(I)V

    iget v5, p0, Landroid/widget/ProgressBar;->mMax:I

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    iget v5, p0, Landroid/widget/ProgressBar;->mProgress:I

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget v5, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const/4 v6, 0x4

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    iget-boolean v5, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    const/4 v6, 0x6

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    iget-boolean v5, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-nez v5, :cond_16

    iget-boolean v5, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    const/4 v6, 0x5

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    :goto_2
    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-boolean v5, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    const/16 v6, 0xf

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v5, :cond_3

    new-instance v5, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_3
    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x11

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    :cond_4
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v5, :cond_5

    new-instance v5, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_5
    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    :cond_6
    const/16 v5, 0x13

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v5, :cond_7

    new-instance v5, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_7
    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x13

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    :cond_8
    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v5, :cond_9

    new-instance v5, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_9
    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x12

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    :cond_a
    const/16 v5, 0x15

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v5, :cond_b

    new-instance v5, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_b
    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x15

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    :cond_c
    const/16 v5, 0x14

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v5, :cond_d

    new-instance v5, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_d
    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x14

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    :cond_e
    const/16 v5, 0x17

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v5, :cond_f

    new-instance v5, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_f
    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x17

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    :cond_10
    const/16 v5, 0x16

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v5, :cond_11

    new-instance v5, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_11
    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x16

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    :cond_12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_13

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setImportantForAccessibility(I)V

    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, p0, Landroid/widget/ProgressBar;->mDensity:F

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1110083

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v2, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_17

    const/4 v5, 0x1

    :goto_3
    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mIsDeviceDefaultDark:Z

    return-void

    :cond_14
    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_16
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_17
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private applyIndeterminateTint()V
    .locals 3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_3

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyPrimaryProgressTint()V
    .locals 3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_3

    :cond_0
    const v1, 0x102000d

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyProgressBackgroundTint()V
    .locals 3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_3

    :cond_0
    const/high16 v1, 0x1020000

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyProgressTints()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    :cond_0
    return-void
.end method

.method private applySecondaryProgressTint()V
    .locals 3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_3

    :cond_0
    const v1, 0x102000f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZZZ)V
    .locals 15

    monitor-enter p0

    :try_start_0
    iget v12, p0, Landroid/widget/ProgressBar;->mMax:I

    iget v13, p0, Landroid/widget/ProgressBar;->mMin:I

    sub-int v10, v12, v13

    if-lez v10, :cond_3

    iget v12, p0, Landroid/widget/ProgressBar;->mMin:I

    sub-int v12, p2, v12

    int-to-float v12, v12

    int-to-float v13, v10

    div-float v11, v12, v13

    :goto_0
    const v12, 0x102000d

    move/from16 v0, p1

    if-ne v0, v12, :cond_4

    const/4 v5, 0x1

    :goto_1
    const v12, 0x461c4000    # 10000.0f

    mul-float/2addr v12, v11

    float-to-int v6, v12

    iget-object v3, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a

    const/4 v9, 0x0

    instance-of v12, v3, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v12, :cond_6

    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v12, v0

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->canResolveLayoutDirection()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    if-eqz v9, :cond_5

    :goto_2
    invoke-virtual {v9, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    :goto_3
    if-eqz v5, :cond_b

    if-eqz p5, :cond_b

    iget-object v12, p0, Landroid/widget/ProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    const/4 v13, 0x1

    new-array v13, v13, [F

    const/4 v14, 0x0

    aput v11, v13, v14

    invoke-static {p0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v12, 0x50

    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v12, Landroid/widget/ProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :goto_4
    if-eqz v5, :cond_2

    if-eqz p4, :cond_2

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {p0, v11, v0, v1}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    move-object v9, v3

    goto :goto_2

    :cond_6
    :try_start_1
    instance-of v12, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v12, :cond_9

    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v8

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v8, :cond_1

    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    move-object v12, v0

    invoke-virtual {v12, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v9, 0x0

    instance-of v12, v7, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v12, :cond_7

    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->canResolveLayoutDirection()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_7
    if-eqz v9, :cond_8

    move-object v12, v9

    :goto_6
    invoke-virtual {v12, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    move-object v12, v3

    goto :goto_6

    :cond_9
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    :cond_a
    :try_start_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    goto :goto_3

    :cond_b
    move/from16 v0, p1

    invoke-direct {p0, v0, v11}, Landroid/widget/ProgressBar;->setVisualProgress(IF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method private initProgressBar()V
    .locals 4

    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ProgressBar;->mMin:I

    const/16 v0, 0x64

    iput v0, p0, Landroid/widget/ProgressBar;->mMax:I

    iput v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    iput v1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    const/16 v0, 0xfa0

    iput v0, p0, Landroid/widget/ProgressBar;->mDuration:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ProgressBar;->mBehavior:I

    iput v2, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iput v3, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    iput v2, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iput v3, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    return-void
.end method

.method private static needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    instance-of v4, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_2

    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v5

    :cond_2
    instance-of v4, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v4, :cond_5

    move-object v2, p0

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v5

    :cond_5
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    return v4
.end method

.method private declared-synchronized refreshProgress(IIZZ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/ProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$RefreshProgressRunnable;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    :cond_2
    invoke-static {p1, p2, p3, p4}, Landroid/widget/ProgressBar$RefreshData;->obtain(IIZZ)Landroid/widget/ProgressBar$RefreshData;

    move-result-object v6

    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mAttached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-direct {v0, p0, v1}, Landroid/widget/ProgressBar$AccessibilityEventSender;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$AccessibilityEventSender;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    :goto_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setVisualProgress(IF)V
    .locals 3

    iput p2, p0, Landroid/widget/ProgressBar;->mVisualProgress:F

    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz v0, :cond_1

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v2, p2

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisualProgressChanged(IF)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    goto :goto_0
.end method

.method private swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v1

    :goto_0
    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 13

    instance-of v10, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v10, :cond_4

    move-object v7, p1

    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    new-array v9, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const v10, 0x102000d

    if-eq v5, v10, :cond_0

    const v10, 0x102000f

    if-ne v5, v10, :cond_1

    :cond_0
    const/4 v10, 0x1

    :goto_1
    invoke-direct {p0, v11, v10}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_3

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return-object v2

    :cond_4
    instance-of v10, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v10, :cond_6

    move-object v6, p1

    check-cast v6, Landroid/graphics/drawable/StateListDrawable;

    new-instance v8, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {v6}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_5

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v10

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {p0, v11, p2}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    return-object v8

    :cond_6
    instance-of v10, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_9

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget v10, p0, Landroid/widget/ProgressBar;->mSampleWidth:I

    if-gtz v10, :cond_7

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v10

    iput v10, p0, Landroid/widget/ProgressBar;->mSampleWidth:I

    :cond_7
    if-eqz p2, :cond_8

    new-instance v10, Landroid/graphics/drawable/ClipDrawable;

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-direct {v10, v1, v11, v12}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v10

    :cond_8
    return-object v1

    :cond_9
    return-object p1
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/16 v7, 0x2710

    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p1, v4

    :cond_1
    return-object p1
.end method

.method private updateDrawableState()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v3

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v0, v4

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    :cond_2
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v3, p0, Landroid/widget/ProgressBar;->mCurrentMode:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v3

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawingTime()J

    move-result-wide v4

    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object v3, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidateOnAnimation()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v3, :cond_1

    instance-of v3, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    :cond_1
    return-void

    :cond_2
    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    int-to-float v3, v3

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :catchall_0
    move-exception v3

    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    throw v3
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string/jumbo v0, "progress:max"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "progress:progress"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "progress:secondaryProgress"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "progress:indeterminate"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMin()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMirrorForRtl()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    return v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v3, p0, Landroid/widget/ProgressBar;->mScrollX:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    add-int v1, v3, v4

    iget v3, p0, Landroid/widget/ProgressBar;->mScrollY:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    add-int v2, v3, v4

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->invalidate(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 10

    const/4 v9, 0x1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar$RefreshData;

    iget v1, v8, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v2, v8, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v3, v8, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    iget-boolean v5, v8, Landroid/widget/ProgressBar$RefreshData;->animate:Z

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    invoke-virtual {v8}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :cond_2
    iput-boolean v9, p0, Landroid/widget/ProgressBar;->mAttached:Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mAttached:Z

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    iget v1, p0, Landroid/widget/ProgressBar;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 8

    monitor-enter p0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v5, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    const/4 v5, 0x0

    invoke-static {v2, p1, v5}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method onProgressRefresh(FZI)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/ProgressBar;->scheduleAccessibilityEventSender()V

    :cond_0
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-le v0, v1, :cond_1

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const v1, 0x102000f

    invoke-direct {p0, v1, v0, v2, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V

    :cond_1
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/widget/ProgressBar$SavedState;

    invoke-virtual {v0}, Landroid/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Landroid/widget/ProgressBar$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    return-void
.end method

.method protected onSlidingRefresh(I)V
    .locals 3

    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x102000d

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mAggregatedIsVisible:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mAggregatedIsVisible:Z

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method onVisualProgressChanged(IF)V
    .locals 0

    return-void
.end method

.method public postInvalidate()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public semSetMin(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ProgressBar;->mMin:I

    iput p1, p0, Landroid/widget/ProgressBar;->mSemMin:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mSemMinEnabled:Z

    return-void
.end method

.method public semSetMode(I)V
    .locals 3

    iput p1, p0, Landroid/widget/ProgressBar;->mCurrentMode:I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    const v2, 0x1080b20

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    const v2, 0x1080b36

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    :cond_2
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mMinInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Landroid/widget/ProgressBar;->mMin:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mMaxInitialized:Z

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mMinInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    :cond_1
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    const v1, 0x102000d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iput p1, p0, Landroid/widget/ProgressBar;->mMax:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMin(I)V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mMaxInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Landroid/widget/ProgressBar;->mMax:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mMinInitialized:Z

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mMaxInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroid/widget/ProgressBar;->mMin:I

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-ge v0, p1, :cond_1

    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    :cond_1
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    const v1, 0x102000d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iput p1, p0, Landroid/widget/ProgressBar;->mMin:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ProgressBar;->setProgressInternal(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgress(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/ProgressBar;->setProgressInternal(IZZ)Z

    return-void
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget v0, p0, Landroid/widget/ProgressBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    iget v0, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    if-ge v0, v7, :cond_2

    iput v7, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    :cond_3
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    const v1, 0x102000d

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const v1, 0x102000f

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    iget v0, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    if-ge v0, v6, :cond_2

    iput v6, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    goto :goto_0
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method declared-synchronized setProgressInternal(IZZ)Z
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mSemMinEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/ProgressBar;->mSemMin:I

    :goto_0
    iget v1, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I

    goto :goto_0

    :cond_2
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    const v1, 0x102000d

    invoke-direct {p0, v1, v0, p2, p3}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Landroid/widget/ProgressBar;->mMin:I

    :cond_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_2

    iget p1, p0, Landroid/widget/ProgressBar;->mMax:I

    :cond_2
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_3

    iput p1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const v1, 0x102000f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    return-void

    :cond_2
    iput-boolean v2, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_3
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_4

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    :goto_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_5

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    :goto_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    goto :goto_2
.end method

.method stopAnimation()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    return-void
.end method

.method protected updateDrawableBounds(II)V
    .locals 15

    iget v12, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    iget v13, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    add-int/2addr v12, v13

    sub-int p1, p1, v12

    iget v12, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    iget v13, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    add-int/2addr v12, v13

    sub-int p2, p2, v12

    move/from16 v8, p1

    move/from16 v1, p2

    const/4 v10, 0x0

    const/4 v7, 0x0

    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    iget-boolean v12, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v12, v12, Landroid/graphics/drawable/AnimationDrawable;

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v12, v6

    int-to-float v13, v5

    div-float v4, v12, v13

    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v2, v12, v13

    cmpl-float v12, v4, v2

    if-eqz v12, :cond_0

    cmpl-float v12, v2, v4

    if-lez v12, :cond_4

    move/from16 v0, p2

    int-to-float v12, v0

    mul-float/2addr v12, v4

    float-to-int v11, v12

    sub-int v12, p1, v11

    div-int/lit8 v7, v12, 0x2

    add-int v8, v7, v11

    :cond_0
    :goto_0
    iget-boolean v12, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v12, :cond_1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_1

    move v9, v7

    sub-int v7, p1, v8

    sub-int v8, p1, v9

    :cond_1
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v7, v10, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    iget-object v12, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    iget-object v12, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    return-void

    :cond_4
    move/from16 v0, p1

    int-to-float v12, v0

    const/high16 v13, 0x3f800000    # 1.0f

    div-float/2addr v13, v4

    mul-float/2addr v12, v13

    float-to-int v3, v12

    sub-int v12, p2, v3

    div-int/lit8 v10, v12, 0x2

    add-int v1, v10, v3

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_0
.end method
