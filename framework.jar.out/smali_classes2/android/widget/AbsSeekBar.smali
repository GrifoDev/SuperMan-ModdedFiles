.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final CURRENT_SEC_ACTIVE_THEMEPACKAGE:Ljava/lang/String; = "current_sec_active_themepackage"

.field private static final MINIMUM_SCAFE_VERSION:I = 0x7e0

.field private static final MUTE_VIB_DISTANCE_LVL:I = 0x190

.field private static final MUTE_VIB_DURATION:I = 0x1f4

.field private static final MUTE_VIB_TOTAL:I = 0x4

.field private static final NO_ALPHA:I = 0xff

.field private static final SCAFE_VERSION_LENGTH:I = 0x4

.field private static final SIDE_LEFT:I = 0x1

.field private static final SIDE_NONE:I = 0x2

.field private static final SIDE_RIGHT:I = 0x0

.field private static final STATUS_STOP:I = 0x0

.field private static final STATUS_TAIL_CLOSE:I = 0x2

.field private static final STATUS_TAIL_OPEN:I = 0x1

.field private static final SYSPROP_RO_SCAFE_VERSION:Ljava/lang/String; = "ro.build.scafe.version"

.field private static final TAG:Ljava/lang/String; = "AbsSeekBar"


# instance fields
.field private mAllowedSeekBarAnimation:Z

.field private mAnimationCurrentFrame:I

.field private mAnimationTotalFrame:I

.field private mCircleTotal:I

.field private mCurrentProgressLevel:I

.field private mCurrentSide:I

.field private mCurrentSkipFrameWhenActionDown:I

.field private mCurrentStatus:I

.field private mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

.field private mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

.field private mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

.field private mDisabledAlpha:F

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTickMarkTint:Z

.field private mHasTickMarkTintMode:Z

.field private mHoveringLevel:I

.field private mIsDragging:Z

.field private mIsDraggingForSliding:Z

.field private mIsFirstSetProgress:Z

.field private mIsFluidEnabled:Z

.field private mIsOpenTheme:Z

.field private mIsTouchDisabled:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mLargeFont:Z

.field private mMuteAnimationSet:Landroid/animation/AnimatorSet;

.field private mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

.field private mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

.field private mOverlapBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

.field private mOverlapPoint:I

.field private mOverlapPrimary:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mPressedThumbWidth:I

.field private mPreviousProgress:I

.field private mScaledTouchSlop:I

.field private mSetDualColorMode:Z

.field private mSliderPath:Landroid/widget/SeekBarFluidPath;

.field private mSplitProgress:Landroid/graphics/drawable/Drawable;

.field private mSplitTrack:Z

.field private mTailWidthFromCircleCenter:F

.field private mTargetFrame:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbPosX:I

.field private mThumbPosXFloat:F

.field private mThumbPosY:I

.field private mThumbPosYFloat:F

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTickMark:Landroid/graphics/drawable/Drawable;

.field private mTickMarkTintList:Landroid/content/res/ColorStateList;

.field private mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field mTouchProgressOffset:F

.field private mUseMuteAnimation:Z


# direct methods
.method static synthetic -get0(Landroid/widget/AbsSeekBar;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/AbsSeekBar;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    iput v3, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/AbsSeekBar;->mCurrentSide:I

    iput v1, p0, Landroid/widget/AbsSeekBar;->mCurrentStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    iput v3, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/AbsSeekBar;->mCurrentSide:I

    iput v1, p0, Landroid/widget/AbsSeekBar;->mCurrentStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    const/4 v7, 0x2

    iput v7, p0, Landroid/widget/AbsSeekBar;->mCurrentSide:I

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/AbsSeekBar;->mCurrentStatus:I

    sget-object v7, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v7, v8}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    :cond_0
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    :cond_1
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/AbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x7

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v7, v8}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    :cond_2
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    :cond_3
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    const/16 v7, 0x8

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v6, :cond_6

    sget-object v7, Lcom/android/internal/R$styleable;->Theme:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v7, 0x3

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v7, :cond_7

    const v7, 0x106025e

    :goto_1
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v7, :cond_8

    const v7, 0x106025b

    :goto_2
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v7, :cond_9

    const v7, 0x1060290

    :goto_3
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    const v7, 0x1060262

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    const v7, 0x1060261

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    const v7, 0x11200ee

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    if-eqz v7, :cond_4

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->initMuteAnimation()V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->seekBarFluidInit()V

    :cond_5
    return-void

    :cond_6
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    goto/16 :goto_0

    :cond_7
    const v7, 0x106025f

    goto :goto_1

    :cond_8
    const v7, 0x106025c

    goto :goto_2

    :cond_9
    const v7, 0x1060291

    goto :goto_3
