.class public Landroid/graphics/NinePatch$InsetStruct;
.super Ljava/lang/Object;
.source "NinePatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/NinePatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsetStruct"
.end annotation


# instance fields
.field public final opticalRect:Landroid/graphics/Rect;

.field public final outlineAlpha:F

.field public final outlineRadius:F

.field public final outlineRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(IIIIIIIIFIF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p11}, Landroid/graphics/Rect;->scale(F)V

    invoke-static {p5, p6, p7, p8, p11}, Landroid/graphics/NinePatch$InsetStruct;->scaleInsets(IIIIF)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineRect:Landroid/graphics/Rect;

    mul-float v0, p9, p11

    iput v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineRadius:F

    int-to-float v0, p10

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineAlpha:F

    return-void
.end method

.method public static scaleInsets(IIIIF)Landroid/graphics/Rect;
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p4, v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    int-to-float v1, p0

    mul-float/2addr v1, p4

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, p1

    mul-float/2addr v1, p4

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, p2

    mul-float/2addr v1, p4

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, p3

    mul-float/2addr v1, p4

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method
