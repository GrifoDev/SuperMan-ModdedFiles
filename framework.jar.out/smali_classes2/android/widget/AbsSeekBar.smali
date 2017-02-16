.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSeekBar$Side;,
        Landroid/widget/AbsSeekBar$Status;
    }
.end annotation


# static fields
.field private static final IS_OVERLAY_THEMES_ENABLED:Z = true

.field private static final MUTE_VIB_DISTANCE_LVL:I = 0x190

.field private static final MUTE_VIB_DURATION:I = 0x1f4

.field private static final MUTE_VIB_TOTAL:I = 0x4

.field private static final NO_ALPHA:I = 0xff

.field private static final TAG:Ljava/lang/String; = "AbsSeekBar"


# instance fields
.field private DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

.field private DEFAULT_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

.field private OVERLAP_FIRST_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private OVERLAP_FIRST_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

.field private OVERLAP_FIRST_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private OVERLAP_SECOND_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private OVERLAP_SECOND_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

.field private OVERLAP_SECOND_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private animationCurrnetFrame:I

.field private animationTotalFrame:I

.field private circleTotal:I

.field private currentSide:Landroid/widget/AbsSeekBar$Side;

.field private currentSkipFrameWhenActionDown:I

.field private currentStatus:Landroid/widget/AbsSeekBar$Status;

.field private delayedFramesBeforeReduce:I

.field private mAllowedSeeBarAnimation:Z

.field private mCurrentProgressLevel:I

.field private mDisabledAlpha:F

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mFirstOverlapBackground:Landroid/graphics/drawable/Drawable;

.field private mFirstOverlapPoint:I

.field private mFirstOverlapPrimary:Landroid/graphics/drawable/Drawable;

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTickMarkTint:Z

.field private mHasTickMarkTintMode:Z

.field private mHoveringLevel:I

.field private mIsDragging:Z

.field private mIsDraggingForSliding:Z

.field private mIsFirstSetProgress:Z

.field private mIsFluidEnabled:Z

.field private mIsMuteNow:Z

.field private mIsOpenTheme:Z

.field private mIsScafeEnabled:Z

.field private mIsTouchDisabled:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mLargeFont:Z

.field private mMuteAnimationSet:Landroid/animation/AnimatorSet;

.field private mOverlapBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlapPoint:I

.field private mOverlapPrimary:Landroid/graphics/drawable/Drawable;

.field private mScaledTouchSlop:I

.field private mSecondOverlapBackground:Landroid/graphics/drawable/Drawable;

.field private mSecondOverlapPoint:I

.field private mSecondOverlapPrimary:Landroid/graphics/drawable/Drawable;

.field private mSplitProgress:Landroid/graphics/drawable/Drawable;

.field private mSplitTrack:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbPosX:I

.field private mThumbPosXfloat:F

.field private mThumbPosY:I

.field private mThumbPosYfloat:F

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTickMark:Landroid/graphics/drawable/Drawable;

.field private mTickMarkTintList:Landroid/content/res/ColorStateList;

.field private mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field mTouchProgressOffset:F

.field private mUseMuteAnimation:Z

.field private paint:Landroid/graphics/Paint;

.field private pressedThumbWidth:I

.field private previousProgress:I

.field private progressBarHeight:F

.field private progressBarWidth:F

.field private skipFrameWhenActionDown:I

.field private sliderPath:Landroid/widget/SeekBarFluidPath;

.field private tailWidthFromCircleCenter:F

