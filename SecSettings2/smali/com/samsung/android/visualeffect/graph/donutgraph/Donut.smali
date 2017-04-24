.class public Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;
.super Landroid/view/View;
.source "Donut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;
    }
.end annotation


# instance fields
.field private addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

.field private afterPie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;"
        }
    .end annotation
.end field

.field private backDonutPaint:Landroid/graphics/Paint;

.field private bmp:Landroid/graphics/Bitmap;

.field private cleanAnimator:Landroid/animation/ValueAnimator;

.field private cleanSweepAngle:F

.field private deltaAnimator:Landroid/animation/ValueAnimator;

.field private donutBitmap:Landroid/graphics/Bitmap;

.field private donutBottom:I

.field private donutCanvas:Landroid/graphics/Canvas;

.field private donutLeft:I

.field private donutPaint:Landroid/graphics/Paint;

.field private donutRadius:I

.field private donutRight:I

.field private donutTop:I

.field private drawBackgroundCircle:Z

.field private foldAnimator:Landroid/animation/ValueAnimator;

.field private isAnimateClean:Z

.field private isCleanPiePhase:Z

.field private isFoldReverse:Z

.field private isFoldnSpread:Z

.field private isLineAnimatorCanceled:Z

.field private isSpreadReverse:Z

.field private lineAnimator:Landroid/animation/ValueAnimator;

.field private lineBottom:I

.field private lineCallbackListener:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

.field private lineColor:Ljava/lang/String;

.field private lineLeft:I

.field private linePaint:Landroid/graphics/Paint;

.field private lineRight:I

.field private lineTop:I

.field private lineValue:F

.field private lineWidth:F

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mIsDirectionRTL:Z

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mLinePath:Landroid/graphics/Path;

.field private final mirrorCanvas:Landroid/graphics/Canvas;

.field private mirroredBmp:Landroid/graphics/Bitmap;

.field private pointAnimator:Landroid/animation/ValueAnimator;

.field private pointPaint:Landroid/graphics/Paint;

.field private pointRadius:F

.field private pointValue:F

.field private rectf:Landroid/graphics/RectF;

.field private spreadAnimator:Landroid/animation/ValueAnimator;

.field private thisPie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;"
        }
    .end annotation
.end field

.field private xf:Landroid/graphics/Xfermode;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldReverse:Z

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldnSpread:Z

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isLineAnimatorCanceled:Z

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I

    return v0
.end method

