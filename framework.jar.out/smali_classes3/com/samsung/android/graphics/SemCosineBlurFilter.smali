.class public Lcom/samsung/android/graphics/SemCosineBlurFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemCosineBlurFilter.java"


# static fields
.field private static final MAX_RADIUS:F = 250.0f

.field private static final RADIUS:I = 0x0

.field private static final STEP_COUNT:I = 0x2

.field private static mFragmentShaderCode:[Ljava/lang/String;


# instance fields
.field private mQuality:F

.field private mRadius:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemCosineBlurFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemCosineBlurFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nvarying vec2 rescoefs;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaW;\n\nvoid main(void) {\n    highp vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n    float step = 1.0 / areaW ;\n   float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[2]); i++){\n      scaledStep = step * filterData02[i];\n         texPos.s = outTexCoords.s + scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n       texPos.s = outTexCoords.s - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n   gl_FragColor = fragColorBlur;\n}\n\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nvarying vec2 rescoefs;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaH;\n\nvoid main(void) {\n  highp vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n     float step = 1.0 / areaH;\n    float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[2]); i++){\n      scaledStep = step * filterData02[i];\n         texPos.t = outTexCoords.t + scaledStep; \n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n      texPos.t = outTexCoords.t - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n   gl_FragColor = fragColorBlur;\n}\n\n"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mFragmentShaderCode:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mFragmentShaderCode:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mQuality:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterData01()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterData02()V

    return-void
.end method


# virtual methods
.method public animateRadius(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7

    new-instance v1, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemCosineBlurFilter$1;-><init>(Lcom/samsung/android/graphics/SemCosineBlurFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method protected computeCosineCoefs()V
    .locals 14

    const/high16 v9, 0x42700000    # 60.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v12, 0x0

    iget v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_0

    iput v9, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    :cond_0
    iget v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    aput v13, v7, v12

    iget-object v7, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    aput v8, v7, v12

    return-void

    :cond_1
    const v3, 0x402df854    # (float)Math.E

    iget v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    const/high16 v8, 0x3f000000    # 0.5f

    div-float v0, v8, v7

    iget v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    const v8, 0x40490fdb    # (float)Math.PI

    div-float v1, v8, v7

    const/4 v5, 0x0

    const/16 v7, 0x80

    new-array v2, v7, [F

    const/4 v6, 0x0

    :goto_0
    int-to-float v7, v6

    iget v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3

    int-to-float v4, v6

    float-to-double v8, v0

    mul-float v7, v1, v4

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v7, v0

    aput v7, v2, v6

    if-lez v6, :cond_2

    aget v7, v2, v6

    add-float/2addr v5, v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v5, v7

    aget v7, v2, v12

    add-float/2addr v5, v7

    const/4 v6, 0x0

    :goto_1
    int-to-float v7, v6

    iget v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_4

    aget v7, v2, v6

    div-float/2addr v7, v5

    aput v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_2
    int-to-float v7, v6

    iget v8, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    aget v8, v2, v6

    aput v8, v7, v6

    iget-object v7, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    int-to-float v8, v6

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    iget v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    invoke-virtual {p0, v12, v7}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    iget v7, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    add-float/2addr v7, v13

    const/4 v8, 0x2

    invoke-virtual {p0, v8, v7}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterData01Changed()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterData02Changed()V

    return-void
.end method

.method public setRadius(F)V
    .locals 3

    const/high16 v2, 0x437a0000    # 250.0f

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->computeCosineCoefs()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemCosineBlurFilter;->setupDownSampling()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    goto :goto_0
.end method

.method protected setupDownSampling()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/samsung/android/graphics/SemCosineBlurFilter;->mRadius:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setSamplingRate(IFF)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setSamplingRate(IFF)V

    return-void
.end method
