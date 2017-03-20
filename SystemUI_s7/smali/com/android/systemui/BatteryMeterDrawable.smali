.class public Lcom/android/systemui/BatteryMeterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BatteryMeterDrawable.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterDrawable$1;,
        Lcom/android/systemui/BatteryMeterDrawable$2;,
        Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimOffset:I

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryHealth:I

.field private mBatteryOnline:I

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private mBatteryStatus:I

.field private mBlinkingNeeded:Z

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private mBoltFrameHeight:F

.field private mBoltFrameTop:F

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private mChargeColor:I

.field private mCharging:Z

.field private final mClipPath:Landroid/graphics/Path;

.field private mColors:[I

.field private final mContext:Landroid/content/Context;

.field private final mCriticalLevel:I

.field private mDarkModeBackgroundColor:I

.field private mDarkModeBoltColor:I

.field private mDarkModeFillColor:I

.field private mDarkModePowerSupplyingColor:I

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIconTint:I

.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I

.field private mInvalidString:Ljava/lang/String;

.field private final mInvalidTextPaint:Landroid/graphics/Paint;

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mIsShowBatteryIcon:Z

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeBoltColor:I

.field private mLightModeFillColor:I

.field private mLightModePowerSupplyingColor:I

.field private mListening:Z

.field private mOldDarkIntensity:F

.field private mPlugType:I

.field private mPluggedIn:Z

.field private final mPlusFrame:Landroid/graphics/RectF;

.field private final mPlusPaint:Landroid/graphics/Paint;

.field private final mPlusPath:Landroid/graphics/Path;

.field private final mPlusPoints:[F

.field private mPostInvalidateHandler:Landroid/os/Handler;

.field private mPowerSaveEnabled:Z

.field private mPowerSupply:Z

.field private mPowerSupplyFrameHeight:F

.field private mPowerSupplyFrameTop:F

.field private final mPowerSupplyingFrame:Landroid/graphics/RectF;

.field private final mPowerSupplyingPaint:Landroid/graphics/Paint;

.field private final mPowerSupplyingPath:Landroid/graphics/Path;

.field private final mPowerSupplyingPoints:[F

.field private final mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

.field private final mShapePath:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/BatteryMeterDrawable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBlinkingNeeded:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/BatteryMeterDrawable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsShowBatteryIcon:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/BatteryMeterDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsShowBatteryIcon:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/BatteryMeterDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/BatteryMeterDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateShowPercent()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/BatteryMeterDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 12

    const/4 v7, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIconTint:I

    iput v11, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    new-instance v6, Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    invoke-direct {v6, p0}, Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;-><init>(Lcom/android/systemui/BatteryMeterDrawable;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    iput v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    iput v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBoltColor:I

    iput v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBoltColor:I

    iput-boolean v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsShowBatteryIcon:Z

    iput-boolean v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBlinkingNeeded:Z

    iput v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    iput v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    const-string/jumbo v6, "X"

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    iput v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryOnline:I

    iput v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    iput-boolean v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupply:Z

    iput v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModePowerSupplyingColor:I

    iput v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModePowerSupplyingColor:I

    new-instance v6, Lcom/android/systemui/BatteryMeterDrawable$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/BatteryMeterDrawable$1;-><init>(Lcom/android/systemui/BatteryMeterDrawable;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    new-instance v6, Lcom/android/systemui/BatteryMeterDrawable$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/BatteryMeterDrawable$2;-><init>(Lcom/android/systemui/BatteryMeterDrawable;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    const v6, 0x7f110028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateKnoxCustomStatusBarBatteryColours()V

    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateShowPercent()V

    const v6, 0x7f0f0461

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0068

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e000d

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonHeightFraction:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e000e

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e000f

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    const-string/jumbo v6, "sans-serif-condensed"

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    aget v7, v7, v9

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    const-string/jumbo v6, "sans-serif"

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    const v7, -0x17cbf7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    const-string/jumbo v6, "sans-serif"

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v6, 0x7f0b0094

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mChargeColor:I

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    const v7, 0x7f0b0095

    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v5}, Lcom/android/systemui/BatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    new-instance v6, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    invoke-static {v5}, Lcom/android/systemui/BatteryMeterDrawable;->loadPlusPoints(Landroid/content/res/Resources;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    const v6, 0x7f0b00e3

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    const v6, 0x7f0b00e4

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeFillColor:I

    const v6, 0x7f0b00e6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    const v6, 0x7f0b00e7

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeFillColor:I

    const v6, 0x7f0b0097

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    const v6, 0x7f0b0098

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    const v6, 0x7f0b0095

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBoltColor:I

    const v6, 0x7f0b0096

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBoltColor:I

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPaint:Landroid/graphics/Paint;

    const v7, 0x7f0b0099

    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v5}, Lcom/android/systemui/BatteryMeterDrawable;->loadPowerSupplyingPoints(Landroid/content/res/Resources;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    const v6, 0x7f0b0099

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModePowerSupplyingColor:I

    const v6, 0x7f0b009a

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModePowerSupplyingColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d02e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d02e1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->update_battery_colors()V

    return-void

    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    mul-int/lit8 v6, v0, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    invoke-virtual {v4, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    aput v8, v6, v7

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getBackgroundColor(F)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getColorForLevel(I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    aget v2, v3, v1

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    if-gt p1, v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIconTint:I

    return v3

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return v0
.end method

.method private getFillColor(F)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeFillColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeFillColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8

    const v5, 0x7f110029

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method private static loadPlusPoints(Landroid/content/res/Resources;)[F
    .locals 8

    const v5, 0x7f11002a

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method private static loadPowerSupplyingPoints(Landroid/content/res/Resources;)[F
    .locals 8

    const v5, 0x7f11002b

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method private postInvalidate()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateChargingAnimLevel()I
    .locals 6

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-nez v1, :cond_0

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    add-int/2addr v0, v1

    const/16 v1, 0x60

    if-lt v0, v1, :cond_1

    const/16 v0, 0x64

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    goto :goto_1
.end method

.method private updateShowPercent()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_show_battery_percent"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mShowPercent:Z

    return-void
.end method


# virtual methods
.method public disableShowPercent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mShowPercent:Z

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    move/from16 v31, v0

    const/16 v32, 0x7

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    :cond_0
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterDrawable;->mBlinkingNeeded:Z

    sget-object v31, Lcom/android/systemui/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v32, "battery icon blink..."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v31

    if-nez v31, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x3e8

    const/16 v34, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mIsShowBatteryIcon:Z

    move/from16 v31, v0

    if-nez v31, :cond_4

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    move/from16 v31, v0

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    move/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    :cond_3
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterDrawable;->mBlinkingNeeded:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f120021

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateChargingAnimLevel()I

    move-result v15

    :goto_0
    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v15, v0, :cond_6

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    goto :goto_0

    :cond_6
    int-to-float v0, v15

    move/from16 v31, v0

    const/high16 v32, 0x42c80000    # 100.0f

    div-float v12, v31, v32

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x3f27b961

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    move/from16 v31, v0

    sub-int v31, v31, v28

    div-int/lit8 v26, v31, 0x2

    int-to-float v0, v13

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonHeightFraction:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v13

    move/from16 v35, v0

    invoke-virtual/range {v31 .. v35}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v33, v0

    const/high16 v34, 0x3e800000    # 0.25f

    mul-float v33, v33, v34

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v34, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x3e800000    # 0.25f

    mul-float v35, v35, v36

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    sub-float v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v35, v0

    int-to-float v0, v11

    move/from16 v36, v0

    add-float v35, v35, v36

    invoke-virtual/range {v31 .. v35}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    int-to-float v0, v11

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    move/from16 v31, v0

    if-eqz v31, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mChargeColor:I

    move/from16 v31, v0

    :goto_1
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v31, 0x60

    move/from16 v0, v31

    if-lt v15, v0, :cond_9

    const/high16 v12, 0x3f800000    # 1.0f

    :cond_7
    :goto_2
    const/high16 v31, 0x3f800000    # 1.0f

    cmpl-float v31, v12, v31

    if-nez v31, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-boolean v31, Lcom/android/systemui/SystemUIRune;->SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v31, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryOnline:I

    move/from16 v31, v0

    if-nez v31, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x3f000000    # 0.5f

    mul-float v29, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    move/from16 v32, v0

    add-float v31, v31, v32

    const v32, 0x3ef5c28f    # 0.48f

    mul-float v30, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v31

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-gt v15, v0, :cond_7

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v33, v33, v12

    mul-float v32, v32, v33

    add-float v16, v31, v32

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrameTop:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/RectF;->height()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrameHeight:F

    sget-boolean v31, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v31, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyFrameTop:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/RectF;->height()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyFrameHeight:F

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move/from16 v0, v16

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    sget-object v33, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v32, v0

    sget-object v33, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-boolean v31, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v31, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupply:Z

    move/from16 v31, v0

    if-eqz v31, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->width()F

    move-result v32

    const/high16 v33, 0x40900000    # 4.5f

    div-float v32, v32, v33

    add-float v23, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyFrameTop:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyFrameHeight:F

    move/from16 v32, v0

    const/high16 v33, 0x40c00000    # 6.0f

    div-float v32, v32, v33

    add-float v25, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->width()F

    move-result v32

    const/high16 v33, 0x40e00000    # 7.0f

    div-float v32, v32, v33

    sub-float v24, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyFrameHeight:F

    move/from16 v32, v0

    const/high16 v33, 0x40a00000    # 5.0f

    div-float v32, v32, v33

    sub-float v22, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    cmpl-float v31, v31, v23

    if-nez v31, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    cmpl-float v31, v31, v25

    if-eqz v31, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v24

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->width()F

    move-result v34

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v14, 0x2

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v14, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    move-object/from16 v33, v0

    aget v33, v33, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->width()F

    move-result v34

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    move-object/from16 v34, v0

    add-int/lit8 v35, v14, 0x1

    aget v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v14, v14, 0x2

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    cmpl-float v31, v31, v24

    if-nez v31, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    cmpl-float v31, v31, v22

    if-nez v31, :cond_d

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    sub-float v31, v31, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    div-float v21, v31, v32

    const/16 v31, 0x0

    move/from16 v0, v21

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v21

    const/high16 v31, 0x3f800000    # 1.0f

    cmpg-float v31, v21, v31

    if-gtz v31, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_f
    :goto_6
    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    move/from16 v31, v0

    if-nez v31, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-gt v15, v0, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x3f000000    # 0.5f

    mul-float v29, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    move/from16 v32, v0

    add-float v31, v31, v32

    const v32, 0x3ef5c28f    # 0.48f

    mul-float v30, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_11
    :goto_7
    return-void

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->width()F

    move-result v34

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v32, v0

    sget-object v33, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    move/from16 v31, v0

    if-nez v31, :cond_15

    sget-boolean v31, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v31, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1a

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->width()F

    move-result v32

    const/high16 v33, 0x40800000    # 4.0f

    div-float v32, v32, v33

    add-float v7, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrameTop:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrameHeight:F

    move/from16 v32, v0

    const/high16 v33, 0x40c00000    # 6.0f

    div-float v32, v32, v33

    add-float v10, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->width()F

    move-result v32

    const/high16 v33, 0x40800000    # 4.0f

    div-float v32, v32, v33

    sub-float v9, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrameHeight:F

    move/from16 v32, v0

    const/high16 v33, 0x41200000    # 10.0f

    div-float v32, v32, v33

    sub-float v6, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    cmpl-float v31, v31, v7

    if-nez v31, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    cmpl-float v31, v31, v10

    if-eqz v31, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v10, v9, v6}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->width()F

    move-result v34

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v14, 0x2

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v14, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v33, v0

    aget v33, v33, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->width()F

    move-result v34

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v34, v0

    add-int/lit8 v35, v14, 0x1

    aget v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v14, v14, 0x2

    goto :goto_8

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    cmpl-float v31, v31, v9

    if-nez v31, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    cmpl-float v31, v31, v6

    if-nez v31, :cond_16

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    sub-float v31, v31, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    div-float v8, v31, v32

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/high16 v31, 0x3f800000    # 1.0f

    cmpg-float v31, v8, v31

    if-gtz v31, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_a
    sget-boolean v31, Lcom/android/systemui/SystemUIRune;->SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-nez v31, :cond_f

    sget-boolean v31, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v31, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x3f000000    # 0.5f

    mul-float v29, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    move/from16 v32, v0

    add-float v31, v31, v32

    const v32, 0x3ef5c28f    # 0.48f

    mul-float v30, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->width()F

    move-result v34

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v32, v0

    sget-object v33, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    move/from16 v31, v0

    if-eqz v31, :cond_f

    goto/16 :goto_6

    :cond_1b
    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBatteryLevelChanged(IZZIIIIZ)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-eq v1, p2, :cond_9

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz p3, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-eq p3, v1, :cond_1

    sget-object v1, Lcom/android/systemui/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Battery icon update - Charging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    iput-boolean p3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-nez v0, :cond_3

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    if-ne v1, p4, :cond_2

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    if-eq v1, p5, :cond_a

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    iput p4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    iput p5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryOnline:I

    if-eq v1, p6, :cond_b

    const/4 v0, 0x1

    :cond_4
    :goto_2
    iput p6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryOnline:I

    :cond_5
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v1, :cond_7

    if-nez v0, :cond_6

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    if-eq v1, p7, :cond_c

    const/4 v0, 0x1

    :cond_6
    :goto_3
    iput p7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    :cond_7
    sget-object v1, Lcom/android/systemui/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSomethingChanged - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    return-void

    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-ne v1, p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    return-void
.end method

.method public setBounds(IIII)V
    .locals 3

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    sub-int v0, p3, p1

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 5

    iget v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterDrawable;->getBackgroundColor(F)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterDrawable;->getFillColor(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIconTint:I

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBoltColor:I

    iget v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBoltColor:I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModePowerSupplyingColor:I

    iget v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModePowerSupplyingColor:I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mChargeColor:I

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->invalidateSelf()V

    iput p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    return-void
.end method

.method public startListening()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "battery_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "battery_color_dark"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateShowPercent()V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public stopListening()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public updateBatteryColor()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    const v5, 0x7f110028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateKnoxCustomStatusBarBatteryColours()V

    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v6, v2, 0x2

    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aput v7, v5, v6

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public updateKnoxCustomStatusBarBatteryColours()V
    .locals 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->getAttributeColourArray()[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v10, v5

    if-lez v10, :cond_2

    array-length v10, v5

    new-array v7, v10, [I

    array-length v10, v5

    new-array v6, v10, [I

    const/4 v4, 0x0

    array-length v10, v5

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v3, v5, v9

    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v11

    aput v11, v7, v4

    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getColour()I

    move-result v11

    aput v11, v6, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    array-length v8, v5

    :cond_1
    :goto_1
    if-eqz v5, :cond_3

    move v0, v8

    mul-int/lit8 v9, v8, 0x2

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v10, v2, 0x2

    aget v11, v7, v2

    aput v11, v9, v10

    iget-object v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, 0x1

    aget v11, v6, v2

    aput v11, v9, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->invalidateSelf()V

    return-void
.end method

.method public update_battery_colors()V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const v3, -0x1

    const-string/jumbo v2, "battery_color"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeFillColor:I

    const v3, -0xddddde

    const-string/jumbo v2, "battery_color_dark"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeFillColor:I

    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    const v3, -0x1

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterDrawable;->setDarkIntensity(F)V

    return-void
.end method
