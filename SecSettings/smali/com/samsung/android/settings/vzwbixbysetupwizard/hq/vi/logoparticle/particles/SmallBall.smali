.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;
.super Ljava/lang/Object;
.source "SmallBall.java"


# static fields
.field private static COEFFICIENT_OF_RESTITUTION:F


# instance fields
.field private final EMIT_ANGLE_COMPLETE:F

.field private final EMIT_ANGLE_NORMAL:F

.field private final EMIT_ANGLE_THUMBSUP:F

.field private final INITIAL_Y_VELOCITY:F

.field private final LIFETIME_COMPLETE:F

.field private final LIFETIME_ERROR:F

.field private final LIFETIME_FAST_ATTRACTION:F

.field private final LIFETIME_LAUNCH:F

.field private final LIFETIME_NORMAL:F

.field private final LIFETIME_SLOW_ATTRACTION:F

.field private final LIFETIME_THUMBDOWN:F

.field private final LIFETIME_THUMBUP:F

.field private final MAX_VELOCITY_FAST_ATTRACTION:F

.field private final MAX_VELOCITY_SLOW_ATTRACTION:F

.field private final MIN_VELOCITY_FAST_ATTRACTION:F

.field private final MIN_VELOCITY_SLOW_ATTRACTION:F

.field private VELOCITY_ERROR:F

.field private VELOCITY_LAUNCH:F

.field private VELOCITY_NORMAL:F

.field private VELOCITY_THUMBUP:F

.field public mAlpha:I

.field public mAngle:F

.field mContext:Landroid/content/Context;

.field public mCurrentLifeTime:F

.field private mGravity:F

.field public mInitSize:F

.field public mIsMetaball:Z

.field public mLifeTime:F

.field public mOAlpha:I

.field public mOsize:F

.field public mOx:F

.field public mOy:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field public mSize:F

.field public mVelocity:F

.field public mVelocityX:F

.field public mVelocityY:F

.field public mX:F

.field public mY:F

.field particleType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    sput v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->COEFFICIENT_OF_RESTITUTION:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFFIZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;-><init>(Landroid/content/Context;FFFZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07088b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, p2

    mul-double/2addr v2, v4

    double-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mOsize:F

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mSize:F

    iput p2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mInitSize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFFIZZ)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;-><init>(Landroid/content/Context;FFFIZ)V

    if-eqz p7, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->getRandomColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFFZ)V
    .locals 6

    const/high16 v5, 0x42f00000    # 120.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v1, 0x44960000    # 1200.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->VELOCITY_NORMAL:F

    const/high16 v0, 0x43be0000    # 380.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->VELOCITY_THUMBUP:F

    iput v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->VELOCITY_ERROR:F

    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->VELOCITY_LAUNCH:F

    const v0, 0x44a28000    # 1300.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->LIFETIME_NORMAL:F

    const/high16 v0, 0x44e10000    # 1800.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->LIFETIME_COMPLETE:F

    const/high16 v0, 0x44fa0000    # 2000.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->LIFETIME_THUMBUP:F

    const/high16 v0, 0x442f0000    # 700.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->LIFETIME_THUMBDOWN:F

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->LIFETIME_ERROR:F

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->LIFETIME_LAUNCH:F

    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->EMIT_ANGLE_THUMBSUP:F

    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->EMIT_ANGLE_COMPLETE:F

    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->EMIT_ANGLE_NORMAL:F

    iput v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->INITIAL_Y_VELOCITY:F

    const/high16 v0, 0x43a00000    # 320.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->MAX_VELOCITY_SLOW_ATTRACTION:F

    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->MIN_VELOCITY_SLOW_ATTRACTION:F

    iput v5, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->MAX_VELOCITY_FAST_ATTRACTION:F

    iput v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->MIN_VELOCITY_FAST_ATTRACTION:F

    const v0, 0x44bb8000    # 1500.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->LIFETIME_SLOW_ATTRACTION:F

    const/high16 v0, 0x43e10000    # 450.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->LIFETIME_FAST_ATTRACTION:F

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mLifeTime:F

    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAngle:F

    iput v5, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mVelocity:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mOAlpha:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mGravity:F

    iput v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mCurrentLifeTime:F

    iput v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mVelocityY:F

    iput v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mVelocityX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->particleType:I

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mOx:F

    iput p3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mX:F

    iput p4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mOy:F

    iput p4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mY:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07088f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->VELOCITY_NORMAL:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070890

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->VELOCITY_THUMBUP:F

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->VELOCITY_NORMAL:F

    float-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->VELOCITY_NORMAL:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mVelocity:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAngle:F

    if-eqz p5, :cond_0

    const/16 v0, 0xff

    :goto_0
    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mOAlpha:I

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAlpha:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mPath:Landroid/graphics/Path;

    iput p2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mInitSize:F

    iput p2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mOsize:F

    iput p2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mSize:F

    iput-boolean p5, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mIsMetaball:Z

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x405fe00000000000L    # 127.5

    mul-double/2addr v0, v2

    const-wide v2, 0x4053200000000000L    # 76.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;FFFZZ)V
    .locals 2

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;-><init>(Landroid/content/Context;FFFZ)V

    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->getRandomColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method private static getRandomColor()I
    .locals 5

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4f

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0xa9

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit16 v3, v3, 0xbd

    const/16 v4, 0xff

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->particleType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mX:F

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mY:F

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mSize:F

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getCenterX()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mY:F

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mSize:F

    return v0
.end method

.method public isAlived()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mCurrentLifeTime:F

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mLifeTime:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMetaball()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mIsMetaball:Z

    return v0
.end method

.method public startBixbySaying()V
    .locals 10

    const-wide v8, 0x4094500000000000L    # 1300.0

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->VELOCITY_NORMAL:F

    float-to-double v2, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->VELOCITY_NORMAL:F

    float-to-double v6, v1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mVelocity:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAngle:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v8

    add-double/2addr v2, v8

    double-to-float v1, v2

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mLifeTime:F

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07088b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mInitSize:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mOsize:F

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mSize:F

    const/16 v1, 0xff

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAlpha:I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->DECCELATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mLifeTime:F

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$1;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startComplete(IF)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide v4, 0x4046800000000000L    # 45.0

    move v0, p2

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAngle:F

    :cond_0
    :goto_0
    float-to-double v2, p2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p2, v6

    float-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mVelocity:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x409c200000000000L    # 1800.0

    mul-double/2addr v2, v4

    const-wide v4, 0x408c200000000000L    # 900.0

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mLifeTime:F

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    new-array v2, v10, [F

    const/4 v3, 0x0

    aput v3, v2, v8

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v9

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->PARTICLE_MOVE_COMPLETE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mLifeTime:F

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    if-ne p1, v9, :cond_2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x42340000    # 45.0f

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAngle:F

    goto :goto_0

    :cond_2
    if-ne p1, v10, :cond_3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAngle:F

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x43070000    # 135.0f

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAngle:F

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x43340000    # 180.0f

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAngle:F

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x43610000    # 225.0f

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAngle:F

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x6

    if-ne p1, v2, :cond_7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x43870000    # 270.0f

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAngle:F

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x7

    if-ne p1, v2, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const v3, 0x439d8000    # 315.0f

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAngle:F

    goto/16 :goto_0
.end method
