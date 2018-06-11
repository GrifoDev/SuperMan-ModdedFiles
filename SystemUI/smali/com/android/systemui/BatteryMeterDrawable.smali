.class public Lcom/android/systemui/BatteryMeterDrawable;
.super Lcom/android/systemui/BatteryMeterDrawableBase;
.source "BatteryMeterDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterDrawable$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBatteryFrameDarkColor:I

.field private final mBatteryFrameLightColor:I

.field private mBatteryFramePaint:Landroid/graphics/Paint;

.field private mBatteryHealth:I

.field private mBatteryIconColor:I

.field private mBatteryLevelBackgroundDarkColor:I

.field private mBatteryLevelBackgroundLightColor:I

.field private mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

.field private mBatteryLevelColor:I

.field private mBatteryLevelPaint:Landroid/graphics/Paint;

.field private mBatteryLightningBoltDarkColor:I

.field private mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

.field private mBatteryLightningBoltLightColor:I

.field private mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

.field private mBatteryOnline:I

.field private mBatteryStatus:I

.field private mDarkIconColor:I

.field private mDarkModeBoltColor:I

.field private mDarkModePowerSupplyingColor:I

.field private mFlagBlinkingNeeded:Z

.field private mFlagDrawIconTurn:Z

.field private mInvalidString:Ljava/lang/String;

.field private mInvalidTextPaint:Landroid/graphics/Paint;

.field private mIsDesktopMode:Z

.field private mLightModeBoltColor:I

.field private mLightModePowerSupplyingColor:I

.field private mPlugType:I

.field private mPluggedIn:Z

.field private mPostInvalidateHandler:Landroid/os/Handler;

.field private mPowerSupply:Z

.field private final mPowerSupplyingFrame:Landroid/graphics/RectF;

.field private final mPowerSupplyingPaint:Landroid/graphics/Paint;

.field private final mPowerSupplyingPath:Landroid/graphics/Path;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/BatteryMeterDrawable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/BatteryMeterDrawable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFlagDrawIconTurn:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/BatteryMeterDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFlagDrawIconTurn:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/BatteryMeterDrawable;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    const v6, 0x7f06002e

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    iput v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBoltColor:I

    iput v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBoltColor:I

    iput-boolean v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsDesktopMode:Z

    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFlagDrawIconTurn:Z

    iput-boolean v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    iput v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    iput v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    new-instance v2, Lcom/android/systemui/BatteryMeterDrawable$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/BatteryMeterDrawable$1;-><init>(Lcom/android/systemui/BatteryMeterDrawable;)V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    iput-boolean v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupply:Z

    iput v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModePowerSupplyingColor:I

    iput v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModePowerSupplyingColor:I

    const-string/jumbo v2, "X"

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    iput v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryOnline:I

    iput v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->loadDimens()V

    const v2, 0x7f0601d3

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFrameLightColor:I

    const v2, 0x7f0601d2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFrameDarkColor:I

    iget v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFrameLightColor:I

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelColor:I

    const v2, 0x7f0601d5

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    const v2, 0x7f0601d4

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundDarkColor:I

    const v2, 0x7f0601d7

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    const v2, 0x7f0601d6

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFrameLightColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFrameLightColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModePowerSupplyingColor:I

    const v2, 0x7f06002f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModePowerSupplyingColor:I

    const v2, 0x7f06002a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBoltColor:I

    const v2, 0x7f06002b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBoltColor:I

    sget-boolean v2, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    const v3, -0x17cbf7

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const-string/jumbo v2, "sans-serif"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->readRenovateMods()V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateStatusBarBatteryColour()V

    return-void
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

