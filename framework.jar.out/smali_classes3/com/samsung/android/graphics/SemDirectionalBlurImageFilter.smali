.class public Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemDirectionalBlurImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$AngleAnimationParams;,
        Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;
    }
.end annotation


# static fields
.field private static final COS_VAL:I = 0x1

.field private static final FRAGMENT_SHADER_CODE:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    highp vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n    float stepH = filterParams[1] / areaH;\n    float stepW = filterParams[2] / areaW;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[0]); i++) {\n        float scaledStepH = filterData02[i] * stepH;\n        float scaledStepW = filterData02[i] * stepW;\n        texPos.s = outTexCoords.s + scaledStepW; \n        texPos.t = outTexCoords.t + scaledStepH; \n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n        texPos.s = outTexCoords.s - scaledStepW;\n        texPos.t = outTexCoords.t - scaledStepH;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n    gl_FragColor = fragColorBlur;\n}\n"

.field private static final MAX_DISTANCE:F = 250.0f

.field private static final MIN_DISTANCE:F = 0.0f

.field private static final SIN_VAL:I = 0x2

.field private static final STEP_COUNT:I


# instance fields
.field private mAngle:F

.field private mDistance:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mAngle:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mDistance:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mAngle:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mDistance:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->setupGaussianCoefs()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    highp vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n    float stepH = filterParams[1] / areaH;\n    float stepW = filterParams[2] / areaW;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[0]); i++) {\n        float scaledStepH = filterData02[i] * stepH;\n        float scaledStepW = filterData02[i] * stepW;\n        texPos.s = outTexCoords.s + scaledStepW; \n        texPos.t = outTexCoords.t + scaledStepH; \n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n        texPos.s = outTexCoords.s - scaledStepW;\n        texPos.t = outTexCoords.t - scaledStepH;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n    gl_FragColor = fragColorBlur;\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mDistance:F

    iput v2, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mAngle:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->useFilterData01()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->useFilterData02()V

    invoke-virtual {p0, v3}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->setDistance(F)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->setAngle(F)V

    return-void
.end method

.method private setupGaussianCoefs()V
    .locals 5

    iget v1, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mDistance:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mData1:[F

    iget-object v3, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mData2:[F

    iget-object v4, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mData1:[F

    array-length v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/graphics/SemMathUtils;->computeGaussianCoeffs(F[F[FI)I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->setFilterData01Changed()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->setFilterData02Changed()V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clearAnimation()V

    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mDistance:F

    iput v1, v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mDistance:F

    iget v1, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mAngle:F

    iput v1, v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mAngle:F

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mAngle:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mDistance:F

    return v0
.end method

.method public setAngle(F)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mAngle:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mAngle:F

    iget v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->setParam(IF)V

    iget v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method public setAngleAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$AngleAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$AngleAnimationParams;-><init>(Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setDistance(F)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mDistance:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mDistance:F

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->setupGaussianCoefs()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method public setDistanceAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;-><init>(Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method
