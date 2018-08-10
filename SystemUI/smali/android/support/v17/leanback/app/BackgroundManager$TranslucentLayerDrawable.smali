.class final Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TranslucentLayerDrawable"
.end annotation


# instance fields
.field mAlpha:I

.field mManagerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v17/leanback/app/BackgroundManager;",
            ">;"
        }
    .end annotation
.end field

.field mSuspendInvalidation:Z

.field mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BackgroundManager;[Landroid/graphics/drawable/Drawable;)V
    .locals 5

    invoke-direct {p0, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0xff

    iput v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mAlpha:I

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mManagerWeakReference:Ljava/lang/ref/WeakReference;

    array-length v0, p2

    new-array v2, v0, [Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    iput-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    new-instance v3, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v4, p2, v1

    invoke-direct {v3, v4}, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearDrawable(ILandroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getId(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v17/leanback/app/BackgroundManager$EmptyDrawable;

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/support/v17/leanback/app/BackgroundManager;->createEmptyDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-super {p0, p1, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    const/16 v9, 0xff

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    array-length v5, v5

    if-ge v2, v5, :cond_7

    iget-object v5, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_3

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    :goto_1
    move v4, v0

    const/4 v3, 0x0

    iget v5, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mAlpha:I

    if-ge v5, v9, :cond_0

    iget v5, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mAlpha:I

    mul-int/2addr v0, v5

    const/4 v3, 0x1

    :cond_0
    iget-object v5, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    if-ge v5, v9, :cond_1

    iget-object v5, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    mul-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    :cond_1
    if-nez v3, :cond_4

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0xff

    goto :goto_1

    :cond_4
    if-ne v3, v8, :cond_6

    div-int/lit16 v0, v0, 0xff

    :cond_5
    :goto_3
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mSuspendInvalidation:Z

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v7, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mSuspendInvalidation:Z

    goto :goto_2

    :cond_6
    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    const v5, 0xfe01

    div-int/2addr v0, v5

    goto :goto_3

    :catchall_0
    move-exception v5

    iput-boolean v7, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mSuspendInvalidation:Z

    throw v5

    :cond_7
    return-void
.end method

.method public findWrapperIndexById(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getId(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mAlpha:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mSuspendInvalidation:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 7

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    new-instance v4, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    iget-object v5, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v5, v5, v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;-><init>(Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;Landroid/graphics/drawable/Drawable;)V

    aput-object v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public setAlpha(I)V
    .locals 2

    iget v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mAlpha:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mAlpha:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->invalidateSelf()V

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mManagerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/BackgroundManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager;->postChangeRunnable()V

    :cond_0
    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->updateDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setWrapperAlpha(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public updateDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getId(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    new-instance v2, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    invoke-direct {v2, p2}, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v1, v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->invalidateSelf()V

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v1, v1, v0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
