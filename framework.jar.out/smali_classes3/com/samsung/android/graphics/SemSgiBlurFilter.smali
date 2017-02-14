.class public Lcom/samsung/android/graphics/SemSgiBlurFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemSgiBlurFilter.java"


# static fields
.field private static final MAX_RADIUS:F = 250.0f

.field private static final RADIUS:I = 0x1

.field private static mFragmentShaderCode:Ljava/lang/String;

.field private static mVertexShaderCode:[Ljava/lang/String;


# instance fields
.field private mRadius:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemSgiBlurFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemSgiBlurFilter;->mRadius:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemSgiBlurFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemSgiBlurFilter;->mRadius:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "attribute vec2 texCoords;\nattribute vec4 position;\nuniform float areaW;\nuniform float sampleRate;\nuniform float filterParams[16];\nvarying vec2 outTexCoords;\nvarying vec2 vNeighborTexCoord[12];\nvoid main() {\n   outTexCoords = texCoords;\n   float v = filterParams[1] / 6.0 / areaW;\n   vNeighborTexCoord[0]  = outTexCoords + vec2(-6.0 * v, 0.0);\n   vNeighborTexCoord[1]  = outTexCoords + vec2(-5.0 * v, 0.0);\n   vNeighborTexCoord[2]  = outTexCoords + vec2(-4.0 * v, 0.0);\n   vNeighborTexCoord[3]  = outTexCoords + vec2(-3.0 * v, 0.0);\n   vNeighborTexCoord[4]  = outTexCoords + vec2(-2.0 * v, 0.0);\n   vNeighborTexCoord[5]  = outTexCoords + vec2(-1.0 * v, 0.0);\n   vNeighborTexCoord[6]  = outTexCoords + vec2( 1.0 * v, 0.0);\n   vNeighborTexCoord[7]  = outTexCoords + vec2( 2.0 * v, 0.0);\n   vNeighborTexCoord[8]  = outTexCoords + vec2( 3.0 * v, 0.0);\n   vNeighborTexCoord[9]  = outTexCoords + vec2( 4.0 * v, 0.0);\n   vNeighborTexCoord[10] = outTexCoords + vec2( 5.0 * v, 0.0);\n   vNeighborTexCoord[11] = outTexCoords + vec2( 6.0 * v, 0.0);\n   gl_Position = position;\n}\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "attribute vec2 texCoords;\nattribute vec4 position;\nuniform float areaH;\nuniform float sampleRate;\nuniform float filterParams[16];\nvarying vec2 outTexCoords;\nvarying vec2 vNeighborTexCoord[12];\nvoid main() {\n   outTexCoords = texCoords;\n   float v = filterParams[1] / 6.0 / areaH;\n   vNeighborTexCoord[0]  = outTexCoords + vec2(0.0, -6.0 * v );\n   vNeighborTexCoord[1]  = outTexCoords + vec2(0.0, -5.0 * v );\n   vNeighborTexCoord[2]  = outTexCoords + vec2(0.0, -4.0 * v );\n   vNeighborTexCoord[3]  = outTexCoords + vec2(0.0, -3.0 * v );\n   vNeighborTexCoord[4]  = outTexCoords + vec2(0.0, -2.0 * v );\n   vNeighborTexCoord[5]  = outTexCoords + vec2(0.0, -1.0 * v );\n   vNeighborTexCoord[6]  = outTexCoords + vec2(0.0,  1.0 * v );\n   vNeighborTexCoord[7]  = outTexCoords + vec2(0.0,  2.0 * v );\n   vNeighborTexCoord[8]  = outTexCoords + vec2(0.0,  3.0 * v );\n   vNeighborTexCoord[9]  = outTexCoords + vec2(0.0,  4.0 * v );\n   vNeighborTexCoord[10] = outTexCoords + vec2(0.0,  5.0 * v );\n   vNeighborTexCoord[11] = outTexCoords + vec2(0.0,  6.0 * v );\n   gl_Position = position;\n}\n"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/graphics/SemSgiBlurFilter;->mVertexShaderCode:[Ljava/lang/String;

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nvarying vec2 vNeighborTexCoord[12];\nuniform sampler2D baseSampler;\n\nvoid main(void) {\n   highp vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[0])  * 0.00903788620091937;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[1])  * 0.0217894371884468;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[2])  * 0.0447649434011506;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[3])  * 0.0783687553896893;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[4])  * 0.116912444814134;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[5])  * 0.148624846131112;\n   fragColorBlur += texture2D(baseSampler, outTexCoords        )  * 0.161003373749805;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[6])  * 0.148624846131112;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[7])  * 0.116912444814134;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[8])  * 0.0783687553896893;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[9])  * 0.0447649434011506;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[10]) * 0.0217894371884468;\n   fragColorBlur += texture2D(baseSampler, vNeighborTexCoord[11]) * 0.00903788620091937;\n   gl_FragColor = fragColorBlur;\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemSgiBlurFilter;->mFragmentShaderCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/samsung/android/graphics/SemSgiBlurFilter;->mVertexShaderCode:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/graphics/SemSgiBlurFilter;->mFragmentShaderCode:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemSgiBlurFilter;->mRadius:F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemSgiBlurFilter;->setRadius(F)V

    return-void
.end method


# virtual methods
.method public animateRadius(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7

    new-instance v1, Lcom/samsung/android/graphics/SemSgiBlurFilter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemSgiBlurFilter$1;-><init>(Lcom/samsung/android/graphics/SemSgiBlurFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public setRadius(F)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/SemSgiBlurFilter;->mRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/high16 v0, 0x437a0000    # 250.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemSgiBlurFilter;->mRadius:F

    iget v0, p0, Lcom/samsung/android/graphics/SemSgiBlurFilter;->mRadius:F

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemSgiBlurFilter;->setupDownSampling()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method protected setupDownSampling()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/samsung/android/graphics/SemSgiBlurFilter;->mRadius:F

    const/high16 v2, 0x40c00000    # 6.0f

    div-float v0, v1, v2

    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setSamplingRate(IFF)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setSamplingRate(IFF)V

    return-void
.end method
