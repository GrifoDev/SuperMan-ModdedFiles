.class public Lcom/samsung/android/graphics/SemVignetteFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;
.source "SemVignetteFilter.java"


# static fields
.field private static final MAX_RADIUS:F = 1.0f

.field private static final RADIUS:I

.field private static mFragmentShaderCode:Ljava/lang/String;


# instance fields
.field private mRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nvarying vec2 resolution;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\n\nvoid main(void) {\n   vec2 u_resolution = vec2(areaW, areaH);\n   vec4 texColor = texture2D(baseSampler, outTexCoords);\n   vec2 relativePosition = gl_FragCoord.xy / u_resolution - 0.5;\n   float len = length(relativePosition);\n   float vignette = smoothstep(filterParams[0] + 0.1, filterParams[0] - 0.1, len);\n   texColor.rgb = mix(texColor.rgb, texColor.rgb * vignette, 0.9);\n   gl_FragColor = texColor;\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemVignetteFilter;->mFragmentShaderCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Lcom/samsung/android/graphics/SemVignetteFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemVignetteFilter;->useFilterParams()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemVignetteFilter;->clone()Lcom/samsung/android/graphics/SemVignetteFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemVignetteFilter;->clone()Lcom/samsung/android/graphics/SemVignetteFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemImageFilterSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

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

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;->clone()Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemVignetteFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    iput v1, v0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemVignetteFilter;->clone()Lcom/samsung/android/graphics/SemVignetteFilter;

    move-result-object v0

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    return v0
.end method

.method public setRadius(F)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iput p1, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    iget v0, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iput v2, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemVignetteFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemVignetteFilter;->notifyWorkerFilters()V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput v1, p0, Lcom/samsung/android/graphics/SemVignetteFilter;->mRadius:F

    goto :goto_0
.end method
