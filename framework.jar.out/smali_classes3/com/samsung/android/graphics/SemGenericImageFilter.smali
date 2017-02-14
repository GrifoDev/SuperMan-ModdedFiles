.class public Lcom/samsung/android/graphics/SemGenericImageFilter;
.super Lcom/samsung/android/graphics/SemImageFilterSet;
.source "SemGenericImageFilter.java"


# static fields
.field protected static final FALSE:F = 0.0f

.field protected static final FILTER_BLEND_DST_FACTOR:I = 0x6

.field protected static final FILTER_BLEND_SRC_FACTOR:I = 0x5

.field protected static final FILTER_BLEND_USAGE:I = 0x4

.field protected static final FILTER_DOWN_SAMPLE_RATE_H:I = 0x8

.field protected static final FILTER_DOWN_SAMPLE_RATE_V:I = 0x9

.field protected static final FILTER_FILTERING_STATE_ANTIALIASING_DISABLED:I = 0x2

.field protected static final FILTER_FILTERING_STATE_ANTIALIASING_ENABLED:I = 0x1

.field protected static final FILTER_FILTERING_STATE_UNCHANGED:I = 0x0

.field protected static final FILTER_HAS_SAMPLERS:I = 0x3

.field protected static final FILTER_HAS_UNIFORMS:I = 0x2

.field protected static final FILTER_INPUT_TEXTURE_FILTERING_STATE:I = 0xa

.field protected static final FILTER_IS_CHANGED:I = 0x1

.field protected static final FILTER_IS_ENABLED:I = 0x0

.field protected static final FILTER_OUTPUT_TEXTURE_FILTERING_STATE:I = 0xb

.field protected static final FILTER_TRANSFORM:I = 0x7

.field protected static final FILTER_WRAP_STATE_CLAMP_TO_EDGE:I = 0x1

.field protected static final FILTER_WRAP_STATE_MIRRORED:I = 0x3

.field protected static final FILTER_WRAP_STATE_REPEAT:I = 0x2

.field protected static final FILTER_WRAP_STATE_UNCHANGED:I = 0x0

.field protected static final GL_CONSTANT_ALPHA:F = 12.0f

.field protected static final GL_CONSTANT_COLOR:F = 10.0f

.field protected static final GL_DST_ALPHA:F = 8.0f

.field protected static final GL_DST_COLOR:F = 4.0f

.field protected static final GL_ONE:F = 1.0f

.field protected static final GL_ONE_MINUS_CONSTANT_ALPHA:F = 13.0f

.field protected static final GL_ONE_MINUS_CONSTANT_COLOR:F = 11.0f

.field protected static final GL_ONE_MINUS_DST_ALPHA:F = 9.0f

.field protected static final GL_ONE_MINUS_DST_COLOR:F = 5.0f

.field protected static final GL_ONE_MINUS_SRC_ALPHA:F = 7.0f

.field protected static final GL_ONE_MINUS_SRC_COLOR:F = 3.0f

.field protected static final GL_SRC_ALPHA:F = 6.0f

.field protected static final GL_SRC_ALPHA_SATURATE:F = 14.0f

.field protected static final GL_SRC_COLOR:F = 2.0f

.field protected static final GL_ZERO:F = 0.0f

.field protected static final TRUE:F = 1.0f

.field public static final mVertexShaderCodeCommon:Ljava/lang/String; = "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"


# instance fields
.field protected mData1:[F

.field protected mData2:[F

.field protected mFrag:[Ljava/lang/String;

.field protected mIsFilterData01Modified:Z

.field protected mIsFilterData01Used:Z

.field protected mIsFilterData02Modified:Z

.field protected mIsFilterData02Used:Z

.field protected mIsFilterParamsModified:Z

.field protected mIsFilterParamsUsed:Z

.field protected mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

.field protected mParams:[F

.field protected mPassNum:I

.field protected mVert:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x40

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;-><init>()V

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

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v1, 0x40

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;-><init>()V

    iput v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    iput-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsUsed:Z

    iput-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Used:Z

    iput-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Used:Z

    iput-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterParamsModified:Z

    iput-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData01Modified:Z

    iput-boolean v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mIsFilterData02Modified:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    iput v3, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected buildWorkerFilters()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->clearFilters()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getVertexShaderCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getFragmentShaderCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/graphics/SemImageFilter;->createCustomFilter(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/graphics/SemCustomFilter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    invoke-super {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->clone()Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemGenericImageFilter;

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

.method protected getParam(I)F
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    aget v0, v0, p1

    return v0
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

.method protected getVertexShaderCodeCommon()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    return-object v0
.end method

.method protected notifyWorkerFilters()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

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
    iget-object v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;

    invoke-interface {v2}, Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;->onParamsChanged()V

    :cond_4
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

.method public setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setBitmapFiltering(ILjava/lang/String;Z)V
    .locals 2

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-le p1, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterCount()I

    move-result v1

    if-gt p1, v1, :cond_0

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setBitmapFiltering(Ljava/lang/String;I)V

    return-void

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected setBitmapWrap(ILjava/lang/String;ZZ)V
    .locals 2

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-le p1, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterCount()I

    move-result v1

    if-gt p1, v1, :cond_0

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setBitmapWrap(Ljava/lang/String;I)V

    return-void

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
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

.method protected setFiltering(III)V
    .locals 3

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-le p1, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterCount()I

    move-result v1

    if-gt p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    int-to-float v1, p2

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(IF)V

    int-to-float v1, p3

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(IF)V

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

.method protected setSamplingRate(IFF)V
    .locals 2

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mPassNum:I

    if-le p1, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterCount()I

    move-result v1

    if-gt p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(IF)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(IF)V

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

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mFrag:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->buildWorkerFilters()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

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
