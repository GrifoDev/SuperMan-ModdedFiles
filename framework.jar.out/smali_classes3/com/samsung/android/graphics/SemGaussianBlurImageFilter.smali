.class public Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemGaussianBlurImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_CODE:[Ljava/lang/String;

.field private static final MAX_RADIUS:F = 250.0f

.field private static final MIN_RADIUS:F

.field private static final STEP_COUNT:I


# instance fields
.field private mRadius:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mRadius:F

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;)F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->getOptimalDownsampleRate()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->calculateFilterCoeffs(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaW;\nvoid main(void) {\n    vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n    float step = 1.0 / areaW ;\n    float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[0]); i++) {\n        scaledStep = step * filterData02[i];\n        texPos.s = outTexCoords.s + scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n        texPos.s = outTexCoords.s - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n    gl_FragColor = fragColorBlur;\n}\n\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaH;\nvoid main(void) {\n    vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n    float step = 1.0 / areaH;\n    float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[0]); i++) {\n        scaledStep = step * filterData02[i];\n        texPos.t = outTexCoords.t + scaledStep; \n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n        texPos.t = outTexCoords.t - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n    gl_FragColor = fragColorBlur;\n}\n\n"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->FRAGMENT_SHADER_CODE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->FRAGMENT_SHADER_CODE:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mRadius:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->useFilterParams()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->useFilterData01()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->useFilterData02()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->setRadius(F)V

    return-void
.end method

.method private calculateFilterCoeffs(F)V
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mRadius:F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mParams:[F

    iget v1, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mRadius:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mData1:[F

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mData2:[F

    iget-object v4, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mData1:[F

    array-length v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/graphics/SemMathUtils;->computeGaussianCoeffs(F[F[FI)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    return-void
.end method

.method private getOptimalDownsampleRate()F
    .locals 4

    iget v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mRadius:F

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

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->getOptimalDownsampleRate()F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->setSamplingRate(IFF)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->setSamplingRate(IFF)V

    return-void
.end method

.method private updateFilterParams(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->calculateFilterCoeffs(F)V

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->setupDownSampling()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->setFilterData01Changed()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->setFilterData02Changed()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->notifyWorkerFilters()V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clearAnimation()V

    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mRadius:F

    iput v1, v0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mRadius:F

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mRadius:F

    return v0
.end method

.method public setRadius(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mRadius:F

    invoke-static {p1, v0}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->updateFilterParams(F)V

    :cond_0
    return-void
.end method

.method public setRadiusAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;-><init>(Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method
