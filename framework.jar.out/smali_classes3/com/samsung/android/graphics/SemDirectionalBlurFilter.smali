.class public Lcom/samsung/android/graphics/SemDirectionalBlurFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemDirectionalBlurFilter.java"


# static fields
.field private static final ANGLE:I = 0x3

.field private static final MAX_RADIUS:F = 250.0f

.field private static final RADIUS:I = 0x0

.field private static final STEP:I = 0x1

.field private static final STEP_COUNT:I = 0x2

.field private static mFragmentShaderCode:Ljava/lang/String;


# instance fields
.field private mAngle:F

.field private mQuality:F

.field private mRadius:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mAngle:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mQuality:F

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mRadius:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mAngle:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mRadius:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaW;\n\nvoid main(void) {\n    float widthCoef = 1.0 / areaW;\n    float angle = filterParams[3];\n    highp vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n    float step = filterParams[1];\n    float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[2]); i++){\n        scaledStep = step * filterData02[i] * widthCoef;\n        texPos.s = outTexCoords.s + (scaledStep * cos(angle)); \n        texPos.t = outTexCoords.t + (scaledStep * sin(angle)); \n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n        texPos.s = outTexCoords.s - (scaledStep * cos(angle));\n        texPos.t = outTexCoords.t - (scaledStep * sin(angle));\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n    gl_FragColor = fragColorBlur;\n}\n"

    .line 31
    sput-object v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mFragmentShaderCode:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mRadius:F

    .line 62
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mQuality:F

    .line 63
    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mAngle:F

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterData01()V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterData02()V

    .line 72
    return-void
.end method


# virtual methods
.method public animateAngle(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 193
    new-instance v1, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$1;-><init>(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateRadius(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 230
    new-instance v1, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter$2;-><init>(Lcom/samsung/android/graphics/SemDirectionalBlurFilter;FF)V

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

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mRadius:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mQuality:F

    mul-float/2addr v12, v13

    float-to-int v6, v12

    .line 121
    .local v6, "interFactor":I
    const/4 v9, 0x0

    .line 123
    .local v9, "power":F
    const/16 v12, 0x40

    if-le v6, v12, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mRadius:F

    int-to-float v13, v6

    div-float v9, v12, v13

    .line 125
    const/16 v6, 0x40

    .line 133
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mRadius:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_2

    .line 134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    aput v13, v12, v14

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v13, v12, v14

    .line 136
    return-void

    .line 126
    :cond_0
    const/4 v12, 0x1

    if-ge v6, v12, :cond_1

    .line 127
    const/high16 v9, 0x3f800000    # 1.0f

    .line 128
    const/4 v6, 0x1

    goto :goto_0

    .line 130
    :cond_1
    const v9, 0x3fd6c12b

    goto :goto_0

    .line 139
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mRadius:F

    const v13, 0x3e99999a    # 0.3f

    mul-float/2addr v12, v13

    const v13, 0x3f19999a    # 0.6f

    add-float v11, v12, v13

    .line 140
    .local v11, "sigma":F
    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    float-to-double v14, v11

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v12, v14, v12

    double-to-float v2, v12

    .line 141
    .local v2, "coeff1":F
    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v11

    mul-float/2addr v12, v11

    const/high16 v13, -0x40800000    # -1.0f

    div-float v3, v13, v12

    .line 142
    .local v3, "coeff2":F
    const/4 v8, 0x0

    .line 143
    .local v8, "normalizeFactor":F
    const/16 v12, 0x80

    new-array v4, v12, [F

    .line 144
    .local v4, "data":[F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mRadius:F

    int-to-float v13, v6

    div-float v7, v12, v13

    .line 145
    .local v7, "interpalationStep":F
    const/4 v10, 0x0

    .line 147
    .local v10, "r":F
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_3

    .line 148
    float-to-double v12, v2

    mul-float v14, v10, v10

    mul-float/2addr v14, v3

    float-to-double v14, v14

    const-wide v16, 0x4005bf0a8b145769L    # Math.E

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    float-to-double v14, v9

    mul-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v4, v5

    .line 149
    aget v12, v4, v5

    add-float/2addr v8, v12

    .line 150
    add-float/2addr v10, v7

    .line 147
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 153
    :cond_3
    mul-float v12, v2, v9

    const/4 v13, 0x0

    aput v12, v4, v13

    .line 154
    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v8, v12

    .line 155
    const/4 v12, 0x0

    aget v12, v4, v12

    add-float/2addr v8, v12

    .line 157
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_4

    .line 158
    aget v12, v4, v5

    div-float/2addr v12, v8

    aput v12, v4, v5

    .line 157
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 161
    :cond_4
    const/4 v10, 0x0

    .line 163
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_5

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    aget v13, v4, v5

    aput v13, v12, v5

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    aput v10, v12, v5

    .line 166
    add-float/2addr v10, v7

    .line 163
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 169
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mRadius:F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 170
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v7}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 171
    int-to-float v12, v6

    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 172
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mAngle:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v12, v12

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterData01Changed()V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterData02Changed()V

    .line 118
    return-void
.end method

.method public setAngle(F)V
    .locals 1
    .param p1, "degree"    # F

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setValue(IF)V

    .line 98
    iput p1, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mAngle:F

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->computeGaussCoefs()V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 96
    return-void
.end method

.method public setDistance(F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    .line 85
    return-void
.end method

.method public setRadius(F)V
    .locals 3
    .param p1, "radius"    # F

    .prologue
    const/high16 v2, 0x437a0000    # 250.0f

    const/4 v1, 0x0

    .line 105
    iget v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 106
    iget v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 107
    iput v2, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mRadius:F

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->computeGaussCoefs()V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 103
    :cond_0
    return-void

    .line 108
    :cond_1
    iget v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 109
    iput v1, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mRadius:F

    goto :goto_0

    .line 111
    :cond_2
    iput p1, p0, Lcom/samsung/android/graphics/SemDirectionalBlurFilter;->mRadius:F

    goto :goto_0
.end method
