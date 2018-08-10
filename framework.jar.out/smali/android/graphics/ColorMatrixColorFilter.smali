.class public Landroid/graphics/ColorMatrixColorFilter;
.super Landroid/graphics/ColorFilter;
.source "ColorMatrixColorFilter.java"


# instance fields
.field private final mMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    array-length v0, p1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    return-void
.end method

.method private static native nativeColorMatrixFilter([F)J
.end method


# virtual methods
.method createNativeInstance()J
    .locals 2

    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/ColorMatrixColorFilter;->nativeColorMatrixFilter([F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColorMatrix(Landroid/graphics/ColorMatrix;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public setColorMatrix(Landroid/graphics/ColorMatrix;)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/ColorMatrixColorFilter;->discardNativeInstance()V

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    goto :goto_0
.end method

.method public setColorMatrixArray([F)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/ColorMatrixColorFilter;->discardNativeInstance()V

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    :goto_0
    return-void

    :cond_0
    array-length v0, p1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    goto :goto_0
.end method
