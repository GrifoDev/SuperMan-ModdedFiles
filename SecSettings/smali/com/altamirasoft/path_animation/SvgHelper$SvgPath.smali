.class public Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;
.super Ljava/lang/Object;
.source "SvgHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/altamirasoft/path_animation/SvgHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SvgPath"
.end annotation


# static fields
.field private static final sMaxClip:Landroid/graphics/Region;

.field private static final sRegion:Landroid/graphics/Region;


# instance fields
.field final bounds:Landroid/graphics/Rect;

.field final length:F

.field final measure:Landroid/graphics/PathMeasure;

.field final paint:Landroid/graphics/Paint;

.field final path:Landroid/graphics/Path;

.field final renderPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v2, 0x7fffffff

    const/high16 v1, -0x80000000

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    sput-object v0, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->sRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Region;-><init>(IIII)V

    sput-object v0, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->sMaxClip:Landroid/graphics/Region;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->renderPath:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->path:Landroid/graphics/Path;

    iput-object p2, p0, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->measure:Landroid/graphics/PathMeasure;

    iget-object v0, p0, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->measure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iput v0, p0, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->length:F

    sget-object v0, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->sRegion:Landroid/graphics/Region;

    sget-object v1, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->sMaxClip:Landroid/graphics/Region;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    sget-object v0, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->sRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->bounds:Landroid/graphics/Rect;

    return-void
.end method
