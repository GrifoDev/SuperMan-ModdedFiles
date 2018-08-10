.class final Landroid/graphics/drawable/InsetDrawable$InsetValue;
.super Ljava/lang/Object;
.source "InsetDrawable.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/InsetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InsetValue"
.end annotation


# instance fields
.field mDimension:I

.field final mFraction:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    iput p2, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    iget v2, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    return-object v0
.end method

.method getDimension(I)I
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    add-int/2addr v0, v1

    return v0
.end method

.method scaleFromDensity(II)V
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    :cond_0
    return-void
.end method
