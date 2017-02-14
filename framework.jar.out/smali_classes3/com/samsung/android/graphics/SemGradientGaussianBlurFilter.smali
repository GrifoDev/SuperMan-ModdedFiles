.class public Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemGradientGaussianBlurFilter.java"


# static fields
.field private static final ANGLE:I = 0xa

.field private static final BOTTOM_Y:I = 0x5

.field private static final MAX_RADIUS:F = 250.0f

.field private static final MIN_RADIUS:I = 0x3

.field private static final RADIUS:I = 0x0

.field private static final STEP:I = 0x1

.field private static final STEP_COUNT:I = 0x2

.field private static final TOP_Y:I = 0x4

.field private static mFragmentShaderCode:[Ljava/lang/String;


# instance fields
.field private mAngle:F

.field private mBottomY:F

.field private mMaxRadius:F

.field private mMinRadius:F

.field private mQuality:F

.field private mTopY:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mAngle:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mBottomY:F

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMinRadius:F

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mTopY:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mAngle:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mBottomY:F

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMinRadius:F

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mTopY:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaW;\nuniform float areaH;\n\nvoid main(void) {\n    vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    float point1 = filterParams[4] / areaH;\n    float point2 = filterParams[5] / areaH;\n    float UpperRegionSize = point1;\n    float BottomRegionSize = 1.0 - point2;\n    float kx = filterParams[10] * outTexCoords.x - outTexCoords.y;\n    float distanceToUpperLine = (kx + point1) / UpperRegionSize;\n    float distanceToBottomLine = (kx + point2) / BottomRegionSize;\n    float currentGradientStep = mix(0.0, min(abs(distanceToUpperLine), abs(distanceToBottomLine)), sign(distanceToUpperLine * distanceToBottomLine));\n    float kernelCoefSum = filterData01[0];\n    vec2 texPos = vec2(outTexCoords);\n    float step = 1.0 / areaW ;\n    float scaledStep = 0.0;\n    int stepCount = int((filterParams[2] - filterParams[3]) * currentGradientStep + filterParams[3]);\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < stepCount; i++){\n    scaledStep = step * filterData02[i];\n    texPos.s = outTexCoords.s + scaledStep;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    texPos.s = outTexCoords.s - scaledStep;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    kernelCoefSum += 2.0 * filterData01[i];\n    }\n    fragColorBlur *= 1.0 / kernelCoefSum;\n    gl_FragColor = fragColorBlur;\n}\n\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaH;\n\nvoid main(void) {\n    vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    float point1 = filterParams[4] / areaH;\n    float point2 = filterParams[5] / areaH;\n    float UpperRegionSize = point1;\n    float BottomRegionSize = 1.0 - point2;\n    float kx = filterParams[10] * outTexCoords.x - outTexCoords.y;\n    float distanceToUpperLine = (kx + point1) / UpperRegionSize;\n    float distanceToBottomLine = (kx + point2) / BottomRegionSize;\n    float currentGradientStep = mix(0.0, min(abs(distanceToUpperLine), abs(distanceToBottomLine)), sign(distanceToUpperLine * distanceToBottomLine));\n    float kernelCoefSum = filterData01[0];\n    vec2 texPos = vec2(outTexCoords);\n    float step = 1.0 / areaH;\n    float scaledStep = 0.0;\n    int stepCount = int((filterParams[2] - filterParams[3]) * currentGradientStep + filterParams[3]);\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < stepCount; i++){\n    scaledStep = step * filterData02[i];\n    texPos.t = outTexCoords.t + scaledStep; \n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    texPos.t = outTexCoords.t - scaledStep;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    kernelCoefSum += 2.0 * filterData01[i];\n    }\n    fragColorBlur *= 1.0 / kernelCoefSum;\n    gl_FragColor = fragColorBlur;\n}\n\n"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mFragmentShaderCode:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mFragmentShaderCode:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    iput v4, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMinRadius:F

    iput v4, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mQuality:F

    iput v3, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mAngle:F

    iput v3, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mTopY:F

    iput v3, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mBottomY:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterParams()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterData01()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterData02()V

    return-void
