.class public Lcom/samsung/android/graphics/SemGaussianBlurFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;
.source "SemGaussianBlurFilter.java"


# static fields
.field private static final MAX_RADIUS:F = 250.0f

.field private static final RADIUS:I = 0x0

.field private static final STEP:I = 0x1

.field private static final STEP_COUNT:I = 0x2

.field private static mFragmentShaderCode:[Ljava/lang/String;


# instance fields
.field private mQuality:F

.field private mRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nvarying vec2 rescoefs;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaW;\n\nvoid main(void) {\n   vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n   float step = 1.0 / areaW ;\n   float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[2]); i++){\n      scaledStep = step * filterData02[i];\n         texPos.s = outTexCoords.s + scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n       texPos.s = outTexCoords.s - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n   gl_FragColor = fragColorBlur;\n}\n\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nvarying vec2 rescoefs;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaH;\n\nvoid main(void) {\n  vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n   float step = 1.0 / areaH;\n    float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[2]); i++){\n      scaledStep = step * filterData02[i];\n         texPos.t = outTexCoords.t + scaledStep; \n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n      texPos.t = outTexCoords.t - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n   gl_FragColor = fragColorBlur;\n}\n\n"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mFragmentShaderCode:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mFragmentShaderCode:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mQuality:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->useFilterParams()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->useFilterData01()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->useFilterData02()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/graphics/SemGaussianBlurFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;->clone()Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    iput v1, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->clone()Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->clone()Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemImageFilterSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->clone()Lcom/samsung/android/graphics/SemGaussianBlurFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->clone()Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    move-result-object v0

    return-object v0
.end method

.method protected computeGaussCoefs()V
    .locals 20

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    const v15, 0x3f19999a    # 0.6f

    mul-float/2addr v14, v15

    float-to-int v7, v14

    const/4 v11, 0x0

    const/16 v14, 0x40

    if-le v7, v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    int-to-float v15, v7

    div-float v11, v14, v15

    const/16 v7, 0x40

    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mData1:[F

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    aput v15, v14, v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mData2:[F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v15, v14, v16

    return-void

    :cond_0
    const/4 v14, 0x1

    if-ge v7, v14, :cond_1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const v11, 0x3fd6c12b

    goto :goto_0

    :cond_2
    const v5, 0x402df854    # (float)Math.E

    const v10, 0x40490fdb    # (float)Math.PI

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    const v15, 0x3e99999a    # 0.3f

    mul-float/2addr v14, v15

    const v15, 0x3f19999a    # 0.6f

    add-float v13, v14, v15

    const v14, 0x40c90fdb

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    float-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v14, v16, v14

    double-to-float v2, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v13

    mul-float/2addr v14, v13

    const/high16 v15, -0x40800000    # -1.0f

    div-float v3, v15, v14

    const/4 v9, 0x0

    const/16 v14, 0x80

    new-array v4, v14, [F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    int-to-float v15, v7

    div-float v8, v14, v15

    const/4 v12, 0x0

    const/4 v6, 0x1

    :goto_1
    if-ge v6, v7, :cond_3

    float-to-double v14, v2

    const-wide v16, 0x4005bf0a80000000L    # 2.7182817459106445

    mul-float v18, v12, v12

    mul-float v18, v18, v3

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v14, v14

    aput v14, v4, v6

    aget v14, v4, v6

    add-float/2addr v9, v14

    add-float/2addr v12, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    mul-float v14, v2, v11

    const/4 v15, 0x0

    aput v14, v4, v15

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v9, v14

    const/4 v14, 0x0

    aget v14, v4, v14

    add-float/2addr v9, v14

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_4

    aget v14, v4, v6

    div-float/2addr v14, v9

    aput v14, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mData1:[F

    aget v15, v4, v6

    aput v15, v14, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mData2:[F

    aput v12, v14, v6

    add-float/2addr v12, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setParam(IF)V

    const/4 v14, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setParam(IF)V

    int-to-float v14, v7

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setParam(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setFilterData01Changed()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setFilterData02Changed()V

    return-void
.end method

.method public setRadius(F)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x437a0000    # 250.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setupDownSampling()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->computeGaussCoefs()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method protected setupDownSampling()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v4}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setSamplingRate(IFF)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setSamplingRate(IFF)V

    return-void
.end method
