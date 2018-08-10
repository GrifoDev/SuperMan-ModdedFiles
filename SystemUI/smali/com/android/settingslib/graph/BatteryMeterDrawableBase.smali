.class public Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.super Landroid/graphics/drawable/Drawable;
.source "BatteryMeterDrawableBase.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected final mBatteryPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field protected final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private mChargeColor:I

.field private mCharging:Z

.field private final mClipPath:Landroid/graphics/Path;

.field private final mColors:[I

.field protected final mContext:Landroid/content/Context;

.field private final mCriticalLevel:I

.field private mDarkModeBackgroundColor:I

.field private mDarkModeFillColor:I

.field private final mFrame:Landroid/graphics/RectF;

.field protected final mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mIconTint:I

.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field private mOldDarkIntensity:F

.field private final mPlusFrame:Landroid/graphics/RectF;

.field protected final mPlusPaint:Landroid/graphics/Paint;

.field private final mPlusPath:Landroid/graphics/Path;

.field private final mPlusPoints:[F

.field private mPowerSaveEnabled:Z

.field private final mShapePath:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private mTextHeight:F

.field protected final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field protected final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 13

    const/4 v6, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIconTint:I

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOldDarkIntensity:F

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mClipPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settingslib/R$array;->batterymeter_color_levels:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    sget v6, Lcom/android/settingslib/R$array;->batterymeter_color_values:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    mul-int/lit8 v6, v0, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    invoke-virtual {v4, v3, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    aput v8, v6, v7

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v6

    if-ne v6, v10, :cond_0

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    move-result v8

    invoke-static {p1, v8}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v8

    aput v8, v6, v7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    aput v8, v6, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget v6, Lcom/android/settingslib/R$string;->battery_meter_very_low_overlay_symbol:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningString:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settingslib/R$fraction;->battery_button_height_fraction:I

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonHeightFraction:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settingslib/R$fraction;->battery_subpixel_smoothing_left:I

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingLeft:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settingslib/R$fraction;->battery_subpixel_smoothing_right:I

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingRight:F

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    const-string/jumbo v6, "sans-serif-condensed"

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    const-string/jumbo v6, "sans-serif"

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    array-length v6, v6

    if-le v6, v9, :cond_2

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    aget v7, v7, v9

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settingslib/R$color;->batterymeter_charge_color:I

    invoke-static {v6, v7}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mChargeColor:I

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settingslib/R$color;->batterymeter_bolt_color:I

    invoke-static {v7, v8}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget v6, Lcom/android/settingslib/R$array;->batterymeter_bolt_points:I

    invoke-static {v5, v6}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->loadPoints(Landroid/content/res/Resources;I)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    new-instance v6, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    sget v6, Lcom/android/settingslib/R$array;->batterymeter_plus_points:I

    invoke-static {v5, v6}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->loadPoints(Landroid/content/res/Resources;I)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settingslib/R$color;->dark_mode_icon_color_dual_tone_background:I

    invoke-static {v6, v7}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mDarkModeBackgroundColor:I

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settingslib/R$color;->dark_mode_icon_color_dual_tone_fill:I

    invoke-static {v6, v7}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mDarkModeFillColor:I

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settingslib/R$color;->light_mode_icon_color_dual_tone_background:I

    invoke-static {v6, v7}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLightModeBackgroundColor:I

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settingslib/R$color;->light_mode_icon_color_dual_tone_fill:I

    invoke-static {v6, v7}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLightModeFillColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settingslib/R$dimen;->battery_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settingslib/R$dimen;->battery_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicHeight:I

    return-void
.end method

.method private getColorForLevel(I)I
    .locals 5

    iget-boolean v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIconTint:I

    return v3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    aget v2, v3, v1

    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    if-gt p1, v2, :cond_2

    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_1

    iget v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIconTint:I

    return v3

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static loadPoints(Landroid/content/res/Resources;I)[F
    .locals 8

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

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


# virtual methods
.method synthetic -com_android_settingslib_graph_BatteryMeterDrawableBase-mthref-0()V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method synthetic -com_android_settingslib_graph_BatteryMeterDrawableBase-mthref-1()V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    move/from16 v20, v0

    const/4 v4, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_0

    return-void

    :cond_0
    move/from16 v0, v20

    int-to-float v4, v0

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v17, v4, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v4, v4

    const v6, 0x3f27b961

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    sub-int v4, v4, v29

    div-int/lit8 v28, v4, 0x2

    move/from16 v0, v18

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonHeightFraction:F

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v29

    int-to-float v10, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-virtual {v4, v6, v7, v10, v0}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v28

    int-to-float v6, v0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move/from16 v0, v29

    int-to-float v7, v0

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x3e800000    # 0.25f

    mul-float v32, v32, v33

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->round(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v10, v10, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    invoke-virtual {v4, v6, v7, v10, v0}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingRight:F

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    move/from16 v0, v16

    int-to-float v7, v0

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingRight:F

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingRight:F

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mChargeColor:I

    :goto_0
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v4, 0x60

    move/from16 v0, v20

    if-lt v0, v4, :cond_4

    const/high16 v17, 0x3f800000    # 1.0f

    :cond_1
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v17, v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    add-float v12, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v6, v7

    add-float v15, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    sub-float v14, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v6, v7

    sub-float v11, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v12

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v15

    if-eqz v4, :cond_6

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v4, v12, v15, v14, v11}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    const/16 v32, 0x1

    aget v10, v10, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v10, v10, v32

    add-float/2addr v7, v10

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v19, 0x2

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    array-length v4, v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    aget v7, v7, v19

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    add-int/lit8 v32, v19, 0x1

    aget v10, v10, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v10, v10, v32

    add-float/2addr v7, v10

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v19, v19, 0x2

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result v4

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    move/from16 v0, v20

    if-gt v0, v4, :cond_1

    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, v17

    mul-float/2addr v6, v7

    add-float v21, v4, v6

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v14

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v11

    if-nez v4, :cond_2

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v4, v21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    div-float v13, v4, v6

    const/4 v4, 0x0

    invoke-static {v13, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v4, v13, v4

    if-gtz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    :goto_5
    const/16 v23, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    move/from16 v0, v20

    if-le v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShowPercent:Z

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    const/16 v10, 0x64

    if-ne v4, v10, :cond_11

    const v4, 0x3ec28f5c    # 0.38f

    :goto_6
    mul-float/2addr v4, v7

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextHeight:F

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v8, v4, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextHeight:F

    add-float/2addr v4, v6

    const v6, 0x3ef0a3d7    # 0.47f

    mul-float v9, v4, v6

    cmpl-float v4, v21, v9

    if-lez v4, :cond_12

    const/16 v23, 0x1

    :goto_7
    if-nez v23, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v21

    iput v0, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mClipPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    move/from16 v0, v20

    if-gt v0, v4, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v30, v4, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextHeight:F

    add-float/2addr v4, v6

    const v6, 0x3ef5c28f    # 0.48f

    mul-float v31, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v4, v1, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    :goto_8
    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    const/16 v32, 0x1

    aget v10, v10, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v10, v10, v32

    add-float/2addr v7, v10

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    const/high16 v6, 0x40400000    # 3.0f

    div-float v27, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float v6, v6, v27

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v24, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float v6, v6, v27

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v26, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float v6, v6, v27

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v25, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float v6, v6, v27

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v22, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v24

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v26

    if-eqz v4, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    move/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    const/16 v32, 0x1

    aget v10, v10, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v10, v10, v32

    add-float/2addr v7, v10

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v19, 0x2

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    array-length v4, v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    aget v7, v7, v19

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    add-int/lit8 v32, v19, 0x1

    aget v10, v10, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v10, v10, v32

    add-float/2addr v7, v10

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v19, v19, 0x2

    goto :goto_9

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v25

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v22

    if-nez v4, :cond_d

    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v4, v21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    div-float v13, v4, v6

    const/4 v4, 0x0

    invoke-static {v13, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v4, v13, v4

    if-gtz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    const/16 v32, 0x1

    aget v10, v10, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v10, v10, v32

    add-float/2addr v7, v10

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_a

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_5

    :cond_11
    const/high16 v4, 0x3f000000    # 0.5f

    goto/16 :goto_6

    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_7

    :cond_13
    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected postInvalidate()V
    .locals 4

    new-instance v0, Lcom/android/settingslib/graph/-$Lambda$W5EX9kuhFh0lIe1Aych46kK6DTA;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/-$Lambda$W5EX9kuhFh0lIe1Aych46kK6DTA;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->unscheduleSelf(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/settingslib/graph/-$Lambda$W5EX9kuhFh0lIe1Aych46kK6DTA$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/-$Lambda$W5EX9kuhFh0lIe1Aych46kK6DTA$1;-><init>(Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    sub-int v0, p3, p1

    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextHeight:F

    return-void
.end method

.method public setCharging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setPowerSave(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    return-void
.end method

.method public setShowPercent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShowPercent:Z

    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    return-void
.end method