.method private getLinearGradientDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFLandroid/graphics/LinearGradient;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x1000000

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v5, p6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p6, v7}, Landroid/graphics/LinearGradient;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    int-to-float v2, p3

    div-float/2addr v2, v8

    int-to-float v3, p4

    div-float/2addr v3, v8

    invoke-virtual {v7, p5, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p6, v7}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p2, v4, v4, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v3, p3

    int-to-float v4, p4

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private loadDimens()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsDesktopMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    :goto_0
    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->setBounds(IIII)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070670

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07066f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 43

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_3

    :cond_0
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    sget-boolean v7, Lcom/android/systemui/BatteryMeterDrawable;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "BatteryMeterDrawable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "battery icon blink for battery health... mFlagDrawIconTurn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFlagDrawIconTurn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFlagDrawIconTurn:Z

    if-nez v7, :cond_5

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_0

    :cond_4
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0805e6

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v38

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v36

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mIsDesktopMode:Z

    if-eqz v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterDrawable;->getIntrinsicWidth()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterDrawable;->getIntrinsicHeight()I

    move-result v36

    :cond_6
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v38

    move/from16 v1, v36

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v35

    new-instance v24, Landroid/graphics/Canvas;

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v37, Landroid/graphics/Rect;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/Rect;-><init>()V

    div-int/lit8 v26, v38, 0x2

    div-int/lit8 v27, v36, 0x2

    move/from16 v40, v27

    move/from16 v22, v27

    move/from16 v30, v26

    move/from16 v39, v26

    const/16 v20, 0xff

    move/from16 v29, v27

    :goto_0
    if-lez v29, :cond_7

    move-object/from16 v0, v35

    move/from16 v1, v26

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/16 v8, 0xff

    if-lt v7, v8, :cond_b

    :cond_7
    move/from16 v29, v27

    :goto_1
    move/from16 v0, v29

    move/from16 v1, v36

    if-ge v0, v1, :cond_8

    move-object/from16 v0, v35

    move/from16 v1, v26

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/16 v8, 0xff

    if-lt v7, v8, :cond_c

    :cond_8
    move/from16 v29, v26

    :goto_2
    if-lez v29, :cond_9

    move-object/from16 v0, v35

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/16 v8, 0xff

    if-lt v7, v8, :cond_d

    :cond_9
    move/from16 v29, v26

    :goto_3
    move/from16 v0, v29

    move/from16 v1, v38

    if-ge v0, v1, :cond_a

    add-int/lit8 v39, v39, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/16 v8, 0xff

    if-lt v7, v8, :cond_e

    :cond_a
    move-object/from16 v0, v37

    move/from16 v1, v30

    move/from16 v2, v40

    move/from16 v3, v39

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    move/from16 v31, v0

    const/4 v7, -0x1

    move/from16 v0, v31

    if-ne v0, v7, :cond_f

    return-void

    :cond_b
    add-int/lit8 v40, v40, -0x1

    add-int/lit8 v29, v29, -0x1

    goto :goto_0

    :cond_c
    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    :cond_d
    add-int/lit8 v30, v30, -0x1

    add-int/lit8 v29, v29, -0x1

    goto :goto_2

    :cond_e
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    :cond_f
    move/from16 v0, v31

    int-to-float v7, v0

    const/high16 v8, 0x42c80000    # 100.0f

    div-float v21, v7, v8

    const/16 v7, 0x60

    move/from16 v0, v31

    if-lt v0, v7, :cond_13

    const/high16 v21, 0x3f800000    # 1.0f

    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v21

    float-to-int v0, v7

    move/from16 v33, v0

    new-instance v34, Landroid/graphics/Rect;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v37

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v23, v7, v33

    move-object/from16 v0, v37

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v23

    if-ne v0, v7, :cond_14

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v0, v31

    if-le v0, v7, :cond_14

    add-int/lit8 v23, v23, -0x1

    :cond_11
    :goto_5
    move-object/from16 v0, v37

    iget v7, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v37

    iget v8, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v37

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v32, Landroid/graphics/Rect;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v37

    iget v7, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v37

    iget v8, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v37

    iget v9, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v7, v8, v9, v1}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v7, :cond_15

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_15

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_15

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0805e4

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/4 v7, 0x4

    new-array v11, v7, [I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    const/4 v8, 0x0

    aput v7, v11, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    const/4 v8, 0x1

    aput v7, v11, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    const/4 v8, 0x2

    aput v7, v11, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    const/4 v8, 0x3

    aput v7, v11, v8

    const/4 v7, 0x4

    new-array v12, v7, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v7, v12, v8

    move/from16 v0, v33

    int-to-float v7, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/4 v8, 0x1

    aput v7, v12, v8

    move/from16 v0, v33

    int-to-float v7, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/4 v8, 0x2

    aput v7, v12, v8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x3

    aput v7, v12, v8

    new-instance v6, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    move-object/from16 v0, v37

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    const/4 v9, 0x0

    move-object/from16 v0, v37

    iget v10, v0, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    move-object/from16 v19, v6

    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/BatteryMeterDrawable;->getLinearGradientDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFLandroid/graphics/LinearGradient;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v25

    if-eqz v25, :cond_12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9, v10, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_12
    :goto_6
    return-void

    :cond_13
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v0, v31

    if-gt v0, v7, :cond_10

    const/16 v21, 0x0

    goto/16 :goto_4

    :cond_14
    move-object/from16 v0, v37

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int v7, v23, v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_11

    const/16 v7, 0x60

    move/from16 v0, v31

    if-ge v0, v7, :cond_11

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-nez v7, :cond_12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v0, v31

    if-gt v0, v7, :cond_12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v41, v7, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v7, v8

    const v8, 0x3ef5c28f    # 0.48f

    mul-float v42, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v7, v1, v2, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6
.end method

.method protected getColorForLevel(I)I
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelColor:I

    return v1

    :cond_0
    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/systemui/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result v0

    const-string/jumbo v1, "BatteryMeterDrawable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Knox change color of statusbar battery !! color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIconTint:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelColor:I

    :cond_2
    return v0
.end method

.method public onBatteryLevelChanged(IZZIIIIZ)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-eq p3, v1, :cond_0

    const-string/jumbo v1, "BatteryMeterDrawable"

    const-string/jumbo v2, "Battery icon update - Charging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    if-ne v1, p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-eq v1, p2, :cond_a

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    iput-boolean p3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-nez v0, :cond_3

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    if-ne v1, p4, :cond_2

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    if-eq v1, p5, :cond_c

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    iput p4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    iput p5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    sget-boolean v1, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryOnline:I

    if-eq v1, p6, :cond_d

    const/4 v0, 0x1

    :cond_4
    :goto_2
    iput p6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryOnline:I

    :cond_5
    sget-boolean v1, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_7

    if-nez v0, :cond_6

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    if-eq v1, p7, :cond_e

    const/4 v0, 0x1

    :cond_6
    :goto_3
    iput p7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    :cond_7
    if-eqz v0, :cond_9

    sget-boolean v1, Lcom/android/systemui/BatteryMeterDrawable;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "BatteryMeterDrawable"

    const-string/jumbo v2, "onBatteryLevelChanged() isSomethingChanged!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void

    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-eq v1, p3, :cond_b

    const/4 v0, 0x1

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_1

    :cond_d
    const/4 v0, 0x0

    goto :goto_2

    :cond_e
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->loadDimens()V

    return-void
.end method

.method public readRenovateMods()V
    .locals 1

    sget v0, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryIconColor:I

    sget v0, Lcom/android/mwilky/Renovate;->mDarkIconColor:I

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkIconColor:I

    return-void
.end method

.method public setBounds(IIII)V
    .locals 4

    sub-int v1, p4, p2

    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    sub-int v1, p3, p1

    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    mul-float v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    return-void
.end method

.method public setColors(FII)V
    .locals 9

    iget v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    float-to-int v4, v4

    float-to-int v7, p1

    if-ne v4, v7, :cond_0

    return-void

    :cond_0
    int-to-float v8, v7

    iput v8, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    iput p2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIconTint:I

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkIconColor:I

    if-nez v7, :cond_1

    iget v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryIconColor:I

    :cond_1
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-boolean v4, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_USB_TYPE_C:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkIconColor:I

    if-nez v7, :cond_2

    iget v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryIconColor:I

    :cond_2
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    iput p2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mChargeColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkIconColor:I

    if-nez v7, :cond_4

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryIconColor:I

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelColor:I

    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundDarkColor:I

    if-nez v7, :cond_5

    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkIconColor:I

    if-nez v7, :cond_6

    iget v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryIconColor:I

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkIconColor:I

    if-nez v7, :cond_7

    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryIconColor:I

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->invalidateSelf()V

    return-void
.end method

.method public setDesktopMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsDesktopMode:Z

    return-void
.end method

.method public updateStatusBarBatteryColour()V
    .locals 13

    const/4 v10, 0x0

    const-class v9, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v9}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v9}, Lcom/android/systemui/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v9, Lcom/android/systemui/BatteryMeterDrawable;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "BatteryMeterDrawable"

    const-string/jumbo v10, "[KNOX] updateStatusBarBatteryColour(), getBatteryLevelColourItem is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget-boolean v9, Lcom/android/systemui/BatteryMeterDrawable;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "BatteryMeterDrawable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[KNOX] updateStatusBarBatteryColour(), StatusbarIconItem="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->getAttributeColourArray()[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    move-result-object v5

    if-eqz v5, :cond_4

    array-length v9, v5

    if-lez v9, :cond_4

    array-length v9, v5

    new-array v7, v9, [I

    array-length v9, v5

    new-array v6, v9, [I

    const/4 v3, 0x0

    array-length v11, v5

    move v9, v10

    :goto_0
    if-ge v9, v11, :cond_3

    aget-object v4, v5, v9

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v10

    aput v10, v7, v3

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getColour()I

    move-result v10

    aput v10, v6, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    array-length v8, v5

    :goto_1
    if-eqz v5, :cond_5

    move v0, v8

    mul-int/lit8 v9, v8, 0x2

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v10, v2, 0x2

    aget v11, v7, v2

    aput v11, v9, v10

    iget-object v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, 0x1

    aget v11, v6, v2

    aput v11, v9, v10

    const-string/jumbo v9, "BatteryMeterDrawable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "=knox_levels[i]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v7, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", knox_colors[i]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v6, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    return-void
.end method
