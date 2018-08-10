.class public Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemTiltShiftBlurImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;,
        Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;
    }
.end annotation


# static fields
.field private static final FOCUSED_AREA_BOTTOM_Y_PARAM_INDEX:I = 0x2

.field private static final FOCUSED_AREA_TOP_Y_PARAM_INDEX:I = 0x1

.field private static final FRAGMENT_SHADER_CODE:[Ljava/lang/String;

.field private static final MAX_RADIUS:F = 100.0f

.field private static final MIN_RADIUS:F

.field private static final STEP_COUNT_PARAM_INDEX:I


# instance fields
.field private mFocusedAreaBottomY:F

.field private mFocusedAreaTopY:F

.field private mRadius:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaBottomY:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaTopY:F

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mRadius:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaBottomY:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaTopY:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;)F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->getOptimalDownsampleRate()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->calculateBlurRadiusParams(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaW;\nvoid main(void) {\n    vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n    float step = 1.0 / areaW ;\n    float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[0]); i++) {\n        scaledStep = step * filterData02[i];\n        texPos.s = outTexCoords.s + scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n        texPos.s = outTexCoords.s - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n    gl_FragColor = fragColorBlur;\n}\n\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaH;\nvoid main(void) {\n    vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n    float step = 1.0 / areaH;\n    float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[0]); i++) {\n        scaledStep = step * filterData02[i];\n        texPos.t = outTexCoords.t + scaledStep; \n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n        texPos.t = outTexCoords.t - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n    gl_FragColor = fragColorBlur;\n}\n\n"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\n\nuniform float filterParams[16];\nvoid main(void) {\n   highp vec4 blurColor = texture2D(baseSampler, outTexCoords);\n   highp vec4 originalColor = texture2D(originalSampler, outTexCoords);\n   float mixStep = 0.0;\n   if (outTexCoords.y < filterParams[1]) {\n       mixStep = (filterParams[1] - outTexCoords.y) / (filterParams[1]);\n   } else if (outTexCoords.y > filterParams[2]) {\n       mixStep = (outTexCoords.y - filterParams[2]) / (1.0 - filterParams[2]);\n   }\n   float mixCoef = sin(mixStep*3.1415926*0.5);\n   gl_FragColor = mix(originalColor, blurColor, mixStep);\n}\n\n"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->FRAGMENT_SHADER_CODE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->FRAGMENT_SHADER_CODE:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mRadius:F

    iput v3, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaTopY:F

    iput v3, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaBottomY:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->useFilterData01()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->useFilterData02()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->useFilterParams()V

    invoke-virtual {p0, v4}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->setRadius(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->setFocusedAreaSize(FF)V

    return-void
.end method

.method private calculateBlurRadiusParams(F)V
    .locals 5

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {p1, v1, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mRadius:F

    iget v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mRadius:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mData1:[F

    iget-object v3, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mData2:[F

    iget-object v4, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mData1:[F

    array-length v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/graphics/SemMathUtils;->computeGaussianCoeffs(F[F[FI)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mParams:[F

    int-to-float v2, v0

    const/4 v3, 0x0

    aput v2, v1, v3

    return-void
.end method

.method private getOptimalDownsampleRate()F
    .locals 4

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mRadius:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private setupDownSampling()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->getOptimalDownsampleRate()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->setSamplingRate(IFF)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->setSamplingRate(IFF)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v2, v2}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->setSamplingRate(IFF)V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clearAnimation()V

    return-void
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mRadius:F

    iput v1, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mRadius:F

    iget v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaTopY:F

    iput v1, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaTopY:F

    iget v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaBottomY:F

    iput v1, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaBottomY:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getFocusedAreaSize(FF)[F
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [F

    iget v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaTopY:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaBottomY:F

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mRadius:F

    return v0
.end method

.method public setFocusedAreaSize(FF)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    const-string/jumbo v1, "Invalid parameters! Top edge must be gerater than bottom"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaTopY:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaBottomY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    :cond_1
    iput p1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaTopY:F

    iput p2, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaBottomY:F

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaTopY:F

    sub-float v0, v2, v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->setParam(IF)V

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mFocusedAreaBottomY:F

    sub-float v0, v2, v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->notifyWorkerFilters()V

    :cond_2
    return-void
.end method

.method public setFocusedAreaSizeAnimation(FFFFJJLandroid/animation/TimeInterpolator;)V
    .locals 11

    new-instance v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;-><init>(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;FFFFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mRadius:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->calculateBlurRadiusParams(F)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->setFilterData01Changed()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->setFilterData02Changed()V

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->setupDownSampling()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method public setRadiusAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;-><init>(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method