.method static synthetic -get17(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    return v0
.end method

.method static synthetic -get19(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBottom:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRight:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isLineAnimatorCanceled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->AnimateDonutDelta(F)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Ljava/util/ArrayList;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->AnimateDonut(Ljava/util/ArrayList;FZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->animateCleanPie(F)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelPointnLineAnimator()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setLineCallback()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldReverse:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldnSpread:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isLineAnimatorCanceled:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isAnimateClean:Z

    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    const-string/jumbo v0, "#105E7A"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointRadius:F

    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F

    const-string/jumbo v0, "secVisualEffect_Donut"

    const-string/jumbo v1, "Donut(context, left, top, radius)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I

    iput p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    iput p3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    iput p3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    mul-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRight:I

    mul-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p3

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBottom:I

    iput p4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0608

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointRadius:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0609

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    mul-int/lit8 v0, p4, 0x2

    mul-int/lit8 v1, p4, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/RectF;

    mul-int/lit8 v1, p4, 0x2

    int-to-float v1, v1

    mul-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->rectf:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->xf:Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->xf:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setLayerType(ILandroid/graphics/Paint;)V

    mul-int/lit8 v0, p4, 0x2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->loadImageDrawable(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setAnimator()V

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRight:I

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method private AnimateDonut(Ljava/util/ArrayList;FZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;FZ)V"
        }
    .end annotation

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    if-eqz p3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalStartAngle()F

    move-result v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v1

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_0

    add-float/2addr v1, v6

    :cond_0
    :goto_2
    mul-float v3, p2, v0

    mul-float v4, p2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setStartAngle(F)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setSweepAngle(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getReverseStartAngle()F

    move-result v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getReverseSweepAngle()F

    move-result v1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_0

    sub-float/2addr v1, v6

    goto :goto_2

    :cond_3
    return-void
.end method

.method private AnimateDonutDelta(F)V
    .locals 12

    const/4 v11, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v2

    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v0

    sub-float v6, v10, p1

    sub-float v7, v0, v2

    mul-float/2addr v6, v7

    add-float v4, v2, v6

    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setSweepAngle(F)V

    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v11, :cond_0

    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v11, :cond_0

    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v1

    sub-float v6, v10, p1

    sub-float v7, v1, v3

    mul-float/2addr v6, v7

    add-float v5, v3, v6

    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    iget-object v7, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v7}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getStartAngle()F

    move-result v7

    add-float/2addr v7, v4

    invoke-virtual {v6, v7}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setStartAngle(F)V

    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6, v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setSweepAngle(F)V

    :cond_0
    return-void
.end method

.method private animateCleanPie(F)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isAnimateClean:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setFinalSweepAngle(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method private calculateLineInvalidate()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineX()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    if-le v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    if-ge v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private cancelAllAnimator()V
    .locals 2

    const-string/jumbo v0, "secVisualEffect_Donut"

    const-string/jumbo v1, "cancelAllAnimator"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->initializeDisplay()V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelPointnLineAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->initializeDisplay()V

    return-void
.end method

.method private drawAddedPie(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;)V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalStartAngle()F

    move-result v0

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v2, v0, v2

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getSweepAngle()F

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v10, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterX()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    add-int v8, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterY()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    add-int v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineX()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v12

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v2

    const/high16 v3, 0x42f00000    # 120.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    const/4 v3, 0x0

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterX(FF)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    add-int v8, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    const/4 v3, 0x0

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterY(FF)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    add-int v9, v2, v3

    :cond_0
    const/4 v2, -0x1

    if-eq v11, v2, :cond_1

    const/4 v2, -0x1

    if-ne v12, v2, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_2
    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    int-to-float v2, v8

    sub-int v3, v12, v9

    int-to-double v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v3, v0

    add-float v13, v2, v3

    int-to-float v14, v12

    sub-int v2, v11, v8

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    mul-float/2addr v2, v3

    int-to-float v3, v8

    add-float v5, v2, v3

    if-lt v12, v9, :cond_3

    int-to-float v2, v9

    sub-int v3, v11, v8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    mul-float/2addr v3, v4

    float-to-double v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v3, v0

    add-float v6, v2, v3

    :goto_2
    cmpg-float v2, v5, v13

    if-gez v2, :cond_4

    int-to-float v3, v8

    int-to-float v4, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    int-to-float v2, v9

    sub-int v3, v11, v8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    mul-float/2addr v3, v4

    float-to-double v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v3, v0

    sub-float v6, v2, v3

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    int-to-float v3, v8

    int-to-float v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    int-to-float v3, v12

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method private drawPie(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->rectf:Landroid/graphics/RectF;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getStartAngle()F

    move-result v0

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v2, v0, v2

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getSweepAngle()F

    move-result v3

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawPoint(Ljava/lang/String;)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/high16 v6, 0x42f00000    # 120.0f

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineX()I

    move-result v1

    if-eq v1, v8, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v1

    if-ne v1, v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v1

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1, v7, v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterX(FF)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1, v7, v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterY(FF)I

    move-result v1

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointRadius:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterX()I

    move-result v1

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterY()I

    move-result v1

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointRadius:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private initializeDisplay()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    return-void
.end method

.method private loadImageDrawable(Landroid/content/Context;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020433

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private playFoldAnimator()V
    .locals 4

    const-string/jumbo v0, "secVisualEffect_Donut"

    const-string/jumbo v1, "playFoldAnimator"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method private playSpreadAnimator()V
    .locals 4

    const-string/jumbo v0, "secVisualEffect_Donut"

    const-string/jumbo v1, "playSpreadAnimator"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method private setAnimator()V
    .locals 5

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x2

    const-string/jumbo v0, "secVisualEffect_Donut"

    const-string/jumbo v1, "setAnimator"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$2;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseIn;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseIn;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v4, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$5;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$6;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v4, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$7;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$8;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v4, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$9;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v4, [F

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setBackgroundDonut(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getColorValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getColorValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private setLineCallback()V
    .locals 3

    const-string/jumbo v0, "secVisualEffect_Donut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lineCallbackListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineCallbackListener:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineCallbackListener:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineCallbackListener:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;->onLineFinished()V

    :cond_0
    return-void
.end method

.method private startAnimator(Landroid/animation/Animator;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public drawDonutWithoutAnimation(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v4, "secVisualEffect_Donut"

    const-string/jumbo v5, "drawDonutWithoutAnimation"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAllAnimator()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalStartAngle()F

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v3

    invoke-virtual {v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setStartAngle(F)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setSweepAngle(F)V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    iget v7, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mIsDirectionRTL:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v4, v4

    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPie(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPoint(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawAddedPie(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mImageBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawLine(Landroid/graphics/Canvas;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPie(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPoint(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawAddedPie(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mImageBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawLine(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public playPointAnimator()V
    .locals 5

    const-string/jumbo v3, "secVisualEffect_Donut"

    const-string/jumbo v4, "playPointAnimator"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->hasLine()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelPointnLineAnimator()V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->calculateLineInvalidate()V

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method public registerLineCallbackListener(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineCallbackListener:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

    return-void
.end method

.method public setDirectionRTL(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mIsDirectionRTL:Z

    return-void
.end method

.method public setLayoutDimension(II)V
    .locals 3

    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLayoutWidth:I

    iput p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLayoutHeight:I

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLayoutWidth:I

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLayoutHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setLineColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    return-void
.end method

.method public startAnimatorFoldnSpread(Ljava/util/ArrayList;Ljava/util/ArrayList;ZJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;ZJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "secVisualEffect_Donut"

    const-string/jumbo v1, "startAnimatorFoldnSpread"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldnSpread:Z

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAllAnimator()V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    invoke-direct {p0, p3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setBackgroundDonut(Z)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseIn;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseIn;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    if-eqz p3, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldReverse:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->playFoldAnimator()V

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldReverse:Z

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z

    goto :goto_0
.end method

.method public startAnimatorSpread(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v0, "secVisualEffect_Donut"

    const-string/jumbo v1, "startAnimatorSpread"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldnSpread:Z

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAllAnimator()V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseInOut;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->playSpreadAnimator()V

    return-void
.end method
