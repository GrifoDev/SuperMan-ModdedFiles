.class public final Landroid/graphics/Outline;
.super Ljava/lang/Object;
.source "Outline.java"


# static fields
.field public static final MODE_CONVEX_PATH:I = 0x2

.field public static final MODE_EMPTY:I = 0x0

.field public static final MODE_ROUND_RECT:I = 0x1

.field private static final RADIUS_UNDEFINED:F = -Infinityf


# instance fields
.field public mAlpha:F

.field public mMode:I

.field public mPath:Landroid/graphics/Path;

.field public mRadius:F

.field public final mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Outline;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->set(Landroid/graphics/Outline;)V

    return-void
.end method


# virtual methods
.method public canClip()Z
    .locals 2

    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Landroid/graphics/Outline;->mAlpha:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Landroid/graphics/Outline;->mRadius:F

    return v0
.end method

.method public getRect(Landroid/graphics/Rect;)Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return v1
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Outline;->mMode:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public offset(II)V
    .locals 3

    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    goto :goto_0
.end method

.method public set(Landroid/graphics/Outline;)V
    .locals 2

    iget v0, p1, Landroid/graphics/Outline;->mMode:I

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    iget v0, p1, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    :cond_0
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-object v1, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    :cond_1
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Outline;->mRadius:F

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    iget v0, p1, Landroid/graphics/Outline;->mAlpha:F

    iput v0, p0, Landroid/graphics/Outline;->mAlpha:F

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Landroid/graphics/Outline;->mAlpha:F

    return-void
.end method

.method public setConvexPath(Landroid/graphics/Path;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "path must be convex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    return-void
.end method

.method public setEmpty()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    return-void
.end method

.method public setOval(IIII)V
    .locals 6

    if-ge p1, p3, :cond_0

    if-lt p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    return-void

    :cond_1
    sub-int v0, p4, p2

    sub-int v1, p3, p1

    if-ne v0, v1, :cond_2

    sub-int v0, p4, p2

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    :cond_2
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    return-void

    :cond_3
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    goto :goto_0
.end method

.method public setOval(Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method

.method public setRect(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void
.end method

.method public setRoundRect(IIIIF)V
    .locals 2

    if-ge p1, p3, :cond_0

    if-lt p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    return-void

    :cond_1
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iput p5, p0, Landroid/graphics/Outline;->mRadius:F

    return-void
.end method

.method public setRoundRect(Landroid/graphics/Rect;F)V
    .locals 6

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