.end method


# virtual methods
.method public animateGradient(FFFFJJLandroid/animation/TimeInterpolator;)[I
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$3;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$3;-><init>(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;FFFF)V

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p5

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateGradientAngle(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7

    new-instance v1, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;-><init>(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateGradientBottomY(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7

    new-instance v1, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$5;-><init>(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateGradientTopY(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7

    new-instance v1, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;-><init>(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateMaxRadius(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7

    new-instance v1, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$2;-><init>(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateMinRadius(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7

    new-instance v1, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;-><init>(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method protected computeGaussCoefs()V
    .locals 18

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

    const v13, 0x3f19999a    # 0.6f

    mul-float/2addr v12, v13

    float-to-int v6, v12

    const/4 v9, 0x0

    const/16 v12, 0x40

    if-le v6, v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

    int-to-float v13, v6

    div-float v9, v12, v13

    const/16 v6, 0x40

    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    aput v13, v12, v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v13, v12, v14

    return-void

    :cond_0
    const/4 v12, 0x1

    if-ge v6, v12, :cond_1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const v9, 0x3fd6c12b

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

    const v13, 0x3e99999a    # 0.3f

    mul-float/2addr v12, v13

    const v13, 0x3f19999a    # 0.6f

    add-float v11, v12, v13

    const v12, 0x40c90fdb

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    float-to-double v14, v11

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v12, v14, v12

    double-to-float v2, v12

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v11

    mul-float/2addr v12, v11

    const/high16 v13, -0x40800000    # -1.0f

    div-float v3, v13, v12

    const/4 v8, 0x0

    const/16 v12, 0x80

    new-array v4, v12, [F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

    int-to-float v13, v6

    div-float v7, v12, v13

    const/4 v10, 0x0

    const/4 v5, 0x1

    :goto_1
    if-ge v5, v6, :cond_3

    float-to-double v12, v2

    const-wide v14, 0x4005bf0a80000000L    # 2.7182817459106445

    mul-float v16, v10, v10

    mul-float v16, v16, v3

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    float-to-double v14, v9

    mul-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v4, v5

    aget v12, v4, v5

    add-float/2addr v8, v12

    add-float/2addr v10, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    mul-float v12, v2, v9

    const/4 v13, 0x0

    aput v12, v4, v13

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v8, v12

    const/4 v12, 0x0

    aget v12, v4, v12

    add-float/2addr v8, v12

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_4

    aget v12, v4, v5

    div-float/2addr v12, v8

    aput v12, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    aget v13, v4, v5

    aput v13, v12, v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    aput v10, v12, v5

    add-float/2addr v10, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    const/4 v12, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    int-to-float v12, v6

    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterData01Changed()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterData02Changed()V

    return-void
.end method

.method public setGradient(FF)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mTopY:F

    iput p2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mBottomY:F

    iget v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mTopY:F

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    iget v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mBottomY:F

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method public setGradientAngle(F)V
    .locals 4

    neg-float v2, p1

    const/4 v3, 0x1

    invoke-super {p0, v3, v2}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setValue(IF)V

    neg-float v2, p1

    iput v2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mAngle:F

    iget v2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method public setMaxRadius(F)V
    .locals 3

    const/high16 v2, 0x437a0000    # 250.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->setupDownSampling()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->computeGaussCoefs()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

    goto :goto_0
.end method

.method public setMinRadius(F)V
    .locals 4

    const/high16 v3, 0x437a0000    # 250.0f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    iput v2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMinRadius:F

    :goto_0
    iget v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMinRadius:F

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    const/16 v1, 0x40

    if-le v0, v1, :cond_3

    const/16 v0, 0x40

    :cond_0
    :goto_1
    int-to-float v1, v0

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMinRadius:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iput v3, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMinRadius:F

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMinRadius:F

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected setupDownSampling()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->mMaxRadius:F

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
