.class public Landroid/graphics/drawable/shapes/ArcShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "ArcShape.java"


# instance fields
.field private final mStartAngle:F

.field private final mSweepAngle:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput p1, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    iput p2, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/drawable/shapes/ArcShape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/ArcShape;

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/RectShape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->clone()Landroid/graphics/drawable/shapes/ArcShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->clone()Landroid/graphics/drawable/shapes/ArcShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->clone()Landroid/graphics/drawable/shapes/ArcShape;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->rect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    iget v3, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 0

    return-void
.end method

.method public final getStartAngle()F
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    return v0
.end method

.method public final getSweepAngle()F
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    return v0
.end method
