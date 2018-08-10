.class public Lcom/samsung/android/graphics/SemGenericImageFilter;
.super Lcom/samsung/android/graphics/SemImageFilter;
.source "SemGenericImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;
    }
.end annotation


# instance fields
.field protected mData1:[F

.field protected mData2:[F

.field protected mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

.field protected mFrag:[Ljava/lang/String;

.field protected mIsFilterData01Modified:Z

.field protected mIsFilterData01Used:Z

.field protected mIsFilterData02Modified:Z

.field protected mIsFilterData02Used:Z

.field protected mIsFilterParamsModified:Z

.field protected mIsFilterParamsUsed:Z

.field protected mParams:[F

.field protected mPassNum:I

.field protected mVert:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x40

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/graphics/SemImageFilter;-><init>(Z)V

    iput v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    iput-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsUsed:Z

    iput-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Used:Z

    iput-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Used:Z

    iput-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsModified:Z

    iput-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Modified:Z

    iput-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Modified:Z

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemImageFilterSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>()V

    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/samsung/android/graphics/SemImageFilter$Animator;Landroid/animation/TimeInterpolator;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;JJ)Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;
    .locals 8

    iget v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    new-instance v3, Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;

    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    invoke-direct {v3, v1, p3}, Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;-><init>(ILcom/samsung/android/graphics/SemImageFilter$AnimationListener;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimation(Lcom/samsung/android/graphics/SemImageFilter$Animator;Landroid/animation/TimeInterpolator;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;JJ)Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimation(Lcom/samsung/android/graphics/SemImageFilter$Animator;Landroid/animation/TimeInterpolator;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;JJ)Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;

    move-result-object v0

    return-object v0
.end method

.method protected buildWorkerFilters()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemImageFilterSet;->clearFilters()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getVertexShaderCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getFragmentShaderCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/graphics/SemImageFilter;->createCustomFilter(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/graphics/SemCustomFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilterWithoutSync(Lcom/samsung/android/graphics/SemImageFilter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    iget-object v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/SemImageFilterSet;->setView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->syncImageFilter()V

    :cond_1
    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/samsung/android/graphics/SemImageFilter;->clone()Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemGenericImageFilter;

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemImageFilterSet;->clone()Lcom/samsung/android/graphics/SemImageFilterSet;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    iput v1, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v2, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    iget-object v2, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    iget-object v2, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsUsed:Z

    iput-boolean v1, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsUsed:Z

    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Used:Z

    iput-boolean v1, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Used:Z

    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Used:Z

    iput-boolean v1, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Used:Z

    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsModified:Z

    iput-boolean v1, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsModified:Z

    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Modified:Z

    iput-boolean v1, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Modified:Z

    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Modified:Z

    iput-boolean v1, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Modified:Z

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    return-object v0
.end method

.method protected getBitmapPixelColor(ILjava/lang/String;II)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilterSet;->getBitmapPixelColor(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method protected getBitmapPixelColor(Ljava/lang/String;II)I
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Methods is not applicable for SemImageFilterSet, use int getBitmapPixelColor(int filterId, String name, int x, int y) instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFiltersSet()Lcom/samsung/android/graphics/SemImageFilterSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    return-object v0
.end method

.method protected getFragmentShaderCode(I)Ljava/lang/String;
    .locals 2

    if-gez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getUniformMatrix(ILjava/lang/String;II[F)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilterSet;->getUniformMatrix(ILjava/lang/String;II[F)V

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
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilterSet;->getUniformf(ILjava/lang/String;II[F)V

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
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilterSet;->getUniformi(ILjava/lang/String;II[I)V

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
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilterSet;->getUpdateMargin(I[I)V

    return-void
.end method

.method protected getUpdateMargin([I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/SemImageFilterSet;->getUpdateMargin([I)V

    return-void
.end method

.method protected getValue(ILcom/samsung/android/graphics/SemImageFilter$ValueIndex;)F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilterSet;->getValue(ILcom/samsung/android/graphics/SemImageFilter$ValueIndex;)F

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

.method protected getVertexShaderCode(I)Ljava/lang/String;
    .locals 2

    if-gez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected notifyWorkerFilters()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v2, v1}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemCustomFilter;

    iget-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsUsed:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsModified:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "filterParams"

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    array-length v3, v3

    iget-object v4, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-virtual {v0, v2, v5, v3, v4}, Lcom/samsung/android/graphics/SemCustomFilter;->setUniformfv(Ljava/lang/String;II[F)V

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Used:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Modified:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "filterData01"

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    array-length v3, v3

    iget-object v4, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    invoke-virtual {v0, v2, v5, v3, v4}, Lcom/samsung/android/graphics/SemCustomFilter;->setUniformfv(Ljava/lang/String;II[F)V

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Used:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Modified:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "filterData02"

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    array-length v3, v3

    iget-object v4, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    invoke-virtual {v0, v2, v5, v3, v4}, Lcom/samsung/android/graphics/SemCustomFilter;->setUniformfv(Ljava/lang/String;II[F)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onAttachedToView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/SemImageFilterSet;->onAttachedToView()V

    return-void
.end method

.method protected resetFilterData01Changed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Modified:Z

    return-void
.end method

.method protected resetFilterData02Changed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Modified:Z

    return-void
.end method

.method protected resetFilterParamsChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsModified:Z

    return-void
.end method

.method protected setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/graphics/SemImageFilterSet;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilterSet;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected setBitmapFiltering(ILjava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/graphics/SemImageFilterSet;->setBitmapFiltering(ILjava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V

    return-void
.end method

.method protected setBitmapFiltering(Ljava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilterSet;->setBitmapFiltering(Ljava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V

    return-void
.end method

.method protected setBitmapWrap(ILjava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/graphics/SemImageFilterSet;->setBitmapWrap(ILjava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;)V

    return-void
.end method

.method protected setBitmapWrap(Ljava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilterSet;->setBitmapWrap(Ljava/lang/String;Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;)V

    return-void
.end method

.method protected setFilterData01Changed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Modified:Z

    return-void
.end method

.method protected setFilterData02Changed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Modified:Z

    return-void
.end method

.method protected setFilterParamsChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsModified:Z

    return-void
.end method

.method protected setFiltering(ILcom/samsung/android/graphics/SemImageFilter$TextureFiltering;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/graphics/SemImageFilterSet;->setFiltering(ILcom/samsung/android/graphics/SemImageFilter$TextureFiltering;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V

    return-void
.end method

.method protected setFiltering(Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilterSet;->setFiltering(Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;)V

    return-void
.end method

.method protected setFragmentShader(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilterSet;->setFragmentShader(ILjava/lang/String;)V

    return-void
.end method

.method protected setFragmentShader(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/SemImageFilterSet;->setFragmentShader(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/graphics/SemImageFilterSet;->setListener(Lcom/samsung/android/graphics/SemImageFilter$ImageFilterListener;)V

    return-void
.end method

.method protected setParam(IF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    aput p2, v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterParams()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterParamsChanged()V

    return-void
.end method

.method protected setSamplingRate(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilterSet;->setSamplingRate(FF)V

    return-void
.end method

.method protected setSamplingRate(IFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/graphics/SemImageFilterSet;->setSamplingRate(IFF)V

    return-void
.end method

.method protected setUniformMatrix(ILjava/lang/String;II[F)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilterSet;->setUniformMatrix(ILjava/lang/String;II[F)V

    return-void
.end method

.method protected setUniformMatrix(Ljava/lang/String;II[F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilterSet;->setUniformMatrix(Ljava/lang/String;II[F)V

    return-void
.end method

.method protected setUniformf(ILjava/lang/String;II[F)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilterSet;->setUniformf(ILjava/lang/String;II[F)V

    return-void
.end method

.method protected setUniformf(Ljava/lang/String;II[F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilterSet;->setUniformf(Ljava/lang/String;II[F)V

    return-void
.end method

.method protected setUniformi(ILjava/lang/String;II[I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilterSet;->setUniformi(ILjava/lang/String;II[I)V

    return-void
.end method

.method protected setUniformi(Ljava/lang/String;II[I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilterSet;->setUniformi(Ljava/lang/String;II[I)V

    return-void
.end method

.method protected setUpdateMargin(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilterSet;->setUpdateMargin(IIII)V

    return-void
.end method

.method protected setUpdateMargin(IIIII)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilterSet;->setUpdateMargin(IIIII)V

    return-void
.end method

.method public setValue(ILcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/graphics/SemImageFilterSet;->setValue(ILcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    return-void
.end method

.method public setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilterSet;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    return-void
.end method

.method protected setVertexShader(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilterSet;->setVertexShader(ILjava/lang/String;)V

    return-void
.end method

.method protected setVertexShader(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/SemImageFilterSet;->setVertexShader(Ljava/lang/String;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/SemImageFilterSet;->setView(Landroid/view/View;)V

    return-void
.end method

.method protected setup(I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    iput-object p2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->buildWorkerFilters()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method protected setup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mVert:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    aput-object p2, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->buildWorkerFilters()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method protected setupBlendFactor(ILcom/samsung/android/graphics/SemImageFilter$BlendFactor;Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/graphics/SemImageFilterSet;->setupBlendFactor(ILcom/samsung/android/graphics/SemImageFilter$BlendFactor;Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;)V

    return-void
.end method

.method protected setupBlendFactor(Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFiltersSet:Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilterSet;->setupBlendFactor(Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;)V

    return-void
.end method

.method protected unUseFilterData01()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Used:Z

    return-void
.end method

.method protected unUseFilterData02()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Used:Z

    return-void
.end method

.method protected unUseFilterParams()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsUsed:Z

    return-void
.end method

.method protected useFilterData01()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Used:Z

    return-void
.end method

.method protected useFilterData02()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Used:Z

    return-void
.end method

.method protected useFilterParams()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsUsed:Z

    return-void
.end method
