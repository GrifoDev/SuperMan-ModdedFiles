.class public Lcom/samsung/android/graphics/SemSgiBlurImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemSgiBlurImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemSgiBlurImageFilter$RadiusAnimationParams;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_CODE:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nvarying vec2 vNeighborTexCoord[12];\nuniform sampler2D baseSampler;\n\nvoid main(void) {\n    highp vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[0])  * 0.00903788620091937;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[1])  * 0.0217894371884468;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[2])  * 0.0447649434011506;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[3])  * 0.0783687553896893;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[4])  * 0.116912444814134;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[5])  * 0.148624846131112;\n    fragColorBlur += texture2D(baseSampler, outTexCoords        )  * 0.161003373749805;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[6])  * 0.148624846131112;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[7])  * 0.116912444814134;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[8])  * 0.0783687553896893;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[9])  * 0.0447649434011506;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[10]) * 0.0217894371884468;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[11]) * 0.00903788620091937;\n    gl_FragColor = fragColorBlur;\n}\n\n"

.field private static final MAX_RADIUS:F = 250.0f

.field private static final MIN_RADIUS:F

.field private static final RADIUS_PARAM_INDEX:I

.field private static final VEERTEX_SHADER_CODE:[Ljava/lang/String;


# instance fields
.field private mRadius:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemSgiBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->mRadius:F

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/graphics/SemSgiBlurImageFilter;)F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->getOptimalDownsampleRate()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/graphics/SemSgiBlurImageFilter;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->calculateRadiusParam(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "attribute vec2 texCoords;\nattribute vec4 position;\nuniform float areaW;\nuniform float filterParams[16];\nvarying vec2 outTexCoords;\nvarying vec2 vNeighborTexCoord[12];\nvoid main() {\n    outTexCoords = texCoords;\n    float v = filterParams[0] / 6.0 / areaW;\n    vNeighborTexCoord[0]  = outTexCoords + vec2(-6.0 * v, 0.0);\n    vNeighborTexCoord[1]  = outTexCoords + vec2(-5.0 * v, 0.0);\n    vNeighborTexCoord[2]  = outTexCoords + vec2(-4.0 * v, 0.0);\n    vNeighborTexCoord[3]  = outTexCoords + vec2(-3.0 * v, 0.0);\n    vNeighborTexCoord[4]  = outTexCoords + vec2(-2.0 * v, 0.0);\n    vNeighborTexCoord[5]  = outTexCoords + vec2(-1.0 * v, 0.0);\n    vNeighborTexCoord[6]  = outTexCoords + vec2( 1.0 * v, 0.0);\n    vNeighborTexCoord[7]  = outTexCoords + vec2( 2.0 * v, 0.0);\n    vNeighborTexCoord[8]  = outTexCoords + vec2( 3.0 * v, 0.0);\n    vNeighborTexCoord[9]  = outTexCoords + vec2( 4.0 * v, 0.0);\n    vNeighborTexCoord[10] = outTexCoords + vec2( 5.0 * v, 0.0);\n    vNeighborTexCoord[11] = outTexCoords + vec2( 6.0 * v, 0.0);\n    gl_Position = position;\n}\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "attribute vec2 texCoords;\nattribute vec4 position;\nuniform float areaH;\nuniform float filterParams[16];\nvarying vec2 outTexCoords;\nvarying vec2 vNeighborTexCoord[12];\nvoid main() {\n    outTexCoords = texCoords;\n    float v = filterParams[0] / 6.0 / areaH;\n    vNeighborTexCoord[0]  = outTexCoords + vec2(0.0, -6.0 * v );\n    vNeighborTexCoord[1]  = outTexCoords + vec2(0.0, -5.0 * v );\n    vNeighborTexCoord[2]  = outTexCoords + vec2(0.0, -4.0 * v );\n    vNeighborTexCoord[3]  = outTexCoords + vec2(0.0, -3.0 * v );\n    vNeighborTexCoord[4]  = outTexCoords + vec2(0.0, -2.0 * v );\n    vNeighborTexCoord[5]  = outTexCoords + vec2(0.0, -1.0 * v );\n    vNeighborTexCoord[6]  = outTexCoords + vec2(0.0,  1.0 * v );\n    vNeighborTexCoord[7]  = outTexCoords + vec2(0.0,  2.0 * v );\n    vNeighborTexCoord[8]  = outTexCoords + vec2(0.0,  3.0 * v );\n    vNeighborTexCoord[9]  = outTexCoords + vec2(0.0,  4.0 * v );\n    vNeighborTexCoord[10] = outTexCoords + vec2(0.0,  5.0 * v );\n    vNeighborTexCoord[11] = outTexCoords + vec2(0.0,  6.0 * v );\n    gl_Position = position;\n}\n"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->VEERTEX_SHADER_CODE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->VEERTEX_SHADER_CODE:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nvarying vec2 vNeighborTexCoord[12];\nuniform sampler2D baseSampler;\n\nvoid main(void) {\n    highp vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[0])  * 0.00903788620091937;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[1])  * 0.0217894371884468;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[2])  * 0.0447649434011506;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[3])  * 0.0783687553896893;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[4])  * 0.116912444814134;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[5])  * 0.148624846131112;\n    fragColorBlur += texture2D(baseSampler, outTexCoords        )  * 0.161003373749805;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[6])  * 0.148624846131112;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[7])  * 0.116912444814134;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[8])  * 0.0783687553896893;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[9])  * 0.0447649434011506;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[10]) * 0.0217894371884468;\n    fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[11]) * 0.00903788620091937;\n    gl_FragColor = fragColorBlur;\n}\n\n"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->mRadius:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->setRadius(F)V

    return-void
.end method

.method private calculateRadiusParam(F)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->mRadius:F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->mParams:[F

    iget v1, p0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->mRadius:F

    const/4 v2, 0x0

    aput v1, v0, v2

    return-void
.end method

.method private getOptimalDownsampleRate()F
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->mRadius:F

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemSgiBlurImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemSgiBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/SemSgiBlurImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->mRadius:F

    iput v1, v0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->mRadius:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemSgiBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->mRadius:F

    return v0
.end method

.method public setRadius(F)V
    .locals 2

    iget v1, p0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->mRadius:F

    invoke-static {v1, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->calculateRadiusParam(F)V

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->getOptimalDownsampleRate()F

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->setSamplingRate(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method public setRadiusAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemSgiBlurImageFilter$RadiusAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemSgiBlurImageFilter$RadiusAnimationParams;-><init>(Lcom/samsung/android/graphics/SemSgiBlurImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemSgiBlurImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method
