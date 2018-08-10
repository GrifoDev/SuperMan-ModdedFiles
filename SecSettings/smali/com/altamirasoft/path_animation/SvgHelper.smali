.class public Lcom/altamirasoft/path_animation/SvgHelper;
.super Ljava/lang/Object;
.source "SvgHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;
    }
.end annotation


# instance fields
.field private final mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourcePaint:Landroid/graphics/Paint;

.field private mSvg:Lcom/caverock/androidsvg/SVG;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mPaths:Ljava/util/List;

    iput-object p1, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mSourcePaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$000(Lcom/altamirasoft/path_animation/SvgHelper;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mSourcePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/altamirasoft/path_animation/SvgHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mPaths:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getPathsForViewport(II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/altamirasoft/path_animation/SvgHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/altamirasoft/path_animation/SvgHelper$1;-><init>(Lcom/altamirasoft/path_animation/SvgHelper;II)V

    iget-object v3, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->getDocumentViewBox()Landroid/graphics/RectF;

    move-result-object v2

    int-to-float v3, p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    int-to-float v4, p2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v3, p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    int-to-float v4, p2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v3, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mPaths:Ljava/util/List;

    return-object v3
.end method

.method public load(Landroid/content/Context;I)V
    .locals 3

    iget-object v1, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Lcom/caverock/androidsvg/SVG;->getFromResource(Landroid/content/Context;I)Lcom/caverock/androidsvg/SVG;

    move-result-object v1

    iput-object v1, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio;->UNSCALED:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->setDocumentPreserveAspectRatio(Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SVG"

    const-string/jumbo v2, "Could not load specified SVG resource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
