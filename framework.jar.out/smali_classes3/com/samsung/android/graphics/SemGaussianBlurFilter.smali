.class public Lcom/samsung/android/graphics/SemGaussianBlurFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
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
.method static synthetic -get0(Lcom/samsung/android/graphics/SemGaussianBlurFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemGaussianBlurFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nvarying vec2 rescoefs;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaW;\n\nvoid main(void) {\n   vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n   float step = 1.0 / areaW ;\n   float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[2]); i++){\n      scaledStep = step * filterData02[i];\n         texPos.s = outTexCoords.s + scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n       texPos.s = outTexCoords.s - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n   gl_FragColor = fragColorBlur;\n}\n\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nvarying vec2 rescoefs;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaH;\n\nvoid main(void) {\n  vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n   float step = 1.0 / areaH;\n    float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[2]); i++){\n      scaledStep = step * filterData02[i];\n         texPos.t = outTexCoords.t + scaledStep; \n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n      texPos.t = outTexCoords.t - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n   gl_FragColor = fragColorBlur;\n}\n\n"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 41
    sput-object v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mFragmentShaderCode:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mFragmentShaderCode:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    .line 98
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mQuality:F

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterParams()V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterData01()V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterData02()V

    .line 109
    return-void
.end method


# virtual methods
.method public animateRadius(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 242
    new-instance v1, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemGaussianBlurFilter$1;-><init>(Lcom/samsung/android/graphics/SemGaussianBlurFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/SemGaussianBlurFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    .line 126
    .local v0, "imageFilter":Lcom/samsung/android/graphics/SemGaussianBlurFilter;
    iget v1, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    iput v1, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    .line 127
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->clone()Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    move-result-object v0

    return-object v0
.end method

.method protected computeGaussCoefs()V
    .locals 18

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    const v13, 0x3f19999a    # 0.6f

    mul-float/2addr v12, v13

    float-to-int v6, v12

    .line 167
    .local v6, "interFactor":I
    const/4 v9, 0x0

    .line 169
    .local v9, "power":F
    const/16 v12, 0x40

    if-le v6, v12, :cond_0

    .line 170
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    int-to-float v13, v6

    div-float v9, v12, v13

    .line 171
    const/16 v6, 0x40

    .line 179
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_2

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    aput v13, v12, v14

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v13, v12, v14

    .line 182
    return-void

    .line 172
    :cond_0
    const/4 v12, 0x1

    if-ge v6, v12, :cond_1

    .line 173
    const/high16 v9, 0x3f800000    # 1.0f

    .line 174
    const/4 v6, 0x1

    goto :goto_0

    .line 176
    :cond_1
    const v9, 0x3fd6c12b

    goto :goto_0

    .line 188
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    const v13, 0x3e99999a    # 0.3f

    mul-float/2addr v12, v13

    const v13, 0x3f19999a    # 0.6f

    add-float v11, v12, v13

    .line 189
    .local v11, "sigma":F
    const v12, 0x40c90fdb

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    float-to-double v14, v11

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v12, v14, v12

    double-to-float v2, v12

    .line 190
    .local v2, "coeff1":F
    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v11

    mul-float/2addr v12, v11

    const/high16 v13, -0x40800000    # -1.0f

    div-float v3, v13, v12

    .line 191
    .local v3, "coeff2":F
    const/4 v8, 0x0

    .line 192
    .local v8, "normalizeFactor":F
    const/16 v12, 0x80

    new-array v4, v12, [F

    .line 193
    .local v4, "data":[F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    int-to-float v13, v6

    div-float v7, v12, v13

    .line 194
    .local v7, "interpalationStep":F
    const/4 v10, 0x0

    .line 196
    .local v10, "r":F
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_3

    .line 197
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

    .line 198
    aget v12, v4, v5

    add-float/2addr v8, v12

    .line 199
    add-float/2addr v10, v7

    .line 196
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 202
    :cond_3
    mul-float v12, v2, v9

    const/4 v13, 0x0

    aput v12, v4, v13

    .line 203
    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v8, v12

    .line 204
    const/4 v12, 0x0

    aget v12, v4, v12

    add-float/2addr v8, v12

    .line 206
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_4

    .line 207
    aget v12, v4, v5

    div-float/2addr v12, v8

    aput v12, v4, v5

    .line 206
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 210
    :cond_4
    const/4 v10, 0x0

    .line 212
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_5

    .line 213
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    aget v13, v4, v5

    aput v13, v12, v5

    .line 214
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData2:[F

    aput v10, v12, v5

    .line 215
    add-float/2addr v10, v7

    .line 212
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 218
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 219
    const/4 v12, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 220
    int-to-float v12, v6

    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterData01Changed()V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterData02Changed()V

    .line 164
    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .prologue
    .line 138
    iget v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 140
    const/high16 v0, 0x437a0000    # 250.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setupDownSampling()V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->computeGaussCoefs()V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 136
    :cond_0
    return-void
.end method

.method protected setupDownSampling()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 154
    iget v1, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 155
    .local v0, "downSampleRate":F
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 156
    const/high16 v0, 0x3f800000    # 1.0f

    .line 159
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setSamplingRate(IFF)V

    .line 160
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setSamplingRate(IFF)V

    .line 152
    return-void
.end method
