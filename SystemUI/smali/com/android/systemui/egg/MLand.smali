.class public Lcom/android/systemui/egg/MLand;
.super Landroid/widget/FrameLayout;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/egg/MLand$Building;,
        Lcom/android/systemui/egg/MLand$Cactus;,
        Lcom/android/systemui/egg/MLand$Cloud;,
        Lcom/android/systemui/egg/MLand$GameView;,
        Lcom/android/systemui/egg/MLand$Mountain;,
        Lcom/android/systemui/egg/MLand$Obstacle;,
        Lcom/android/systemui/egg/MLand$Params;,
        Lcom/android/systemui/egg/MLand$Player;,
        Lcom/android/systemui/egg/MLand$Pop;,
        Lcom/android/systemui/egg/MLand$Scenery;,
        Lcom/android/systemui/egg/MLand$Star;,
        Lcom/android/systemui/egg/MLand$Stem;
    }
.end annotation


# static fields
.field static final ANTENNAE:[I

.field static final CACTI:[I

.field public static final DEBUG:Z

.field public static final DEBUG_IDDQD:Z

.field static final EYES:[I

.field static final MOUNTAINS:[I

.field static final MOUTHS:[I

.field private static PARAMS:Lcom/android/systemui/egg/MLand$Params;

.field private static final SKIES:[[I

.field private static dp:F

.field static final hsv:[F

.field static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private dt:F

.field private mAnim:Landroid/animation/TimeAnimator;

.field private mAnimating:Z

.field private final mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCountdown:I

.field private mCurrentPipeId:I

.field private mFlipped:Z

.field private mFrozen:Z

.field private mGameControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mLastPipeTime:F

.field private mObstaclesInPlay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/egg/MLand$Obstacle;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerTracePaint:Landroid/graphics/Paint;

.field private mPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/egg/MLand$Player;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaying:Z

.field private mScene:I

.field private mScoreFields:Landroid/view/ViewGroup;

.field private mSplash:Landroid/view/View;

.field private mTaps:I

.field private mTimeOfDay:I

.field private mTouchPaint:Landroid/graphics/Paint;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWidth:I

.field private t:F


# direct methods
.method static synthetic -get0()Lcom/android/systemui/egg/MLand$Params;
    .locals 1

    sget-object v0, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/egg/MLand;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/egg/MLand;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/egg/MLand;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand;->mHeight:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/egg/MLand;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/egg/MLand;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/egg/MLand;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    return p1
.end method

.method static synthetic -wrap0(I)F
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/egg/MLand;->luma(I)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/egg/MLand;JJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/egg/MLand;->step(JJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const v4, -0xfffff0

    const/4 v3, 0x3

    const-string/jumbo v0, "MLand"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    const-string/jumbo v0, "MLand.iddqd"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const v1, -0x3f3f01

    const v2, -0x5f5f01

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/high16 v1, -0x1000000

    filled-new-array {v4, v1}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, -0xffffc0

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, -0x5f7fe0

    const v2, -0xdfbf80

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/systemui/egg/MLand;->dp:F

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/egg/MLand;->hsv:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/egg/MLand;->sTmpRect:Landroid/graphics/Rect;

    const v0, 0x7f020317

    const v1, 0x7f020318

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/egg/MLand;->ANTENNAE:[I

    const v0, 0x7f020319

    const v1, 0x7f02031a

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/egg/MLand;->EYES:[I

    const v0, 0x7f02031c

    const v1, 0x7f02031d

    const v2, 0x7f02031e

    const v3, 0x7f02031f

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/egg/MLand;->MOUTHS:[I

    const v0, 0x7f020056

    const v1, 0x7f020057

    const v2, 0x7f020058

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/egg/MLand;->CACTI:[I

    const v0, 0x7f020321

    const v1, 0x7f020322

    const v2, 0x7f020323

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/egg/MLand;->MOUNTAINS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/egg/MLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/egg/MLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const v2, -0x7f000001

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    iput v4, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mVibrator:Landroid/os/Vibrator;

    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v3}, Lcom/android/systemui/egg/MLand;->setFocusable(Z)V

    new-instance v0, Lcom/android/systemui/egg/MLand$Params;

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/egg/MLand$Params;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    sget-object v0, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    const/4 v0, 0x3

    invoke-static {v4, v0}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand;->mScene:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/systemui/egg/MLand;->dp:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/egg/MLand;->setLayoutDirection(I)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/egg/MLand;->setupPlayers(I)V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "egg_mland_create"

    invoke-static {v0, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static varargs L(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MLand"

    array-length v1, p1

    if-nez v1, :cond_1

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private addPlayerInternal(Lcom/android/systemui/egg/MLand$Player;)I
    .locals 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b2

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/egg/MLand$Player;->setScoreField(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public static final clamp(F)F
    .locals 3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method private clearPlayers()V
    .locals 2

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->removePlayerInternal(Lcom/android/systemui/egg/MLand$Player;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final frand()F
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static final frand(FF)F
    .locals 1

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v0

    invoke-static {v0, p0, p1}, Lcom/android/systemui/egg/MLand;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static final irand(II)I
    .locals 2

    int-to-float v0, p0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static isGamePad(Landroid/view/InputDevice;)Z
    .locals 5

    const v4, 0x1000010

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    and-int/lit16 v2, v0, 0x401

    const/16 v3, 0x401

    if-eq v2, v3, :cond_0

    and-int v2, v0, v4

    if-ne v2, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final lerp(FFF)F
    .locals 1

    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private static luma(I)F
    .locals 3

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    int-to-float v0, v0

    const v1, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v0, v1

    const/high16 v1, 0x4b7f0000    # 1.671168E7f

    div-float/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    int-to-float v1, v1

    const v2, 0x3f371759    # 0.7152f

    mul-float/2addr v1, v2

    const/high16 v2, 0x477f0000    # 65280.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    int-to-float v1, v1

    const v2, 0x3d93dd98    # 0.0722f

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static pick([I)I
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    aget v0, p0, v0

    return v0
.end method

.method private poke(I)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/egg/MLand;->poke(IFF)V

    return-void
.end method

.method private poke(IFF)V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v1, "poke(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->reset()V

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/systemui/egg/MLand;->start(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->getPlayer(I)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/egg/MLand$Player;->boost(FF)V

    iget v1, p0, Lcom/android/systemui/egg/MLand;->mTaps:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/egg/MLand;->mTaps:I

    sget-boolean v1, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private realignPlayers()V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v4, p0, Lcom/android/systemui/egg/MLand;->mWidth:I

    add-int/lit8 v5, v0, -0x1

    sget-object v6, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v6, v6, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v3, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual {v2, v3}, Lcom/android/systemui/egg/MLand$Player;->setX(F)V

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removePlayerInternal(Lcom/android/systemui/egg/MLand$Player;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/systemui/egg/MLand$Player;->-get2(Lcom/android/systemui/egg/MLand$Player;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    :cond_0
    return-void
.end method

.method public static final rlerp(FFF)F
    .locals 2

    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private step(JJ)V
    .locals 31

    move-wide/from16 v0, p1

    long-to-float v3, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    move-wide/from16 v0, p3

    long-to-float v3, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->dt:F

    sget-boolean v3, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->dt:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->dt:F

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getChildCount()I

    move-result v2

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v2, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/MLand;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/systemui/egg/MLand$GameView;

    if-eqz v3, :cond_1

    move-object/from16 v3, v29

    check-cast v3, Lcom/android/systemui/egg/MLand$GameView;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/egg/MLand;->t:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/egg/MLand;->dt:F

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v3 .. v9}, Lcom/android/systemui/egg/MLand$GameView;->step(JJFF)V

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-eqz v3, :cond_c

    const/16 v17, 0x0

    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/MLand;->getPlayer(I)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->-get0(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Player;->below(I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/egg/MLand;->poke(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    :cond_3
    :goto_2
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    move/from16 v16, v15

    :goto_3
    add-int/lit8 v15, v16, -0x1

    if-lez v16, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/egg/MLand$Obstacle;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Obstacle;->intersects(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    if-eqz v3, :cond_7

    :cond_4
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Obstacle;->cleared(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/systemui/egg/MLand$Stem;

    if-eqz v3, :cond_5

    check-cast v19, Lcom/android/systemui/egg/MLand$Stem;

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/systemui/egg/MLand$Stem;->id:I

    move/from16 v0, v18

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    :cond_5
    :goto_4
    move/from16 v16, v15

    goto :goto_3

    :cond_6
    const-string/jumbo v3, "player %d hit the floor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v4, 0x50

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4, v5}, Lcom/android/systemui/egg/MLand;->thump(IJ)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->die()V

    goto :goto_2

    :cond_7
    const-string/jumbo v3, "player hit an obstacle"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v4, 0x50

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4, v5}, Lcom/android/systemui/egg/MLand;->thump(IJ)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->die()V

    goto :goto_4

    :cond_8
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->-get1(Lcom/android/systemui/egg/MLand$Player;)I

    move-result v3

    move/from16 v0, v18

    if-le v0, v3, :cond_9

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/android/systemui/egg/MLand$Player;->-wrap0(Lcom/android/systemui/egg/MLand$Player;I)V

    :cond_9
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->-get0(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_a

    add-int/lit8 v17, v17, 0x1

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_b
    if-nez v17, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->stop()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "egg_mland_taps"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/egg/MLand;->mTaps:I

    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->mTaps:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v24, 0x0

    :goto_5
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "egg_mland_score"

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->getScore()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    :goto_6
    add-int/lit8 v12, v13, -0x1

    if-lez v13, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/MLand;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/systemui/egg/MLand$Obstacle;

    if-eqz v3, :cond_d

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/MLand;->removeViewAt(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_c
    :goto_7
    move v13, v12

    goto :goto_6

    :cond_d
    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/systemui/egg/MLand$Scenery;

    if-eqz v3, :cond_c

    move-object/from16 v26, v29

    check-cast v26, Lcom/android/systemui/egg/MLand$Scenery;

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTranslationX()F

    move-result v3

    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/systemui/egg/MLand$Scenery;->w:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mLastPipeTime:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->mLastPipeTime:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    add-int v20, v3, v4

    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v14, v3, 0x2

    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v30, v3, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xfa

    invoke-static {v3, v4}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v10

    new-instance v27, Lcom/android/systemui/egg/MLand$Stem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sub-int v4, v20, v30

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/systemui/egg/MLand$Stem;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;FZ)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    float-to-int v5, v5

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    add-int/2addr v3, v14

    int-to-float v3, v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    neg-float v3, v3

    move/from16 v0, v30

    int-to-float v4, v0

    sub-float/2addr v3, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v10

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v22, Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/egg/MLand$Pop;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleX(F)V

    const/high16 v3, -0x41800000    # -0.25f

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleY(F)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    int-to-float v5, v14

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v10

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/16 v4, 0xfa

    invoke-static {v3, v4}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v11

    new-instance v28, Lcom/android/systemui/egg/MLand$Stem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    sub-int v4, v4, v20

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v4, v5

    sub-int v4, v4, v30

    int-to-float v4, v4

    const/4 v5, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/systemui/egg/MLand$Stem;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;FZ)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    float-to-int v5, v5

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    add-int/2addr v3, v14

    int-to-float v3, v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    add-int v3, v3, v30

    int-to-float v3, v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v11

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v23, Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/egg/MLand$Pop;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v3, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleX(F)V

    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleY(F)V

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    sub-float/2addr v4, v5

    move/from16 v0, v30

    int-to-float v5, v0

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v11

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->invalidate()V

    return-void
.end method

.method private thump(IJ)V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v2

    long-to-float v3, p2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-long v4, v3

    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mVibrator:Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v2, p2, p3, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void
.end method

.method private unpoke(I)V
    .locals 5

    const-string/jumbo v1, "unboost(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->getPlayer(I)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand$Player;->unboost()V

    return-void
.end method


# virtual methods
.method public addPlayer()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/egg/MLand$Player;->create(Lcom/android/systemui/egg/MLand;)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->addPlayerInternal(Lcom/android/systemui/egg/MLand$Player;)I

    return-void
.end method

.method public getControllerPlayer(I)I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    return v3

    :cond_1
    return v0
.end method

.method public getGameControllers()Ljava/util/ArrayList;
    .locals 7

    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v2, v3

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/egg/MLand;->isGamePad(Landroid/view/InputDevice;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    return-object v3
.end method

.method public getGameTime()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand;->t:F

    return v0
.end method

.method public getNumPlayers()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPlayer(I)Lcom/android/systemui/egg/MLand$Player;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideSplash()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/egg/MLand$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/egg/MLand$3;-><init>(Lcom/android/systemui/egg/MLand;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/systemui/egg/MLand;->dp:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand;->start(Z)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/egg/MLand$Player;

    invoke-static {v9}, Lcom/android/systemui/egg/MLand$Player;->-get3(Lcom/android/systemui/egg/MLand$Player;)F

    move-result v2

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    iget v7, v9, Lcom/android/systemui/egg/MLand$Player;->color:I

    const v11, -0x7f000001

    and-int/2addr v7, v11

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    iget v7, v9, Lcom/android/systemui/egg/MLand$Player;->color:I

    const v11, -0x7f000001

    and-int/2addr v7, v11

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v9}, Lcom/android/systemui/egg/MLand$Player;->-get3(Lcom/android/systemui/egg/MLand$Player;)F

    move-result v3

    invoke-static {v9}, Lcom/android/systemui/egg/MLand$Player;->-get4(Lcom/android/systemui/egg/MLand$Player;)F

    move-result v4

    const/high16 v2, 0x42c80000    # 100.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v9}, Lcom/android/systemui/egg/MLand$Player;->getX()F

    move-result v2

    invoke-virtual {v9}, Lcom/android/systemui/egg/MLand$Player;->getPivotX()F

    move-result v7

    add-float v5, v2, v7

    invoke-virtual {v9}, Lcom/android/systemui/egg/MLand$Player;->getY()F

    move-result v2

    invoke-virtual {v9}, Lcom/android/systemui/egg/MLand$Player;->getPivotY()F

    move-result v7

    add-float v6, v2, v7

    sub-float v2, v5, v3

    float-to-double v12, v2

    sub-float v2, v6, v4

    float-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    double-to-float v2, v12

    const v7, 0x3fc90fdb

    sub-float v8, v7, v2

    float-to-double v12, v3

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v3, v12

    float-to-double v12, v4

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v4, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "generic: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "keyDown: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_0

    return v4

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand;->getControllerPlayer(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->poke(I)V

    return v5

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "keyDown: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_0

    return v4

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand;->getControllerPlayer(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    return v5

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/systemui/egg/MLand;->dp:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->stop()V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand;->start(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v4, "touch: %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v2, v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    iget-boolean v4, p0, Lcom/android/systemui/egg/MLand;->mFlipped:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int v1, v4, v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    return v7

    :pswitch_1
    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/egg/MLand;->poke(IFF)V

    return v6

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    return v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "trackball: %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/systemui/egg/MLand;->poke(I)V

    return v3

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removePlayer()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->removePlayerInternal(Lcom/android/systemui/egg/MLand$Player;)V

    return-void
.end method

.method public reset()V
    .locals 30

    const-string/jumbo v25, "reset"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v21, Landroid/graphics/drawable/GradientDrawable;

    sget-object v25, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v26, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/16 v25, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v25

    const/high16 v26, 0x3f000000    # 0.5f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_1

    const/16 v25, 0x1

    :goto_0
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/egg/MLand;->mFlipped:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/egg/MLand;->mFlipped:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    const/16 v25, -0x1

    :goto_1
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->setScaleX(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getChildCount()I

    move-result v10

    move v11, v10

    :goto_2
    add-int/lit8 v10, v11, -0x1

    if-lez v11, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/egg/MLand;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/systemui/egg/MLand$GameView;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/egg/MLand;->removeViewAt(I)V

    :cond_0
    move v11, v10

    goto :goto_2

    :cond_1
    const/16 v25, 0x0

    goto :goto_0

    :cond_2
    const/16 v25, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getWidth()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/egg/MLand;->mWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getHeight()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/egg/MLand;->mHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    :cond_4
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fd0000000000000L    # 0.25

    cmpl-double v25, v26, v28

    if-lez v25, :cond_9

    const/16 v25, 0x1

    :goto_3
    move/from16 v20, v25

    :goto_4
    if-eqz v20, :cond_5

    new-instance v22, Lcom/android/systemui/egg/MLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Star;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    const v25, 0x7f0206fe

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Star;->setBackgroundResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d042a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    move/from16 v26, v0

    sub-int v26, v26, v24

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Star;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    if-nez v25, :cond_b

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x3f28f5c3    # 0.66f

    mul-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Star;->setTranslationY(F)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_5
    new-instance v25, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    :cond_6
    const/4 v8, 0x1

    :goto_6
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v9

    if-eqz v8, :cond_d

    const/high16 v25, 0x3f400000    # 0.75f

    cmpg-float v25, v9, v25

    if-gez v25, :cond_d

    :goto_7
    new-instance v14, Lcom/android/systemui/egg/MLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/egg/MLand$Star;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    const v25, 0x7f020320

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/systemui/egg/MLand$Star;->setBackgroundResource(I)V

    invoke-virtual {v14}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    if-eqz v8, :cond_e

    const/16 v25, 0xff

    :goto_8
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    cmpl-double v25, v26, v28

    if-lez v25, :cond_f

    const/16 v25, -0x1

    :goto_9
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/systemui/egg/MLand$Star;->setScaleX(F)V

    invoke-virtual {v14}, Lcom/android/systemui/egg/MLand$Star;->getScaleX()F

    move-result v25

    const/high16 v26, 0x40a00000    # 5.0f

    const/high16 v27, 0x41f00000    # 30.0f

    invoke-static/range {v26 .. v27}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v26

    mul-float v25, v25, v26

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/systemui/egg/MLand$Star;->setRotation(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d042a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    move/from16 v26, v0

    sub-int v26, v26, v24

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/systemui/egg/MLand$Star;->setTranslationX(F)V

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    sub-int v26, v26, v24

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/systemui/egg/MLand$Star;->setTranslationY(F)V

    new-instance v25, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v25, v0

    div-int/lit8 v13, v25, 0x6

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fd0000000000000L    # 0.25

    cmpg-double v25, v26, v28

    if-gez v25, :cond_10

    const/4 v7, 0x1

    :goto_a
    const/16 v4, 0x14

    const/4 v10, 0x0

    :goto_b
    const/16 v25, 0x14

    move/from16 v0, v25

    if-ge v10, v0, :cond_17

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3fd3333333333333L    # 0.3

    cmpg-double v25, v26, v28

    if-gez v25, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    if-eqz v25, :cond_11

    new-instance v19, Lcom/android/systemui/egg/MLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Star;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    :cond_8
    :goto_c
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/egg/MLand$Scenery;->w:I

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/egg/MLand$Scenery;->h:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v12, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/systemui/egg/MLand$Building;

    move/from16 v25, v0

    if-eqz v25, :cond_15

    const/16 v25, 0x50

    move/from16 v0, v25

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    move/from16 v26, v0

    iget v0, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Scenery;->setTranslationX(F)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_b

    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_3

    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const v26, 0x3f28f5c3    # 0.66f

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    sub-int v26, v26, v24

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Star;->setTranslationY(F)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const v26, -0x3f008000    # -7.984375f

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/16 :goto_5

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_d
    const/high16 v25, 0x3f000000    # 0.5f

    cmpg-float v25, v9, v25

    if-gez v25, :cond_7

    goto/16 :goto_7

    :cond_e
    const/16 v25, 0x80

    goto/16 :goto_8

    :cond_f
    const/16 v25, 0x1

    goto/16 :goto_9

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_11
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3fe3333333333333L    # 0.6

    cmpg-double v25, v26, v28

    if-gez v25, :cond_12

    if-eqz v7, :cond_14

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mScene:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    new-instance v19, Lcom/android/systemui/egg/MLand$Building;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Building;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    :goto_e
    int-to-float v0, v10

    move/from16 v25, v0

    const/high16 v26, 0x41a00000    # 20.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    move/from16 v25, v0

    const v26, 0x3f59999a    # 0.85f

    mul-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/egg/MLand$Scenery;->v:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mScene:I

    move/from16 v25, v0

    if-nez v25, :cond_13

    const v25, -0x777778

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Scenery;->setBackgroundColor(I)V

    sget-object v25, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->BUILDING_HEIGHT_MIN:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v0, v13}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/egg/MLand$Scenery;->h:I

    :cond_13
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    move/from16 v25, v0

    const/high16 v26, 0x437f0000    # 255.0f

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v6, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/egg/MLand$Scenery;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v25

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_c

    :cond_14
    new-instance v19, Lcom/android/systemui/egg/MLand$Cloud;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Cloud;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    goto/16 :goto_c

    :pswitch_0
    new-instance v19, Lcom/android/systemui/egg/MLand$Mountain;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Mountain;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    goto/16 :goto_e

    :pswitch_1
    new-instance v19, Lcom/android/systemui/egg/MLand$Cactus;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Cactus;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    goto/16 :goto_e

    :cond_15
    const/16 v25, 0x30

    move/from16 v0, v25

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v17

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/systemui/egg/MLand$Star;

    move/from16 v25, v0

    if-eqz v25, :cond_16

    mul-float v25, v17, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_d

    :cond_16
    mul-float v25, v17, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v25, v26, v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_d

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_18

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/egg/MLand$Player;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;)V

    invoke-virtual {v15}, Lcom/android/systemui/egg/MLand$Player;->reset()V

    goto :goto_f

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    move-object/from16 v25, v0

    if-eqz v25, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/animation/TimeAnimator;->cancel()V

    :cond_19
    new-instance v25, Landroid/animation/TimeAnimator;

    invoke-direct/range {v25 .. v25}, Landroid/animation/TimeAnimator;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/systemui/egg/MLand$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/egg/MLand$1;-><init>(Lcom/android/systemui/egg/MLand;)V

    invoke-virtual/range {v25 .. v26}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setScoreFieldHolder(Landroid/view/ViewGroup;)V
    .locals 8

    iput-object p1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(J)V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/egg/MLand$Player;

    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/egg/MLand$Player;->-get2(Lcom/android/systemui/egg/MLand$Player;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSplash(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    return-void
.end method

.method public setupPlayers(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->clearPlayers()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/egg/MLand$Player;->create(Lcom/android/systemui/egg/MLand;)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/egg/MLand;->addPlayerInternal(Lcom/android/systemui/egg/MLand$Player;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showSplash()V
    .locals 8

    const v7, 0x7f130266

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v1, 0x7f130267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v1, 0x7f130268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public start(Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "start(startPlaying=%s)"

    new-array v6, v8, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string/jumbo v4, "true"

    :goto_0
    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget v4, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->showSplash()V

    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v5, 0x7f130266

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v5, 0x7f130267

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v5, 0x7f130268

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    const/4 v4, 0x3

    iput v4, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    new-instance v4, Lcom/android/systemui/egg/MLand$2;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/egg/MLand$2;-><init>(Lcom/android/systemui/egg/MLand;Landroid/widget/TextView;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/egg/MLand;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/systemui/egg/MLand$Player;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "false"

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v4}, Landroid/animation/TimeAnimator;->start()V

    iput-boolean v8, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    :cond_3
    return-void
.end method

.method public startPlaying()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/egg/MLand;->t:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getGameTime()F

    move-result v3

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/egg/MLand;->mLastPipeTime:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->hideSplash()V

    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    iput v6, p0, Lcom/android/systemui/egg/MLand;->mTaps:I

    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "egg_mland_players"

    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual {v2, v6}, Lcom/android/systemui/egg/MLand$Player;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/android/systemui/egg/MLand$Player;->reset()V

    invoke-virtual {v2}, Lcom/android/systemui/egg/MLand$Player;->start()V

    invoke-virtual {v2, v5, v5}, Lcom/android/systemui/egg/MLand$Player;->boost(FF)V

    invoke-virtual {v2}, Lcom/android/systemui/egg/MLand$Player;->unboost()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 6

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v2}, Landroid/animation/TimeAnimator;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    iput-boolean v3, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    iput-boolean v3, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    sget-object v2, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    const/4 v2, 0x3

    invoke-static {v3, v2}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/egg/MLand;->mScene:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand$Player;->die()V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/egg/MLand$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/egg/MLand$4;-><init>(Lcom/android/systemui/egg/MLand;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/systemui/egg/MLand;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public willNotDraw()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
