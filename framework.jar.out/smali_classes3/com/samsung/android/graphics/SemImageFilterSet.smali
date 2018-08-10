.class public Lcom/samsung/android/graphics/SemImageFilterSet;
.super Lcom/samsung/android/graphics/SemImageFilter;
.source "SemImageFilterSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mImageFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/graphics/SemImageFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter;-><init>(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addAnimation(ILcom/samsung/android/graphics/SemImageFilter$Animator;Landroid/animation/TimeInterpolator;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;JJ)Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;
    .locals 9

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move-wide/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/graphics/SemImageFilter;->addAnimation(Lcom/samsung/android/graphics/SemImageFilter$Animator;Landroid/animation/TimeInterpolator;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;JJ)Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;

    move-result-object v0

    return-object v0
.end method

.method public addAnimation(Lcom/samsung/android/graphics/SemImageFilter$Animator;Landroid/animation/TimeInterpolator;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;JJ)Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;
    .locals 12

    new-instance v8, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;

    invoke-direct {v8}, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/graphics/SemImageFilter;->addAnimation(Lcom/samsung/android/graphics/SemImageFilter$Animator;Landroid/animation/TimeInterpolator;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;JJ)Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;

    move-result-object v10

    if-eqz v10, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;->getAnimationToken(I)Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;->addAnimationToken(Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v8, 0x0

    :cond_2
    return-object v8
.end method

.method public addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->syncImageFilter()V

    :cond_1
    return-void
.end method

.method public addFilterWithoutSync(Lcom/samsung/android/graphics/SemImageFilter;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearFilters()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->syncImageFilter()V

    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->clone()Lcom/samsung/android/graphics/SemImageFilterSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/SemImageFilterSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemImageFilter;->clone()Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilterSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/SemImageFilter;->clone()Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/SemImageFilterSet;->setView(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->clone()Lcom/samsung/android/graphics/SemImageFilterSet;

    move-result-object v0

    return-object v0
.end method

.method protected getBitmapPixelColor(ILjava/lang/String;II)I
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilter;->getBitmapPixelColor(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method protected getBitmapPixelColor(Ljava/lang/String;II)I
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Methods is not applicable for SemImageFilterSet, use int getBitmapPxelColor(int filterId, String name, int x, int y)) instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    return-object v0
.end method

.method public getFilterCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getUniformMatrix(ILjava/lang/String;II[F)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformMatrix(Ljava/lang/String;II[F)V

    return-void
.end method

.method protected getUniformMatrix(Ljava/lang/String;II[F)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Methods is not applicable for SemImageFilterSet, use void getUniformMatrix(int filterId, String name, int row, int col, float[] value instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getUniformf(ILjava/lang/String;II[F)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformf(Ljava/lang/String;II[F)V

    return-void
.end method

.method protected getUniformf(Ljava/lang/String;II[F)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Methods is not applicable for SemImageFilterSet, use void getUniformf(int filterId, String name, int vec, int count, float[] value) instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getUniformi(ILjava/lang/String;II[I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformi(Ljava/lang/String;II[I)V

    return-void
.end method

.method protected getUniformi(Ljava/lang/String;II[I)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Methods is not applicable for SemImageFilterSet, use void getUniformi(int filterId, String name, int vec, int count, int[] value) instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getUpdateMargin(I[I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/graphics/SemImageFilter;->getUpdateMargin([I)V

    return-void
.end method

.method protected getUpdateMargin([I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    const/4 v3, 0x4

    new-array v0, v3, [I

    iget-object v3, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v3, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUpdateMargin([I)V

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, p1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    array-length v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getValue(ILcom/samsung/android/graphics/SemImageFilter$ValueIndex;)F
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/graphics/SemImageFilter;->getValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;)F

    move-result v0

    return v0
.end method

.method protected getValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;)F
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Methods is not applicable for SemImageFilterSet, use float getValue(int filterId, ValueIndex index) instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttachedToView()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemImageFilter;->onAttachedToView()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/graphics/SemImageFilter;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setBitmapFiltering(ILjava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/graphics/SemImageFilter;->setBitmapFiltering(Ljava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V

    return-void
.end method

.method protected setBitmapFiltering(Ljava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setBitmapFiltering(Ljava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setBitmapWrap(ILjava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/graphics/SemImageFilter;->setBitmapWrap(Ljava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;)V

    return-void
.end method

.method protected setBitmapWrap(Ljava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setBitmapWrap(Ljava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setFiltering(ILcom/samsung/android/graphics/SemImageFilter$TextureFiltering;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/graphics/SemImageFilter;->setFiltering(Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V

    return-void
.end method

.method protected setFiltering(Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setFiltering(Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setFragmentShader(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setFragmentShader(Ljava/lang/String;)V

    return-void
.end method

.method protected setFragmentShader(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/graphics/SemImageFilter;->setFragmentShader(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mListener:Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/graphics/SemImageFilter;->setListener(Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setSamplingRate(FF)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setSamplingRate(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setSamplingRate(IFF)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/graphics/SemImageFilter;->setSamplingRate(FF)V

    return-void
.end method

.method protected setUniformMatrix(ILjava/lang/String;II[F)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformMatrix(Ljava/lang/String;II[F)V

    return-void
.end method

.method protected setUniformMatrix(Ljava/lang/String;II[F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformMatrix(Ljava/lang/String;II[F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setUniformf(ILjava/lang/String;II[F)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    return-void
.end method

.method protected setUniformf(Ljava/lang/String;II[F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setUniformi(ILjava/lang/String;II[I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    return-void
.end method

.method protected setUniformi(Ljava/lang/String;II[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setUpdateMargin(IIII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilter;->setUpdateMargin(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setUpdateMargin(IIIII)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/android/graphics/SemImageFilter;->setUpdateMargin(IIII)V

    return-void
.end method

.method public setValue(ILcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    return-void
.end method

.method public setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setVertexShader(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setVertexShader(Ljava/lang/String;)V

    return-void
.end method

.method protected setVertexShader(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/graphics/SemImageFilter;->setVertexShader(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mView:Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/graphics/SemImageFilter;->setView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setupBlendFactor(ILcom/samsung/android/graphics/SemImageFilter$BlendFactor;Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Filter with this ID does not listed in set!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/graphics/SemImageFilter;->setupBlendFactor(Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;)V

    return-void
.end method

.method protected setupBlendFactor(Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setupBlendFactor(Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