.end method

.method private applyThumbTint()V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyTickMarkTint()V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private cancelMuteAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private checkInvalidatedDualColorMode()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeTail()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/AbsSeekBar;->mCurrentStatus:I

    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private drawFrame(Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x0

    iget v2, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    if-gez v2, :cond_2

    iget v2, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    neg-int v0, v2

    :goto_0
    iget v2, p0, Landroid/widget/AbsSeekBar;->mAnimationTotalFrame:I

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_0

    iget v2, p0, Landroid/widget/AbsSeekBar;->mAnimationTotalFrame:I

    add-int/lit8 v0, v2, -0x1

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mSliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBarFluidPath;->getPath(I)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    if-gez v2, :cond_3

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXFloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYFloat:F

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_1
    :goto_1
    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXFloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYFloat:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/widget/AbsSeekBar;->invalidate(IIII)V

    return-void

    :cond_2
    iget v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXFloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYFloat:F

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    :cond_4
    iget v2, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    if-lez v2, :cond_5

    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXFloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYFloat:F

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    :cond_5
    iget v2, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    if-gez v2, :cond_1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXFloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYFloat:F

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1
.end method

.method private getDualOverlapDrawable()V
    .locals 3

    const v2, 0x1080b21

    const v1, 0x1080b1f

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getScale()F
    .locals 5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    sub-int v2, v0, v1

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initMuteAnimation()V
    .locals 15

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x8

    const/16 v1, 0x3e

    const/16 v0, 0x190

    const/4 v2, 0x0

    :goto_0
    const/16 v7, 0x8

    if-ge v2, v7, :cond_3

    rem-int/lit8 v7, v2, 0x2

    if-nez v7, :cond_1

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    new-array v7, v14, [I

    aput v12, v7, v12

    aput v0, v7, v13

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    :goto_2
    int-to-long v8, v1

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Landroid/widget/AbsSeekBar$1;

    invoke-direct {v7, p0}, Landroid/widget/AbsSeekBar$1;-><init>(Landroid/widget/AbsSeekBar;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    int-to-double v8, v0

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    double-to-int v0, v8

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    new-array v7, v14, [I

    aput v0, v7, v12

    aput v12, v7, v13

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    goto :goto_2

    :cond_3
    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-void
.end method

.method private openTail(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPreviousProgress:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/widget/AbsSeekBar;->mCurrentSkipFrameWhenActionDown:I

    if-gtz v1, :cond_6

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPreviousProgress:I

    if-ge v1, p1, :cond_5

    iget v1, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosYFloat:F

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTailWidthFromCircleCenter:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXFloat:F

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTailWidthFromCircleCenter:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbPosXFloat:F

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTailWidthFromCircleCenter:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    return-void

    :cond_3
    iput v3, p0, Landroid/widget/AbsSeekBar;->mCurrentSide:I

    const/4 v0, 0x5

    iget v1, p0, Landroid/widget/AbsSeekBar;->mAnimationTotalFrame:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/widget/AbsSeekBar;->mTargetFrame:I

    :cond_4
    :goto_0
    iput v4, p0, Landroid/widget/AbsSeekBar;->mCurrentStatus:I

    :goto_1
    iput p1, p0, Landroid/widget/AbsSeekBar;->mPreviousProgress:I

    return-void

    :cond_5
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPreviousProgress:I

    if-le v1, p1, :cond_4

    iput v4, p0, Landroid/widget/AbsSeekBar;->mCurrentSide:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mCircleTotal:I

    neg-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsSeekBar;->mTargetFrame:I

    goto :goto_0

    :cond_6
    iget v1, p0, Landroid/widget/AbsSeekBar;->mCurrentSkipFrameWhenActionDown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsSeekBar;->mCurrentSkipFrameWhenActionDown:I

    goto :goto_1
.end method

.method private seekBarFluidInit()V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v0, :cond_3

    const v0, 0x1060290

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mPressedThumbWidth:I

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSliderPath:Landroid/widget/SeekBarFluidPath;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/SeekBarFluidPath;

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPressedThumbWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Landroid/widget/SeekBarFluidPath;-><init>(F)V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mSliderPath:Landroid/widget/SeekBarFluidPath;

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v0}, Landroid/widget/SeekBarFluidPath;->getPathCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mAnimationTotalFrame:I

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v0}, Landroid/widget/SeekBarFluidPath;->getCircleCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mCircleTotal:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mPreviousProgress:I

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v0}, Landroid/widget/SeekBarFluidPath;->getTailWidthFromCircleCenter()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTailWidthFromCircleCenter:F

    return-void

    :cond_3
    const v0, 0x1060291

    goto :goto_0
.end method

.method private setHotspot(FF)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method private setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    goto :goto_0
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, p1, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    sub-int/2addr v5, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v5, v5, v17

    int-to-float v0, v5

    move/from16 v17, v0

    mul-float v17, v17, p3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    const/high16 v17, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v17

    if-eqz v17, :cond_3

    sub-int v8, v5, v14

    :goto_1
    add-int v12, v8, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    add-int v17, v8, v9

    add-int v18, v16, v10

    add-int v19, v12, v9

    add-int v20, v7, v10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_1
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v12, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    add-int v17, v17, v8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    div-int/lit8 v17, v13, 0x2

    add-int v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosXFloat:F

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v13

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosYFloat:F

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    return-void

    :cond_2
    move/from16 v16, p4

    add-int v7, p4, v13

    goto/16 :goto_0

    :cond_3
    move v8, v14

    goto/16 :goto_1
.end method

.method private setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 17

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v13, p1, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v1, v13, v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v1, v9

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v1, v13

    int-to-float v13, v1

    mul-float v13, v13, p3

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v10, v13

    const/high16 v13, -0x80000000

    move/from16 v0, p4

    if-ne v0, v13, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v4, v7, Landroid/graphics/Rect;->left:I

    iget v8, v7, Landroid/graphics/Rect;->right:I

    :goto_0
    sub-int v12, v1, v10

    add-int v3, v12, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int v6, v13, v14

    add-int v13, v4, v5

    add-int v14, v12, v6

    add-int v15, v8, v5

    add-int v16, v3, v6

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v12, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    div-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v4

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    add-int/2addr v13, v12

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    int-to-float v13, v4

    int-to-float v14, v11

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsSeekBar;->mThumbPosXFloat:F

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsSeekBar;->mThumbPosYFloat:F

    return-void

    :cond_1
    move/from16 v4, p4

    add-int v8, p4, v11

    goto :goto_0
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method private startMuteAnimation()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private trackHoverEvent(I)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, v4, v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v5, v6

    const/4 v1, 0x0

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge p1, v5, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    int-to-float v5, v2

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    float-to-int v5, v1

    iput v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    return-void

    :cond_0
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le p1, v5, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v3, v5, v6

    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    iget v9, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEventInVertical(Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v6

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v9, v6, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v9, v10

    const/4 v2, 0x0

    iget-boolean v9, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_4

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v9, v6, v9

    if-le v7, v9, :cond_2

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v10

    sub-int v3, v9, v10

    int-to-float v9, v3

    div-float v1, v11, v9

    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-lez v9, :cond_1

    cmpg-float v9, v5, v11

    if-gez v9, :cond_1

    rem-float v4, v5, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v1, v9

    cmpl-float v9, v4, v9

    if-lez v9, :cond_1

    sub-float v9, v1, v4

    add-float/2addr v5, v9

    :cond_1
    int-to-float v9, v3

    mul-float/2addr v9, v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-float/2addr v2, v9

    int-to-float v9, v7

    int-to-float v10, v8

    invoke-direct {p0, v9, v10}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    return-void

    :cond_2
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v7, v9, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    sub-int v9, v0, v7

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    int-to-float v10, v0

    div-float v5, v9, v10

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    :cond_4
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v7, v9, :cond_5

    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v9, v6, v9

    if-le v7, v9, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_6
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float v5, v9, v10

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private trackTouchEventInVertical(Landroid/view/MotionEvent;)V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v1

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v7, v1, v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v0, v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v6, v1, v7

    const/4 v3, 0x0

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    if-ge v6, v7, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    int-to-float v7, v2

    mul-float/2addr v7, v4

    add-float/2addr v3, v7

    int-to-float v7, v5

    int-to-float v8, v6

    invoke-direct {p0, v7, v8}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    float-to-int v7, v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    return-void

    :cond_0
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v7, v1, v7

    if-le v6, v7, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v7, v6, v7

    int-to-float v7, v7

    int-to-float v8, v0

    div-float v4, v7, v8

    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateBoundsForDualColor()V
    .locals 13

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v2

    iget v9, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    if-nez v9, :cond_4

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    sub-int v8, v9, v10

    iget v9, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-eqz v9, :cond_3

    iget v9, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v10

    if-ge v9, v10, :cond_3

    iget-boolean v9, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    int-to-float v10, v8

    int-to-float v11, v2

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v6, v9

    iget v9, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v4, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v4, v10, v6, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    int-to-float v10, v8

    iget v11, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v4, v9

    goto :goto_0

    :cond_4
    iget v9, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v9, v10

    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    int-to-float v10, v3

    iget v11, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    sub-int v11, v5, v11

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v1, v9

    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    int-to-float v10, v3

    sub-int v11, v5, v2

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v7, v9

    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->top:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v11, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v7, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private updateDualColorMode()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private updateSplitProgress()V
    .locals 12

    const/high16 v11, 0x41b00000    # 22.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x40000000    # 2.0f

    iget v4, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v1, :cond_1

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v2

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    int-to-float v5, v3

    div-float/2addr v5, v10

    iget v6, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v6, v9

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v6, v2

    div-float/2addr v6, v10

    iget v7, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v7, v11

    div-float/2addr v7, v10

    sub-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v7, v3

    div-float/2addr v7, v10

    iget v8, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v8, v9

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v8, v2

    div-float/2addr v8, v10

    iget v9, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v9, v11

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return-void

    :cond_3
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 13

    const/4 v12, 0x0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPosInVertical(II)V

    return-void

    :cond_0
    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v2, v10, v11

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-nez v3, :cond_4

    const/4 v4, 0x0

    :goto_0
    const/4 v0, 0x0

    if-le v4, v7, :cond_5

    sub-int v10, v2, v4

    div-int/lit8 v1, v10, 0x2

    sub-int v10, v4, v7

    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v0, 0x1

    :cond_1
    sub-int v10, v4, v7

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int v8, v10, v0

    move v5, v1

    :goto_1
    if-eqz v6, :cond_2

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v10, p1, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v9, v10, v11

    add-int v10, v8, v7

    invoke-virtual {v6, v12, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v10

    invoke-direct {p0, p1, v3, v10, v5}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_3
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    return-void

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_0

    :cond_5
    sub-int v10, v2, v7

    div-int/lit8 v1, v10, 0x2

    move v8, v1

    sub-int v10, v7, v4

    div-int/lit8 v10, v10, 0x2

    add-int v5, v1, v10

    goto :goto_1
.end method

.method private updateThumbAndTrackPosInVertical(II)V
    .locals 11

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v1, v9, v10

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-nez v2, :cond_2

    const/4 v4, 0x0

    :goto_0
    if-le v4, v8, :cond_3

    sub-int v9, v1, v4

    div-int/lit8 v0, v9, 0x2

    sub-int v9, v4, v8

    div-int/lit8 v9, v9, 0x2

    add-int v7, v0, v9

    move v3, v0

    :goto_1
    if-eqz v5, :cond_0

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v9, p2, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v6, v9, v10

    sub-int v9, v1, v7

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v9

    invoke-direct {p0, p2, v2, v9, v3}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    goto :goto_0

    :cond_3
    sub-int v9, v1, v8

    div-int/lit8 v0, v9, 0x2

    move v7, v0

    sub-int v9, v8, v4

    div-int/lit8 v9, v9, 0x2

    add-int v3, v0, v9

    goto :goto_1
.end method

.method private updateWarningMode(I)V
    .locals 3

    iget v1, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method


# virtual methods
.method canUserSetProgress()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method protected drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v9

    sub-int v0, v8, v9

    const/4 v8, 0x1

    if-le v0, v8, :cond_3

    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-ltz v7, :cond_0

    div-int/lit8 v3, v7, 0x2

    :goto_0
    if-ltz v1, :cond_1

    div-int/lit8 v2, v1, 0x2

    :goto_1
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    neg-int v9, v3

    neg-int v10, v2

    invoke-virtual {v8, v9, v10, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v6, v8, v9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x0

    :goto_2
    if-gt v4, v0, :cond_2

    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v4, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-le v4, v5, :cond_0

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    :cond_4
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v4, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    const/16 v4, 0xff

    if-eq v0, v4, :cond_5

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void

    :cond_4
    iget v4, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v0, v4

    goto :goto_0

    :cond_5
    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbHeight()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTickMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentStatus:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentSide:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    if-nez v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/AbsSeekBar;->mCurrentSide:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentSide:I

    packed-switch v0, :pswitch_data_1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->closeTail()V

    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V

    goto :goto_1

    :pswitch_2
    iget v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mCircleTotal:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCircleTotal:I

    iput v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    :cond_5
    iget v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    iget v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mTargetFrame:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Landroid/widget/AbsSeekBar;->mTargetFrame:I

    iput v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->closeTail()V

    goto :goto_2

    :pswitch_3
    iget v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mCircleTotal:I

    neg-int v1, v1

    if-le v0, v1, :cond_6

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCircleTotal:I

    neg-int v0, v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    :cond_6
    iget v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    iget v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mTargetFrame:I

    if-gt v0, v1, :cond_4

    iget v0, p0, Landroid/widget/AbsSeekBar;->mTargetFrame:I

    iput v0, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->closeTail()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method onHoverChanged(III)V
    .locals 0

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    if-ne v2, v6, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    :cond_2
    if-ne v2, v7, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(I)V

    iget v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v5, v3, v4}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(I)V

    iget v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v5, v3, v4}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    iget v5, p0, Landroid/widget/AbsSeekBar;->mHoverPopupType:I

    if-ne v5, v7, :cond_1

    invoke-virtual {p0, v6}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    if-le v0, v1, :cond_0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :sswitch_0
    neg-int v0, v0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    neg-int v0, v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v3, v3}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    return v3

    :cond_2
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    :sswitch_2
    neg-int v0, v0

    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    neg-int v0, v0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v3, v3}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    return v3

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x45 -> :sswitch_0
        0x46 -> :sswitch_1
        0x51 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x45 -> :sswitch_2
        0x46 -> :sswitch_3
        0x51 -> :sswitch_3
    .end sparse-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v5, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    :goto_1
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    const/4 v5, 0x0

    invoke-static {v2, p1, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v1, p2, v6}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_3

    const/4 v3, 0x0

    :goto_2
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method onProgressRefresh(FZI)V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v3, p1

    float-to-int v1, v3

    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    xor-int/lit8 v0, v3, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->startMuteAnimation()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iput v1, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-direct {p0, v3, v2, p1, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/AbsSeekBar;->openTail(I)V

    goto :goto_1
.end method

.method public onResolveDrawables(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    return-void
.end method

.method protected onSlidingRefresh(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onSlidingRefresh(I)V

    int-to-float v2, p1

    const v3, 0x461c4000    # 10000.0f

    div-float v0, v2, v3

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v2, v1, v0, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 0

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method onStopTrackingHover()V
    .locals 0

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    return v7

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    const/16 v6, 0x64

    if-lt v3, v6, :cond_4

    move v3, v4

    :goto_0
    iput v3, p0, Landroid/widget/AbsSeekBar;->mCurrentSkipFrameWhenActionDown:I

    iput v7, p0, Landroid/widget/AbsSeekBar;->mAnimationCurrentFrame:I

    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/AbsSeekBar;->mCurrentSide:I

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_3
    :goto_1
    return v5

    :cond_4
    move v3, v5

    goto :goto_0

    :pswitch_0
    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_1
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_6

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    if-eq v3, v4, :cond_7

    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_7

    :goto_2
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_7
    iget v3, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    goto :goto_2

    :pswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v3, :cond_8

    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    :cond_8
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_9

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v7}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    :goto_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_3

    :pswitch_3
    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v7}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    :cond_a
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method onVisualProgressChanged(IF)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisualProgressChanged(IF)V

    const v1, 0x102000d

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p2, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    return v6

    :cond_1
    sparse-switch p1, :sswitch_data_0

    return v6

    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v3

    if-nez v3, :cond_2

    return v6

    :cond_2
    if-eqz p2, :cond_3

    const-string/jumbo v3, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    :cond_3
    return v6

    :cond_4
    const-string/jumbo v3, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v3, v2

    invoke-virtual {p0, v3, v5, v5}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v3

    return v3

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v3

    if-nez v3, :cond_5

    return v6

    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v4

    sub-int v1, v3, v4

    int-to-float v3, v1

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v3, 0x2000

    if-ne p1, v3, :cond_6

    neg-int v0, v0

    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3, v5, v5}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    return v5

    :cond_7
    return v6

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_1
        0x102003d -> :sswitch_0
    .end sparse-switch
.end method

.method public semGetThumbBounds()Landroid/graphics/Rect;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public semIsFluidEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    return v0
.end method

.method public semSetFluidEnabled(Z)V
    .locals 8

    const/4 v7, 0x4

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "current_sec_active_themepackage"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    const/4 v3, 0x0

    const-string/jumbo v4, "ro.build.scafe.version"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_0

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_0
    const/16 v4, 0x7e0

    if-lt v3, v4, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    :goto_2
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->seekBarFluidInit()V

    :cond_1
    return-void

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move p1, v5

    goto :goto_2
.end method

.method public semSetHoverPopupType(I)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3231

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoverDetectTime(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->semSetHoverPopupType(I)V

    return-void
.end method

.method public semSetMode(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->semSetMode(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void

    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x1080b1c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x1080b37

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x1080b38

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public semSetOverlapPointForDualColor(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iput p1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void

    :cond_1
    iput p1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getDualOverlapDrawable()V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    goto :goto_0
.end method

.method public semSetThumbTintColor(I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public setDefaultColorForVolumePanel(Z)V
    .locals 3

    const v2, 0x1060261

    if-eqz p1, :cond_0

    const-string/jumbo v1, "#ffe3e0e0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    const-string/jumbo v1, "#ff56c0e5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    const-string/jumbo v1, "#ff56c0e5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    const-string/jumbo v1, "#fff7cdbd"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    const-string/jumbo v1, "#fff1662f"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    const-string/jumbo v1, "#fff1662f"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v1, :cond_1

    const v1, 0x106025e

    :goto_1
    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v1, :cond_2

    const v1, 0x106025b

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v1, :cond_3

    const v1, 0x1060290

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    const v1, 0x1060262

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_1
    const v1, 0x106025f

    goto :goto_1

    :cond_2
    const v1, 0x106025c

    goto :goto_2

    :cond_3
    const v1, 0x1060291

    goto :goto_3
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDualModeOverlapColor(II)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/content/res/ColorStateList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setFluidColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0

    if-gez p1, :cond_0

    neg-int p1, p1

    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v2

    sub-int v0, v1, v2

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    :cond_0
    int-to-float v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setMin(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMin(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v2

    sub-int v0, v1, v2

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    :cond_0
    int-to-float v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setMuteAnimation(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    :cond_0
    return-void
.end method

.method public setOverlapBackgroundForDualColor(I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressInternal(IZZ)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->setProgressInternal(IZZ)Z

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    return v0
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setSplitProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    iget v2, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    :cond_2
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mPressedThumbWidth:I

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    goto :goto_1
.end method

.method public setThumbOffset(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    return-void
.end method

.method public setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    return-void
.end method

.method public setTouchDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    return-void
.end method

.method protected updateDrawableBounds(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_0
.end method
