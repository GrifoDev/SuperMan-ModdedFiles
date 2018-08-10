.class public Lcom/samsung/android/graphics/SemHueImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemHueImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_CODE:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nconst float EPSILON = 1.0e-10;\n\nvec3 Rgb2Hsv(vec3 rgbColor) {\n    vec4 Koeffs = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\n    vec4 p = mix(vec4(rgbColor.bg, Koeffs.wz), vec4(rgbColor.gb, Koeffs.xy), step(rgbColor.b, rgbColor.g));\n    vec4 q = mix(vec4(p.xyw, rgbColor.r), vec4(rgbColor.r, p.yzx), step(p.x, rgbColor.r));\n    float d = q.x - min(q.w, q.y);\n    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + EPSILON)), d / (q.x + EPSILON), q.x);\n}\n\nvec3 Hsv2Rgb(vec3 hsvColor) {\n    vec4 Koeffs = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\n    vec3 p = abs(fract(hsvColor.xxx + Koeffs.xyz) * 6.0 - Koeffs.www);\n    return hsvColor.z * mix(Koeffs.xxx, clamp(p - Koeffs.xxx, 0.0, 1.0), hsvColor.y);\n}\n\nvoid main(void) {\n    vec4 originColor = texture2D(baseSampler, outTexCoords);\n    vec3 hsvColor = Rgb2Hsv(originColor.rgb);\n    hsvColor.x = fract(hsvColor.x + filterParams[0]);\n    gl_FragColor = vec4(Hsv2Rgb(hsvColor), originColor.a);\n}\n\n"

.field private static final HUE_SHIFT_PARAM_INDEX:I


# instance fields
.field private mHueShift:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemHueImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemHueImageFilter;->mHueShift:F

    return v0
.end method

.method static synthetic -wrap0(F)F
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/graphics/SemHueImageFilter;->normalizeHueShift(F)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/graphics/SemHueImageFilter;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemHueImageFilter;->calculateHueShiftParams(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nconst float EPSILON = 1.0e-10;\n\nvec3 Rgb2Hsv(vec3 rgbColor) {\n    vec4 Koeffs = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\n    vec4 p = mix(vec4(rgbColor.bg, Koeffs.wz), vec4(rgbColor.gb, Koeffs.xy), step(rgbColor.b, rgbColor.g));\n    vec4 q = mix(vec4(p.xyw, rgbColor.r), vec4(rgbColor.r, p.yzx), step(p.x, rgbColor.r));\n    float d = q.x - min(q.w, q.y);\n    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + EPSILON)), d / (q.x + EPSILON), q.x);\n}\n\nvec3 Hsv2Rgb(vec3 hsvColor) {\n    vec4 Koeffs = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\n    vec3 p = abs(fract(hsvColor.xxx + Koeffs.xyz) * 6.0 - Koeffs.www);\n    return hsvColor.z * mix(Koeffs.xxx, clamp(p - Koeffs.xxx, 0.0, 1.0), hsvColor.y);\n}\n\nvoid main(void) {\n    vec4 originColor = texture2D(baseSampler, outTexCoords);\n    vec3 hsvColor = Rgb2Hsv(originColor.rgb);\n    hsvColor.x = fract(hsvColor.x + filterParams[0]);\n    gl_FragColor = vec4(Hsv2Rgb(hsvColor), originColor.a);\n}\n\n"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/graphics/SemHueImageFilter;->mHueShift:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemHueImageFilter;->useFilterParams()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemHueImageFilter;->setHueShift(F)V

    return-void
.end method

.method private calculateHueShiftParams(F)V
    .locals 3

    iput p1, p0, Lcom/samsung/android/graphics/SemHueImageFilter;->mHueShift:F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemHueImageFilter;->mParams:[F

    iget v1, p0, Lcom/samsung/android/graphics/SemHueImageFilter;->mHueShift:F

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    return-void
.end method

.method private static normalizeHueShift(F)F
    .locals 2

    const/high16 v1, 0x43b40000    # 360.0f

    :goto_0
    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    add-float/2addr p0, v1

    goto :goto_0

    :cond_0
    :goto_1
    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    sub-float/2addr p0, v1

    goto :goto_1

    :cond_1
    return p0
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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemHueImageFilter;->clone()Lcom/samsung/android/graphics/SemHueImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/SemHueImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemHueImageFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemHueImageFilter;->mHueShift:F

    iput v1, v0, Lcom/samsung/android/graphics/SemHueImageFilter;->mHueShift:F

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemHueImageFilter;->clone()Lcom/samsung/android/graphics/SemHueImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemHueImageFilter;->clone()Lcom/samsung/android/graphics/SemHueImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getHueShift()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemHueImageFilter;->mHueShift:F

    return v0
.end method

.method public setHueShift(F)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/graphics/SemHueImageFilter;->normalizeHueShift(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/graphics/SemHueImageFilter;->mHueShift:F

    invoke-static {v1, v0}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/SemHueImageFilter;->calculateHueShiftParams(F)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemHueImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemHueImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method public setHueShiftAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;-><init>(Lcom/samsung/android/graphics/SemHueImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemHueImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method
