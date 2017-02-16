.class public Lcom/samsung/android/graphics/SemVignetteFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemVignetteFilter.java"


# static fields
.field private static final MAX_RADIUS:F = 1.0f

.field private static final RADIUS:I

.field private static mFragmentShaderCode:Ljava/lang/String;


# instance fields
.field private mRadius:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemVignetteFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemVignetteFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nvarying vec2 resolution;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\n\nvoid main(void) {\n   vec2 u_resolution = vec2(areaW, areaH);\n   vec4 texColor = texture2D(baseSampler, outTexCoords);\n   vec2 relativePosition = gl_FragCoord.xy / u_resolution - 0.5;\n   float len = length(relativePosition);\n   float vignette = smoothstep(filterParams[0] + 0.1, filterParams[0] - 0.1, len);\n   texColor.rgb = mix(texColor.rgb, texColor.rgb * vignette, 0.9);\n   gl_FragColor = texColor;\n}\n\n"

    .line 43
    sput-object v0, Lcom/samsung/android/graphics/SemVignetteFilter;->mFragmentShaderCode:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Lcom/samsung/android/graphics/SemVignetteFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterParams()V

    .line 70
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
    .line 136
    new-instance v1, Lcom/samsung/android/graphics/SemVignetteFilter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemVignetteFilter$1;-><init>(Lcom/samsung/android/graphics/SemVignetteFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

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
    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemVignetteFilter;->clone()Lcom/samsung/android/graphics/SemVignetteFilter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/SemVignetteFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemVignetteFilter;

    .line 85
    .local v0, "imageFilter":Lcom/samsung/android/graphics/SemVignetteFilter;
    iget v1, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    iput v1, v0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    .line 86
    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    return v0
.end method

.method public setRadius(F)V
    .locals 3
    .param p1, "radius"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 97
    iget v0, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 99
    iput p1, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    .line 100
    iget v0, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 101
    iput v2, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    .line 105
    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 95
    :cond_1
    return-void

    .line 102
    :cond_2
    iget v0, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 103
    iput v1, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    goto :goto_0
.end method