.field private targetFrame:I


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
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 78
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 79
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 80
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 81
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 84
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 85
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 86
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 87
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    .line 101
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 107
    iput v4, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 125
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 129
    iput v3, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 139
    iput v3, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapPoint:I

    .line 142
    iput v3, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    .line 150
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    .line 151
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 153
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 154
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 160
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    .line 167
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    .line 168
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    .line 174
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 176
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 177
    sget-object v0, Landroid/widget/AbsSeekBar$Status;->STOP:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    .line 178
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    .line 179
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsScafeEnabled:Z

    .line 183
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 78
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 79
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 80
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 81
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 84
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 85
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 86
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 87
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    .line 101
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 107
    iput v4, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 125
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 129
    iput v3, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 139
    iput v3, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapPoint:I

    .line 142
    iput v3, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    .line 150
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    .line 151
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 153
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 154
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 160
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    .line 167
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    .line 168
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    .line 174
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 176
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 177
    sget-object v0, Landroid/widget/AbsSeekBar$Status;->STOP:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    .line 178
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    .line 179
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsScafeEnabled:Z

    .line 183
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 207
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 78
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 79
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 80
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 81
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 84
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 85
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 86
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 87
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    .line 101
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 107
    const/4 v6, 0x1

    iput v6, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 125
    const/4 v6, 0x0

    iput v6, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 129
    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 139
    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapPoint:I

    .line 142
    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    .line 150
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    .line 151
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 153
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 154
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 160
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    .line 167
    const/4 v6, 0x5

    iput v6, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    .line 168
    const/4 v6, 0x3

    iput v6, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    .line 174
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 176
    sget-object v6, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 177
    sget-object v6, Landroid/widget/AbsSeekBar$Status;->STOP:Landroid/widget/AbsSeekBar$Status;

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    .line 178
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    .line 179
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsScafeEnabled:Z

    .line 183
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    .line 210
    sget-object v6, Lcom/android/internal/R$styleable;->SeekBar:[I

    .line 209
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 213
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 215
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    const/4 v6, 0x4

    const/4 v7, -0x1

    .line 216
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 217
    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 216
    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 218
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 221
    :cond_0
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 222
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 223
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 226
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 227
    .local v4, "tickMark":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 229
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 231
    const/4 v6, 0x7

    const/4 v7, -0x1

    .line 230
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 231
    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 230
    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 232
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    .line 235
    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 236
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 237
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 240
    :cond_3
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 244
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v6

    const/4 v7, 0x1

    .line 243
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 245
    .local v3, "thumbOffset":I
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 247
    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 248
    .local v5, "useDisabledAlpha":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    if-eqz v5, :cond_6

    .line 251
    sget-object v6, Lcom/android/internal/R$styleable;->Theme:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 252
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 253
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 259
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 261
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 265
    const v7, 0x106011c

    .line 264
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->DEFAULT_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 267
    const v7, 0x106011d

    .line 266
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 269
    const v7, 0x1060125

    .line 268
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 271
    const v7, 0x106011f

    .line 270
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 273
    const v7, 0x1060120

    .line 272
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 274
    iget-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 277
    const v7, 0x1060121

    .line 276
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 279
    const v7, 0x1060122

    .line 278
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 280
    iget-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 282
    const v7, 0x1060123

    .line 281
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 284
    const v7, 0x1060124

    .line 283
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 285
    iget-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11200d9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    .line 288
    iget-boolean v6, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    if-eqz v6, :cond_4

    .line 289
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->initMuteAnimation()V

    .line 291
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 292
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->seekBarFluidInit()V

    .line 206
    :cond_5
    return-void

    .line 255
    :cond_6
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    goto/16 :goto_0
.end method

.method private applyThumbTint()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    .line 481
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 483
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 487
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 488
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 493
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 494
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 479
    :cond_3
    return-void
.end method

.method private applyTickMarkTint()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_3

    .line 635
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 637
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 641
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_2

    .line 642
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 647
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 648
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 633
    :cond_3
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 1440
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1439
    :cond_0
    return-void
.end method

.method private cancelMuteAnimation()V
    .locals 1

    .prologue
    .line 2156
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2157
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2155
    :cond_0
    return-void
.end method

.method private checkInvalidatedDualColorMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1919
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

.method private checkInvalidatedTripleColorMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 2010
    iget v1, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapPoint:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 2011
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeTail()V
    .locals 1

    .prologue
    .line 817
    sget-object v0, Landroid/widget/AbsSeekBar$Status;->TAIL_CLOSE:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    .line 816
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1934
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 1935
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private drawFrame(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x0

    .line 1117
    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-gez v2, :cond_2

    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    neg-int v1, v2

    .line 1118
    .local v1, "tempIndex":I
    :goto_0
    iget v2, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    iget v2, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    add-int/lit8 v1, v2, -0x1

    .line 1119
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBarFluidPath;->getPath(I)Landroid/graphics/Path;

    move-result-object v0

    .line 1121
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1122
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1123
    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-gez v2, :cond_3

    .line 1124
    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1136
    :cond_1
    :goto_1
    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1137
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1139
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/widget/AbsSeekBar;->invalidate(IIII)V

    .line 1116
    return-void

    .line 1117
    .end local v0    # "path":Landroid/graphics/Path;
    .end local v1    # "tempIndex":I
    :cond_2
    iget v1, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .restart local v1    # "tempIndex":I
    goto :goto_0

    .line 1126
    .restart local v0    # "path":Landroid/graphics/Path;
    :cond_3
    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 1128
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_5

    .line 1129
    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-lez v2, :cond_1

    .line 1130
    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 1132
    :cond_5
    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-gez v2, :cond_1

    .line 1133
    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1
.end method

.method private getScale()F
    .locals 3

    .prologue
    .line 907
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    .line 908
    .local v0, "max":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initMuteAnimation()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2130
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    .line 2132
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2134
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/16 v1, 0x3e

    .line 2135
    .local v1, "duration":I
    const/16 v0, 0x190

    .line 2136
    .local v0, "distance":I
    const/4 v2, 0x0

    .line 2133
    .local v2, "i":I
    :goto_0
    const/16 v8, 0x8

    .line 2136
    if-ge v2, v8, :cond_3

    .line 2137
    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_1

    move v3, v6

    .line 2138
    .local v3, "isGoingDirection":Z
    :goto_1
    if-eqz v3, :cond_2

    new-array v8, v12, [I

    aput v7, v8, v7

    aput v0, v8, v6

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 2139
    .local v5, "progressZeroAnimation":Landroid/animation/ValueAnimator;
    :goto_2
    int-to-long v8, v1

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2140
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2141
    new-instance v8, Landroid/widget/AbsSeekBar$1;

    invoke-direct {v8, p0}, Landroid/widget/AbsSeekBar$1;-><init>(Landroid/widget/AbsSeekBar;)V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2147
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2148
    if-eqz v3, :cond_0

    .line 2149
    int-to-double v8, v0

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    double-to-int v0, v8

    .line 2136
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "isGoingDirection":Z
    .end local v5    # "progressZeroAnimation":Landroid/animation/ValueAnimator;
    :cond_1
    move v3, v7

    .line 2137
    goto :goto_1

    .line 2138
    .restart local v3    # "isGoingDirection":Z
    :cond_2
    new-array v8, v12, [I

    aput v0, v8, v7

    aput v7, v8, v6

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    goto :goto_2

    .line 2152
    .end local v3    # "isGoingDirection":Z
    :cond_3
    iget-object v6, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 2129
    return-void
.end method

.method private openTail(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 785
    iget v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    if-ne v0, p1, :cond_0

    .line 786
    return-void

    .line 788
    :cond_0
    iget v0, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    if-gtz v0, :cond_6

    .line 789
    iget v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    if-ge v0, p1, :cond_5

    .line 790
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->tailWidthFromCircleCenter:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 792
    return-void

    .line 794
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v0, :cond_2

    .line 795
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->tailWidthFromCircleCenter:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 796
    return-void

    .line 799
    :cond_2
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->tailWidthFromCircleCenter:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 800
    return-void

    .line 803
    :cond_3
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->RIGHT:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 804
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    .line 809
    :cond_4
    :goto_0
    sget-object v0, Landroid/widget/AbsSeekBar$Status;->TAIL_OPEN:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    .line 813
    :goto_1
    iput p1, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    .line 784
    return-void

    .line 805
    :cond_5
    iget v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    if-le v0, p1, :cond_4

    .line 806
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->LEFT:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 807
    iget v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    neg-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    goto :goto_0

    .line 811
    :cond_6
    iget v0, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    goto :goto_1
.end method

.method private seekBarFluidInit()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    .line 301
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 303
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    .line 305
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->pressedThumbWidth:I

    .line 308
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    if-nez v0, :cond_2

    .line 309
    new-instance v0, Landroid/widget/SeekBarFluidPath;

    iget v1, p0, Landroid/widget/AbsSeekBar;->pressedThumbWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Landroid/widget/SeekBarFluidPath;-><init>(F)V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    .line 310
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v0}, Landroid/widget/SeekBarFluidPath;->getPathTotal()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    .line 311
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v0}, Landroid/widget/SeekBarFluidPath;->getCircleTotal()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    .line 312
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    .line 313
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v0}, Landroid/widget/SeekBarFluidPath;->getTailWidthFromCircleCenter()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->tailWidthFromCircleCenter:F

    .line 296
    return-void
.end method

.method private setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1358
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1359
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1357
    :cond_0
    return-void
.end method

.method private setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 2292
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2291
    return-void
.end method

.method private setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 2270
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 2271
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 2273
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 2275
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2276
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 2277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    .line 2269
    :cond_0
    :goto_0
    return-void

    .line 2279
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    goto :goto_0
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 21
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .prologue
    .line 921
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 922
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 923
    return-void

    .line 926
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, p1, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 927
    .local v5, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 928
    .local v15, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 929
    .local v13, "thumbHeight":I
    sub-int/2addr v5, v15

    .line 932
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v5, v5, v17

    .line 934
    int-to-float v0, v5

    move/from16 v17, v0

    mul-float v17, v17, p3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 937
    .local v14, "thumbPos":I
    const/high16 v17, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 938
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 939
    .local v11, "oldBounds":Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 940
    .local v16, "top":I
    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    .line 946
    .end local v11    # "oldBounds":Landroid/graphics/Rect;
    .local v7, "bottom":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    sub-int v8, v5, v14

    .line 947
    .local v8, "left":I
    :goto_1
    add-int v12, v8, v15

    .line 949
    .local v12, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 950
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 951
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .line 952
    .local v9, "offsetX":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    .line 953
    .local v10, "offsetY":I
    add-int v17, v8, v9

    add-int v18, v16, v10

    .line 954
    add-int v19, v12, v9

    add-int v20, v7, v10

    .line 953
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 958
    .end local v9    # "offsetX":I
    .end local v10    # "offsetY":I
    :cond_1
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v12, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 961
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    add-int v17, v17, v8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    .line 962
    div-int/lit8 v17, v13, 0x2

    add-int v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    .line 964
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

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    .line 965
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

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    .line 967
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    .line 920
    return-void

    .line 942
    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    .end local v7    # "bottom":I
    .end local v8    # "left":I
    .end local v12    # "right":I
    .end local v16    # "top":I
    :cond_2
    move/from16 v16, p4

    .line 943
    .restart local v16    # "top":I
    add-int v7, p4, v13

    .restart local v7    # "bottom":I
    goto/16 :goto_0

    :cond_3
    move v8, v14

    .line 946
    goto/16 :goto_1
.end method

.method private setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 21
    .param p1, "h"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .prologue
    .line 971
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v17, v0

    sub-int v17, p1, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 972
    .local v4, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 973
    .local v15, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 974
    .local v13, "thumbHeight":I
    sub-int/2addr v4, v13

    .line 977
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v4, v4, v17

    .line 979
    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v17, v17, p3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 982
    .local v14, "thumbPos":I
    const/high16 v17, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 983
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 984
    .local v11, "oldBounds":Landroid/graphics/Rect;
    iget v8, v11, Landroid/graphics/Rect;->left:I

    .line 985
    .local v8, "left":I
    iget v12, v11, Landroid/graphics/Rect;->right:I

    .line 991
    .end local v11    # "oldBounds":Landroid/graphics/Rect;
    .local v12, "right":I
    :goto_0
    sub-int v16, v4, v14

    .line 992
    .local v16, "top":I
    add-int v6, v16, v13

    .line 994
    .local v6, "bottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 995
    .local v5, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 996
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 997
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    .line 998
    .local v9, "offsetX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    sub-int v10, v17, v18

    .line 1000
    .local v10, "offsetY":I
    add-int v17, v8, v9

    add-int v18, v16, v10

    .line 1001
    add-int v19, v12, v9

    add-int v20, v6, v10

    .line 1000
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1005
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "offsetX":I
    .end local v10    # "offsetY":I
    :cond_0
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v12, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1008
    div-int/lit8 v17, v15, 0x2

    add-int v17, v17, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    .line 1009
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v17, v0

    add-int v17, v17, v16

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    .line 1011
    int-to-float v0, v8

    move/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    .line 1012
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    .line 970
    return-void

    .line 987
    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bottom":I
    .end local v8    # "left":I
    .end local v12    # "right":I
    .end local v16    # "top":I
    :cond_1
    move/from16 v8, p4

    .line 988
    .restart local v8    # "left":I
    add-int v12, p4, v15

    .restart local v12    # "right":I
    goto/16 :goto_0
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1345
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 1347
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 1352
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 1353
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1354
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    .line 1344
    return-void
.end method

.method private startMuteAnimation()V
    .locals 1

    .prologue
    .line 2162
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    .line 2164
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2161
    :cond_0
    return-void
.end method

.method private trackHoverEvent(II)V
    .locals 7
    .param p1, "posX"    # I
    .param p2, "posY"    # I

    .prologue
    .line 1635
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 1636
    .local v4, "width":I
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, v4, v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1638
    .local v0, "available":I
    const/4 v1, 0x0

    .line 1640
    .local v1, "hoverLevel":F
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge p1, v5, :cond_0

    .line 1641
    const/4 v3, 0x0

    .line 1649
    .local v3, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 1650
    .local v2, "max":I
    int-to-float v5, v2

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    .line 1651
    float-to-int v5, v1

    iput v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 1634
    return-void

    .line 1642
    .end local v2    # "max":I
    .end local v3    # "scale":F
    :cond_0
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le p1, v5, :cond_1

    .line 1643
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 1645
    .end local v3    # "scale":F
    :cond_1
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v3, v5, v6

    .line 1646
    .restart local v3    # "scale":F
    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1365
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1366
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEventInVertical(Landroid/view/MotionEvent;)V

    .line 1367
    return-void

    .line 1370
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1371
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 1372
    .local v9, "y":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v7

    .line 1373
    .local v7, "width":I
    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v10, v7, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v10, v11

    .line 1376
    .local v0, "availableWidth":I
    const/4 v3, 0x0

    .line 1377
    .local v3, "progress":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v10, :cond_4

    .line 1378
    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v10, v7, v10

    if-le v8, v10, :cond_2

    .line 1379
    const/4 v5, 0x0

    .line 1396
    .local v5, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 1397
    .local v2, "max":I
    int-to-float v10, v2

    div-float v1, v12, v10

    .line 1399
    .local v1, "basicWidth":F
    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-lez v10, :cond_1

    cmpg-float v10, v5, v12

    if-gez v10, :cond_1

    .line 1400
    const/4 v6, 0x0

    .line 1401
    .local v6, "tempProgress":F
    rem-float v4, v5, v1

    .line 1402
    .local v4, "remainder":F
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v1, v10

    cmpl-float v10, v4, v10

    if-lez v10, :cond_1

    .line 1403
    sub-float v10, v1, v4

    add-float/2addr v5, v10

    .line 1407
    .end local v4    # "remainder":F
    .end local v6    # "tempProgress":F
    :cond_1
    int-to-float v10, v2

    mul-float/2addr v10, v5

    add-float/2addr v3, v10

    .line 1409
    int-to-float v10, v8

    int-to-float v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    .line 1410
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    .line 1364
    return-void

    .line 1380
    .end local v1    # "basicWidth":F
    .end local v2    # "max":I
    .end local v5    # "scale":F
    :cond_2
    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v8, v10, :cond_3

    .line 1381
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_0

    .line 1383
    .end local v5    # "scale":F
    :cond_3
    sub-int v10, v0, v8

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    int-to-float v11, v0

    div-float v5, v10, v11

    .line 1384
    .restart local v5    # "scale":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 1387
    .end local v5    # "scale":F
    :cond_4
    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v8, v10, :cond_5

    .line 1388
    const/4 v5, 0x0

    .restart local v5    # "scale":F
    goto :goto_0

    .line 1389
    .end local v5    # "scale":F
    :cond_5
    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v10, v7, v10

    if-le v8, v10, :cond_6

    .line 1390
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_0

    .line 1392
    .end local v5    # "scale":F
    :cond_6
    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v10, v8, v10

    int-to-float v10, v10

    int-to-float v11, v0

    div-float v5, v10, v11

    .line 1393
    .restart local v5    # "scale":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private trackTouchEventInVertical(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1414
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v1

    .line 1415
    .local v1, "height":I
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v7, v1, v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v0, v7, v8

    .line 1416
    .local v0, "availableHeight":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1417
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v6, v1, v7

    .line 1419
    .local v6, "y":I
    const/4 v3, 0x0

    .line 1420
    .local v3, "progress":F
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    if-ge v6, v7, :cond_0

    .line 1421
    const/4 v4, 0x0

    .line 1428
    .local v4, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 1429
    .local v2, "max":I
    int-to-float v7, v2

    mul-float/2addr v7, v4

    add-float/2addr v3, v7

    .line 1431
    int-to-float v7, v5

    int-to-float v8, v6

    invoke-direct {p0, v7, v8}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    .line 1432
    float-to-int v7, v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    .line 1413
    return-void

    .line 1422
    .end local v2    # "max":I
    .end local v4    # "scale":F
    :cond_0
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v7, v1, v7

    if-le v6, v7, :cond_1

    .line 1423
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "scale":F
    goto :goto_0

    .line 1425
    .end local v4    # "scale":F
    :cond_1
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v7, v6, v7

    int-to-float v7, v7

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 1426
    .restart local v4    # "scale":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateBoundsForDualColor()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 1863
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1864
    :cond_0
    return-void

    .line 1867
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1868
    .local v0, "base":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v5

    .line 1869
    .local v5, "maxProgress":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v2

    .line 1870
    .local v2, "curProgress":I
    invoke-virtual {p0, v10}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1871
    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    sub-int v8, v9, v10

    .line 1872
    .local v8, "width":I
    const/4 v4, 0x0

    .line 1873
    .local v4, "left":I
    iget v9, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-eqz v9, :cond_3

    .line 1874
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

    .line 1877
    :goto_0
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v4, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1879
    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    int-to-float v10, v8

    int-to-float v11, v2

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v6, v9

    .line 1880
    .local v6, "right":I
    iget v9, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1881
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v4, v10, v6, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1862
    .end local v4    # "left":I
    .end local v6    # "right":I
    .end local v8    # "width":I
    :cond_2
    :goto_1
    return-void

    .line 1876
    .restart local v4    # "left":I
    .restart local v8    # "width":I
    :cond_3
    iget v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1882
    .end local v4    # "left":I
    .end local v8    # "width":I
    :cond_4
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1883
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v9, v10

    .line 1884
    .local v3, "height":I
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

    .line 1885
    .local v1, "bottom":I
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->top:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v11, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1887
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

    .line 1888
    .local v7, "top":I
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v7, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private updateBoundsForTripleColor()V
    .locals 21

    .prologue
    .line 2015
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedTripleColorMode()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2016
    :cond_0
    return-void

    .line 2019
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 2020
    .local v4, "base":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v11

    .line 2021
    .local v11, "maxProgress":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v5

    .line 2022
    .local v5, "curProgress":I
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2023
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v16, v17, v18

    .line 2024
    .local v16, "width":I
    const/4 v7, 0x0

    .line 2025
    .local v7, "firstLeft":I
    const/4 v8, 0x0

    .line 2026
    .local v8, "firstRight":I
    const/4 v13, 0x0

    .line 2027
    .local v13, "secondLeft":I
    const/4 v14, 0x0

    .line 2028
    .local v14, "secondRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mFirstOverlapPoint:I

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 2029
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mFirstOverlapPoint:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v7, v0

    .line 2033
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mFirstOverlapPoint:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 2034
    :cond_2
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    .line 2038
    :goto_1
    move v8, v13

    .line 2039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsSeekBar;->mFirstOverlapBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v7, v1, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2040
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsSeekBar;->mSecondOverlapBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2042
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v5

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 2043
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2044
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 2045
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsSeekBar;->mFirstOverlapPrimary:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v7, v1, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsSeekBar;->mSecondOverlapPrimary:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v13, v1, v14, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2014
    .end local v7    # "firstLeft":I
    .end local v8    # "firstRight":I
    .end local v13    # "secondLeft":I
    .end local v14    # "secondRight":I
    .end local v16    # "width":I
    :cond_3
    :goto_2
    return-void

    .line 2031
    .restart local v7    # "firstLeft":I
    .restart local v8    # "firstRight":I
    .restart local v13    # "secondLeft":I
    .restart local v14    # "secondRight":I
    .restart local v16    # "width":I
    :cond_4
    iget v7, v4, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 2036
    :cond_5
    move v13, v7

    goto/16 :goto_1

    .line 2047
    .end local v7    # "firstLeft":I
    .end local v8    # "firstRight":I
    .end local v13    # "secondLeft":I
    .end local v14    # "secondRight":I
    .end local v16    # "width":I
    :cond_6
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2048
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v10, v17, v18

    .line 2049
    .local v10, "height":I
    const/4 v6, 0x0

    .line 2050
    .local v6, "firstBottom":I
    const/4 v9, 0x0

    .line 2051
    .local v9, "firstTop":I
    const/4 v12, 0x0

    .line 2052
    .local v12, "secondBottom":I
    const/4 v15, 0x0

    .line 2053
    .local v15, "secondTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mFirstOverlapPoint:I

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 2054
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mFirstOverlapPoint:I

    move/from16 v19, v0

    sub-int v19, v11, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v6, v0

    .line 2058
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mFirstOverlapPoint:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 2059
    :cond_7
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    move/from16 v19, v0

    sub-int v19, v11, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v12, v0

    .line 2063
    :goto_4
    move v9, v12

    .line 2064
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsSeekBar;->mFirstOverlapBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v9, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsSeekBar;->mSecondOverlapBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2067
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    sub-int v19, v11, v5

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    .line 2068
    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2069
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 2070
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsSeekBar;->mFirstOverlapPrimary:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v9, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2071
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsSeekBar;->mSecondOverlapPrimary:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v15, v2, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_2

    .line 2056
    :cond_8
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 2061
    :cond_9
    move v12, v6

    goto/16 :goto_4
.end method

.method private updateDualColorMode()V
    .locals 2

    .prologue
    .line 1842
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1843
    return-void

    .line 1846
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1847
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1849
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    if-nez v0, :cond_1

    .line 1850
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-le v0, v1, :cond_2

    .line 1851
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1852
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1859
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    .line 1841
    return-void

    .line 1854
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1855
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private updateSplitProgress()V
    .locals 12

    .prologue
    const/high16 v11, 0x41b00000    # 22.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 1019
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 1021
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1022
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1023
    .local v0, "base":Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    .line 1034
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_3

    .line 1035
    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1042
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    .line 1043
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v2

    .line 1045
    .local v2, "h":I
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 1046
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1047
    int-to-float v5, v3

    div-float/2addr v5, v10

    iget v6, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v6, v9

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 1048
    int-to-float v6, v2

    div-float/2addr v6, v10

    iget v7, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v7, v11

    div-float/2addr v7, v10

    sub-float/2addr v6, v7

    float-to-int v6, v6

    .line 1049
    int-to-float v7, v3

    div-float/2addr v7, v10

    iget v8, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v8, v9

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 1050
    int-to-float v8, v2

    div-float/2addr v8, v10

    iget v9, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v9, v11

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 1046
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1018
    :cond_2
    return-void

    .line 1038
    .end local v2    # "h":I
    .end local v3    # "w":I
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
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v10, 0x0

    .line 829
    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 830
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPosInVertical(II)V

    .line 831
    return-void

    .line 834
    :cond_0
    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v11, p2, v11

    iget v12, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v2, v11, v12

    .line 835
    .local v2, "paddedHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 836
    .local v6, "track":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 840
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    iget v11, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 841
    .local v7, "trackHeight":I
    if-nez v3, :cond_4

    move v4, v10

    .line 847
    .local v4, "thumbHeight":I
    :goto_0
    const/4 v0, 0x0

    .line 849
    .local v0, "fluidOffset":I
    if-le v4, v7, :cond_5

    .line 850
    sub-int v11, v2, v4

    div-int/lit8 v1, v11, 0x2

    .line 851
    .local v1, "offsetHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    sub-int v11, v4, v7

    rem-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_1

    .line 852
    const/4 v0, 0x1

    .line 853
    :cond_1
    sub-int v11, v4, v7

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v1

    add-int v8, v11, v0

    .line 854
    .local v8, "trackOffset":I
    add-int/lit8 v5, v1, 0x0

    .line 861
    .local v5, "thumbOffset":I
    :goto_1
    if-eqz v6, :cond_2

    .line 862
    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v11, p1, v11

    iget v12, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v9, v11, v12

    .line 863
    .local v9, "trackWidth":I
    add-int v11, v8, v7

    invoke-virtual {v6, v10, v8, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 866
    .end local v9    # "trackWidth":I
    :cond_2
    if-eqz v3, :cond_3

    .line 867
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v10

    invoke-direct {p0, p1, v3, v10, v5}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 870
    :cond_3
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    .line 828
    return-void

    .line 841
    .end local v0    # "fluidOffset":I
    .end local v1    # "offsetHeight":I
    .end local v4    # "thumbHeight":I
    .end local v5    # "thumbOffset":I
    .end local v8    # "trackOffset":I
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_0

    .line 856
    .restart local v0    # "fluidOffset":I
    .restart local v4    # "thumbHeight":I
    :cond_5
    sub-int v11, v2, v7

    div-int/lit8 v1, v11, 0x2

    .line 857
    .restart local v1    # "offsetHeight":I
    add-int/lit8 v8, v1, 0x0

    .line 858
    .restart local v8    # "trackOffset":I
    sub-int v11, v7, v4

    div-int/lit8 v11, v11, 0x2

    add-int v5, v1, v11

    .restart local v5    # "thumbOffset":I
    goto :goto_1
.end method

.method private updateThumbAndTrackPosInVertical(II)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v9, 0x0

    .line 874
    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v10, p1, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v1, v10, v11

    .line 875
    .local v1, "paddedWidth":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 876
    .local v5, "track":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 880
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    iget v10, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 881
    .local v8, "trackWidth":I
    if-nez v2, :cond_2

    move v4, v9

    .line 886
    .local v4, "thumbWidth":I
    :goto_0
    if-le v4, v8, :cond_3

    .line 887
    sub-int v10, v1, v4

    div-int/lit8 v0, v10, 0x2

    .line 888
    .local v0, "offsetWidth":I
    sub-int v10, v4, v8

    div-int/lit8 v10, v10, 0x2

    add-int v7, v0, v10

    .line 889
    .local v7, "trackOffset":I
    add-int/lit8 v3, v0, 0x0

    .line 896
    .local v3, "thumbOffset":I
    :goto_1
    if-eqz v5, :cond_0

    .line 897
    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v6, v10, v11

    .line 898
    .local v6, "trackHeight":I
    sub-int v10, v1, v7

    invoke-virtual {v5, v7, v9, v10, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 901
    .end local v6    # "trackHeight":I
    :cond_0
    if-eqz v2, :cond_1

    .line 902
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v9

    invoke-direct {p0, p2, v2, v9, v3}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 873
    :cond_1
    return-void

    .line 881
    .end local v0    # "offsetWidth":I
    .end local v3    # "thumbOffset":I
    .end local v4    # "thumbWidth":I
    .end local v7    # "trackOffset":I
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    goto :goto_0

    .line 891
    .restart local v4    # "thumbWidth":I
    :cond_3
    sub-int v10, v1, v8

    div-int/lit8 v0, v10, 0x2

    .line 892
    .restart local v0    # "offsetWidth":I
    add-int/lit8 v7, v0, 0x0

    .line 893
    .restart local v7    # "trackOffset":I
    sub-int v10, v8, v4

    div-int/lit8 v10, v10, 0x2

    add-int v3, v0, v10

    .restart local v3    # "thumbOffset":I
    goto :goto_1
.end method

.method private updateTripleColorMode()V
    .locals 2

    .prologue
    .line 1977
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedTripleColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1978
    return-void

    .line 1981
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1982
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1983
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1984
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1986
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    if-nez v0, :cond_1

    .line 1987
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapPoint:I

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    if-gt v0, v1, :cond_2

    .line 1988
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1989
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1990
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1991
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 2003
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForTripleColor()V

    .line 1976
    return-void

    .line 1992
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    if-le v0, v1, :cond_3

    .line 1993
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1994
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1995
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1996
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1998
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1999
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private updateWarningMode(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    const/4 v0, 0x1

    .line 2116
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2117
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 2119
    .local v0, "isMax":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 2120
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 2121
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 2115
    .end local v0    # "isMax":Z
    :cond_0
    :goto_1
    return-void

    .line 2117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2123
    .restart local v0    # "isMax":Z
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2124
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method


# virtual methods
.method canUserSetProgress()Z
    .locals 1

    .prologue
    .line 1595
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
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1234
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1238
    .local v0, "saveCount":I
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1239
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1243
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1244
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1233
    .end local v0    # "saveCount":I
    :cond_0
    return-void

    .line 1241
    .restart local v0    # "saveCount":I
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

.method drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1209
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    .line 1210
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    .line 1211
    .local v0, "count":I
    const/4 v8, 0x1

    if-le v0, v8, :cond_3

    .line 1212
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 1213
    .local v7, "w":I
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 1214
    .local v1, "h":I
    if-ltz v7, :cond_0

    div-int/lit8 v3, v7, 0x2

    .line 1215
    .local v3, "halfW":I
    :goto_0
    if-ltz v1, :cond_1

    div-int/lit8 v2, v1, 0x2

    .line 1216
    .local v2, "halfH":I
    :goto_1
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    neg-int v9, v3

    neg-int v10, v2

    invoke-virtual {v8, v9, v10, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1218
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v6, v8, v9

    .line 1219
    .local v6, "spacing":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1220
    .local v5, "saveCount":I
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1221
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-gt v4, v0, :cond_2

    .line 1222
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1223
    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1221
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1214
    .end local v2    # "halfH":I
    .end local v3    # "halfW":I
    .end local v4    # "i":I
    .end local v5    # "saveCount":I
    .end local v6    # "spacing":F
    :cond_0
    const/4 v3, 0x1

    .restart local v3    # "halfW":I
    goto :goto_0

    .line 1215
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "halfH":I
    goto :goto_1

    .line 1225
    .restart local v4    # "i":I
    .restart local v5    # "saveCount":I
    .restart local v6    # "spacing":F
    :cond_2
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1208
    .end local v0    # "count":I
    .end local v1    # "h":I
    .end local v2    # "halfH":I
    .end local v3    # "halfW":I
    .end local v4    # "i":I
    .end local v5    # "saveCount":I
    .end local v6    # "spacing":F
    .end local v7    # "w":I
    :cond_3
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    .line 1144
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1145
    .local v3, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_5

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    if-eqz v4, :cond_5

    .line 1146
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 1147
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 1148
    .local v2, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1149
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1150
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 1151
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 1153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1154
    .local v1, "saveCount":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1155
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 1156
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 1157
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1162
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "saveCount":I
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1164
    invoke-virtual {p0, v8}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1165
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1174
    :goto_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1175
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-le v4, v5, :cond_0

    .line 1176
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1178
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1180
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedTripleColorMode()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1182
    invoke-virtual {p0, v8}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1183
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1192
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1193
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1194
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapPoint:I

    if-le v4, v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    if-gt v4, v5, :cond_2

    .line 1195
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1197
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    if-le v4, v5, :cond_3

    .line 1198
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1199
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1201
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1143
    :cond_4
    return-void

    .line 1159
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 1160
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1167
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_7

    .line 1168
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1169
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_1

    .line 1171
    :cond_7
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1

    .line 1185
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_9

    .line 1186
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1187
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_2

    .line 1189
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_2
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 729
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    .line 731
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 728
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 707
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 709
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 710
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 711
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xff

    :goto_0
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 714
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 715
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 716
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    .line 715
    if-eqz v3, :cond_1

    .line 717
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 720
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 721
    .local v2, "tickMark":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 722
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    .line 721
    if-eqz v3, :cond_2

    .line 723
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 706
    :cond_2
    return-void

    .line 711
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    .end local v2    # "tickMark":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1526
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTickMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 694
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 696
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 700
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 693
    :cond_1
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    monitor-enter p0

    .line 1068
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 1069
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1071
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1074
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    if-nez v0, :cond_1

    .line 1075
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    .line 1077
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 1079
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    sget-object v1, Landroid/widget/AbsSeekBar$Status;->TAIL_CLOSE:Landroid/widget/AbsSeekBar$Status;

    if-ne v0, v1, :cond_5

    .line 1081
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->RIGHT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_4

    .line 1082
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 1083
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V

    .line 1088
    :cond_2
    :goto_0
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-nez v0, :cond_3

    .line 1089
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    .line 1067
    return-void

    .line 1084
    :cond_4
    :try_start_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->LEFT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_2

    .line 1085
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 1086
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1092
    :cond_5
    :try_start_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    sget-object v1, Landroid/widget/AbsSeekBar$Status;->TAIL_OPEN:Landroid/widget/AbsSeekBar$Status;

    if-ne v0, v1, :cond_3

    .line 1094
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->RIGHT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_8

    .line 1095
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 1096
    :cond_6
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 1097
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    if-lt v0, v1, :cond_7

    .line 1098
    iget v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 1099
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->closeTail()V

    .line 1111
    :cond_7
    :goto_2
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1101
    :cond_8
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->LEFT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_a

    .line 1102
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    neg-int v1, v1

    if-le v0, v1, :cond_9

    iget v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    neg-int v0, v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 1103
    :cond_9
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 1104
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    if-gt v0, v1, :cond_7

    .line 1105
    iget v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 1106
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->closeTail()V

    goto :goto_2

    .line 1109
    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->closeTail()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method onHoverChanged(III)V
    .locals 0
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 1631
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1678
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v7, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 1682
    .local v1, "isPossibleTooltype":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 1683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1684
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 1685
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 1686
    .local v3, "y":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_4

    .line 1688
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    .line 1689
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    .line 1705
    .end local v0    # "action":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 1679
    .end local v1    # "isPossibleTooltype":Z
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v8, :cond_3

    const/4 v1, 0x1

    .restart local v1    # "isPossibleTooltype":Z
    goto :goto_0

    .end local v1    # "isPossibleTooltype":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isPossibleTooltype":Z
    goto :goto_0

    .line 1690
    .restart local v0    # "action":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_4
    const/4 v4, 0x7

    if-ne v0, v4, :cond_5

    .line 1691
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    .line 1692
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    .line 1694
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoverPopupType:I

    if-ne v4, v8, :cond_1

    .line 1698
    invoke-virtual {p0, v7}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V

    goto :goto_1

    .line 1700
    :cond_5
    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    .line 1701
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1532
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1534
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1535
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 1536
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 1537
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1539
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1540
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1531
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 1463
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 1468
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1469
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 1470
    .local v0, "increment":I
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1471
    sparse-switch p1, :sswitch_data_0

    .line 1509
    .end local v0    # "increment":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1474
    .restart local v0    # "increment":I
    :sswitch_0
    neg-int v0, v0

    .line 1479
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    neg-int v0, v0

    .line 1482
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v2, v2}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1483
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 1484
    return v2

    .line 1489
    :cond_2
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 1492
    :sswitch_2
    neg-int v0, v0

    .line 1497
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    neg-int v0, v0

    .line 1500
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v2, v2}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1501
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 1502
    return v2

    .line 1471
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x45 -> :sswitch_0
        0x46 -> :sswitch_1
        0x51 -> :sswitch_1
    .end sparse-switch

    .line 1489
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
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    monitor-enter p0

    .line 1250
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1252
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 1253
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 1254
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 1255
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1256
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    const/4 v4, 0x0

    .line 1257
    .local v4, "thumbWidth":I
    :goto_0
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1258
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1259
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1267
    .end local v4    # "thumbWidth":I
    :cond_0
    :goto_1
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1268
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 1270
    const/4 v5, 0x0

    invoke-static {v2, p1, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    .line 1271
    const/4 v6, 0x0

    invoke-static {v1, p2, v6}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v6

    .line 1270
    invoke-virtual {p0, v5, v6}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1249
    return-void

    .line 1256
    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .restart local v4    # "thumbWidth":I
    goto :goto_0

    .line 1261
    .end local v4    # "thumbWidth":I
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_3

    const/4 v3, 0x0

    .line 1262
    .local v3, "thumbHeight":I
    :goto_2
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1263
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1264
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 1261
    .end local v3    # "thumbHeight":I
    :cond_3
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .restart local v3    # "thumbHeight":I
    goto :goto_2

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "thumbHeight":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method onProgressRefresh(FZI)V
    .locals 5
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .prologue
    const/4 v4, 0x0

    .line 755
    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v3, p1

    float-to-int v1, v3

    .line 757
    .local v1, "targetLevel":I
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    if-eqz v3, :cond_2

    :cond_0
    move v0, v4

    .line 759
    .local v0, "isMuteAnimationNeeded":Z
    :goto_0
    if-eqz v0, :cond_4

    iget v3, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    .line 760
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->startMuteAnimation()V

    .line 754
    :cond_1
    :goto_1
    return-void

    .line 757
    .end local v0    # "isMuteAnimationNeeded":Z
    :cond_2
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    .line 762
    .restart local v0    # "isMuteAnimationNeeded":Z
    :cond_4
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    .line 764
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 765
    iput v1, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    .line 767
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V

    .line 769
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 770
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    .line 771
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-direct {p0, v3, v2, p1, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 776
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 779
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 780
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/AbsSeekBar;->openTail(I)V

    goto :goto_1
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1059
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 1061
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1058
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1600
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    .line 1602
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1603
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1604
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1609
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1599
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 822
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 821
    return-void
.end method

.method protected onSlidingRefresh(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 2183
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onSlidingRefresh(I)V

    .line 2185
    int-to-float v2, p1

    const v3, 0x461c4000    # 10000.0f

    div-float v0, v2, v3

    .line 2186
    .local v0, "scale":F
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 2187
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 2188
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v2, v1, v0, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 2193
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 2182
    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 0
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 1617
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 1449
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 1448
    return-void
.end method

.method onStopTrackingHover()V
    .locals 0

    .prologue
    .line 1624
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 1457
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 1456
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1276
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    if-eqz v2, :cond_1

    .line 1277
    :cond_0
    return v5

    .line 1280
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 1281
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_4

    iget v2, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    :goto_0
    iput v2, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    .line 1282
    iput v5, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 1283
    sget-object v2, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 1286
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1341
    :cond_3
    :goto_1
    return v3

    :cond_4
    move v2, v3

    .line 1281
    goto :goto_0

    .line 1288
    :pswitch_0
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1289
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    .line 1291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    goto :goto_1

    .line 1293
    :cond_5
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1298
    :pswitch_1
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1299
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_6

    .line 1300
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1302
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1303
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1304
    .local v1, "y":F
    invoke-virtual {p0, v6}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7

    .line 1306
    :goto_2
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1305
    :cond_7
    invoke-virtual {p0, v6}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    goto :goto_2

    .line 1312
    .end local v0    # "x":F
    .end local v1    # "y":F
    :pswitch_2
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v2, :cond_8

    .line 1313
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1315
    :cond_8
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_9

    .line 1316
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1317
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 1318
    invoke-virtual {p0, v5}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 1329
    :goto_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_1

    .line 1322
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 1323
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1324
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_3

    .line 1333
    :pswitch_3
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1334
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_a

    .line 1335
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 1336
    invoke-virtual {p0, v5}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 1338
    :cond_a
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 1286
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
    .param p1, "id"    # I
    .param p2, "scale"    # F

    .prologue
    .line 738
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisualProgressChanged(IF)V

    .line 740
    const v1, 0x102000d

    if-ne p1, v1, :cond_0

    .line 741
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 742
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p2, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 748
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 737
    .end local v0    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1548
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1549
    return v4

    .line 1552
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1553
    return v5

    .line 1556
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1588
    return v5

    .line 1558
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1559
    return v5

    .line 1561
    :cond_2
    if-eqz p2, :cond_3

    .line 1562
    const-string/jumbo v2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 1561
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1566
    const-string/jumbo v2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 1565
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 1567
    .local v1, "value":F
    float-to-int v2, v1

    invoke-virtual {p0, v2, v4, v4}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v2

    return v2

    .line 1563
    .end local v1    # "value":F
    :cond_3
    return v5

    .line 1571
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1572
    return v5

    .line 1574
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1576
    .local v0, "increment":I
    const/16 v2, 0x2000

    if-ne p1, v2, :cond_5

    .line 1577
    neg-int v0, v0

    .line 1581
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v4, v4}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1582
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 1583
    return v4

    .line 1585
    :cond_6
    return v5

    .line 1556
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_1
        0x102003d -> :sswitch_0
    .end sparse-switch
.end method

.method public semGetThumbBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1723
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 1726
    :cond_0
    return-object v1
.end method

.method public semIsFluidEnabled()Z
    .locals 1

    .prologue
    .line 2258
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    return v0
.end method

.method public semSetFluidEnabled(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2228
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "current_sec_active_themepackage"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2229
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2230
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    .line 2236
    :goto_0
    const/4 v2, 0x0

    .line 2237
    .local v2, "version":I
    const-string/jumbo v5, "ro.build.scafe.version"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2238
    .local v1, "scafe":Ljava/lang/String;
    const-string/jumbo v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_0

    .line 2239
    const-string/jumbo v5, "ro.build.scafe.version"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2240
    :cond_0
    const/16 v5, 0x7e0

    if-lt v2, v5, :cond_4

    :goto_1
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsScafeEnabled:Z

    .line 2241
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsScafeEnabled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    if-eqz v3, :cond_5

    .line 2244
    :cond_1
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    .line 2246
    :goto_2
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    if-eqz v3, :cond_2

    .line 2247
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->seekBarFluidInit()V

    .line 2225
    :cond_2
    return-void

    .line 2232
    .end local v1    # "scafe":Ljava/lang/String;
    .end local v2    # "version":I
    :cond_3
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    goto :goto_0

    .restart local v1    # "scafe":Ljava/lang/String;
    .restart local v2    # "version":I
    :cond_4
    move v3, v4

    .line 2240
    goto :goto_1

    .line 2242
    :cond_5
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    goto :goto_2
.end method

.method public semSetHoverPopupType(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x1

    .line 1659
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1663
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 1664
    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    .line 1665
    const/16 v2, 0x3231

    .line 1664
    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    .line 1666
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMeasuredHeight()I

    move-result v0

    .line 1667
    .local v0, "contentHeight":I
    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    .line 1668
    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoverDetectTime(I)V

    .line 1670
    .end local v0    # "contentHeight":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->semSetHoverPopupType(I)V

    .line 1658
    return-void

    .line 1660
    :cond_1
    return-void
.end method

.method public semSetMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1752
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->semSetMode(I)V

    .line 1753
    packed-switch p1, :pswitch_data_0

    .line 1771
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1751
    return-void

    .line 1755
    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1756
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1759
    :pswitch_2
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x1080a92

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1760
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1763
    .end local v0    # "thumb":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x1080aaa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1764
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x1080aab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1765
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    goto :goto_0

    .line 1768
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    goto :goto_0

    .line 1753
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
    .locals 3
    .param p1, "value"    # I

    .prologue
    const v2, 0x1080a98

    const v1, 0x1080a96

    .line 1816
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1817
    return-void

    .line 1820
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1821
    iput p1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1822
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1823
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1838
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1815
    return-void

    .line 1825
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1826
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1827
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    .line 1835
    :goto_1
    iput p1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1836
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    goto :goto_0

    .line 1828
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1829
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1830
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1832
    :cond_3
    return-void
.end method

.method public semSetThumbTintColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 398
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 400
    .local v0, "mOverlapColor":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 395
    :cond_0
    return-void
.end method

.method public setDefaultColorForVolumePanel(Z)V
    .locals 3
    .param p1, "isClearCoverOpened"    # Z

    .prologue
    const v2, 0x1060120

    .line 2201
    if-eqz p1, :cond_0

    .line 2202
    const-string/jumbo v0, "#ffe3e0e0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 2203
    const-string/jumbo v0, "#ff56c0e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 2204
    const-string/jumbo v0, "#ff56c0e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 2205
    const-string/jumbo v0, "#fff7cdbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 2206
    const-string/jumbo v0, "#fff1662f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 2207
    const-string/jumbo v0, "#fff1662f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 2200
    :goto_0
    return-void

    .line 2209
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 2210
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 2211
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 2212
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 2213
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 2214
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1786
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 1787
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1785
    return-void
.end method

.method public setDualModeOverlapColor(II)V
    .locals 3
    .param p1, "bgColor"    # I
    .param p2, "fgColor"    # I

    .prologue
    .line 1900
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1901
    .local v0, "mOverlapBackgroundColor":Landroid/content/res/ColorStateList;
    invoke-direct {p0, p2}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1904
    .local v1, "mOverlapForegroundColor":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/content/res/ColorStateList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1905
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1908
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1909
    iput-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1911
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    .line 1912
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1898
    return-void
.end method

.method public setFluidColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 2263
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 2264
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    .line 2266
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2262
    return-void
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    .prologue
    .line 660
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1    # "increment":I
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 659
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    monitor-enter p0

    .line 677
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 680
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 683
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 676
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMuteAnimation(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 2175
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    if-eqz v0, :cond_0

    .line 2176
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 2174
    :cond_0
    return-void
.end method

.method public setOverlapBackgroundForDualColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 1797
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1800
    .local v0, "mOverlapColor":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1801
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1804
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1806
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 1795
    return-void
.end method

.method public setOverlapPointForTripleColor(II)V
    .locals 3
    .param p1, "firstValue"    # I
    .param p2, "secondValue"    # I

    .prologue
    const v2, 0x1080a98

    const v1, 0x1080a96

    .line 1945
    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 1946
    :cond_0
    return-void

    .line 1949
    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 1950
    :cond_2
    iput p1, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapPoint:I

    .line 1951
    iput p2, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    .line 1952
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1953
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1973
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1944
    return-void

    .line 1955
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1956
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1957
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapBackground:Landroid/graphics/drawable/Drawable;

    .line 1958
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1959
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapBackground:Landroid/graphics/drawable/Drawable;

    .line 1969
    :goto_1
    iput p1, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapPoint:I

    .line 1970
    iput p2, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapPoint:I

    .line 1971
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateTripleColorMode()V

    goto :goto_0

    .line 1960
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1961
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1962
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mFirstOverlapBackground:Landroid/graphics/drawable/Drawable;

    .line 1963
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1964
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mSecondOverlapBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1966
    :cond_5
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1713
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1712
    return-void
.end method

.method public setProgressDrawableForAutoBrightness(Z)V
    .locals 0
    .param p1, "auto"    # Z

    .prologue
    .line 1741
    return-void
.end method

.method public setProgressInternal(IZZ)Z
    .locals 1
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 1517
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->setProgressInternal(IZZ)Z

    move-result v0

    .line 1518
    .local v0, "superRet":Z
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    .line 1519
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    .line 1520
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateTripleColorMode()V

    .line 1521
    return v0
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 2286
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2288
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 2285
    return-void
.end method

.method public setSplitProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1778
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 1779
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1777
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .prologue
    .line 525
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 526
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 524
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 330
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_5

    .line 331
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 332
    const/4 v0, 0x1

    .line 337
    .local v0, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_2

    .line 338
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 339
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 346
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 347
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 353
    :goto_1
    if-eqz v0, :cond_2

    .line 354
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 355
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 356
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    .line 360
    :cond_2
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 362
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 363
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 365
    if-eqz v0, :cond_3

    .line 366
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 367
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 370
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 371
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 375
    .end local v1    # "state":[I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 376
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->pressedThumbWidth:I

    .line 325
    :cond_4
    return-void

    .line 334
    .end local v0    # "needUpdate":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_0

    .line 349
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    goto :goto_1
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .prologue
    .line 513
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 514
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 512
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 420
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 423
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 425
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 427
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    .line 432
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 419
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    goto :goto_0
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 460
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 463
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 459
    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "tickMark"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 543
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 547
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 549
    if-eqz p1, :cond_2

    .line 550
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 551
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 552
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 555
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 558
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 542
    return-void
.end method

.method public setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 583
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 586
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 582
    return-void
.end method

.method public setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 614
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    .line 617
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 613
    return-void
.end method

.method public setTouchDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 2302
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    .line 2301
    return-void
.end method

.method public setTripleModeOverlapColor(IIII)V
    .locals 5
    .param p1, "bgColor1"    # I
    .param p2, "fgColor1"    # I
    .param p3, "bgColor2"    # I
    .param p4, "fgColor2"    # I

    .prologue
    .line 2086
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2087
    .local v0, "mFirstOverlapBackgroundColor":Landroid/content/res/ColorStateList;
    invoke-direct {p0, p2}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 2088
    .local v1, "mFirstOverlapForegroundColor":Landroid/content/res/ColorStateList;
    invoke-direct {p0, p3}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 2089
    .local v2, "mSecondOverlapBackgroundColor":Landroid/content/res/ColorStateList;
    invoke-direct {p0, p4}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 2092
    .local v3, "mSecondOverlapForegroundColor":Landroid/content/res/ColorStateList;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/content/res/ColorStateList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2093
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 2096
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v4}, Landroid/content/res/ColorStateList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2097
    iput-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 2098
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Landroid/widget/AbsSeekBar;->OVERLAP_FIRST_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 2102
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Landroid/content/res/ColorStateList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2103
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 2106
    :cond_2
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/content/res/ColorStateList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2107
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 2108
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Landroid/widget/AbsSeekBar;->OVERLAP_SECOND_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 2111
    :cond_3
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateTripleColorMode()V

    .line 2112
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 2083
    return-void
.end method

.method protected updateDrawableBounds(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1926
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 1928
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 1929
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    .line 1930
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForTripleColor()V

    .line 1925
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 689
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
