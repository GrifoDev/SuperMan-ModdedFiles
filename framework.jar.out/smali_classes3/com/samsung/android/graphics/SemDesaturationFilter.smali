.class public Lcom/samsung/android/graphics/SemDesaturationFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemDesaturationFilter.java"


# static fields
.field private static final DESATURATION:I = 0x0

.field private static final MAX_DESATURATION:F = 1.0f

.field private static mFragmentShaderCode:Ljava/lang/String;


# instance fields
.field private mDesaturation:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemDesaturationFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDesaturationFilter;->mDesaturation:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemDesaturationFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemDesaturationFilter;->mDesaturation:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nvoid main(void) {\n     vec4 texColor = texture2D(baseSampler, outTexCoords);\n    float lum = dot(vec3(0.2126,0.7152,0.0722), texColor.rgb);\n   vec4 grayColor = vec4(lum, lum, lum, texColor.a);\n    gl_FragColor = mix(grayColor, texColor, filterParams[0]);\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemDesaturationFilter;->mFragmentShaderCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Lcom/samsung/android/graphics/SemDesaturationFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemDesaturationFilter;->mDesaturation:F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemDesaturationFilter;->setSaturation(F)V

    return-void
.end method


# virtual methods
.method public animateSaturation(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7

    new-instance v1, Lcom/samsung/android/graphics/SemDesaturationFilter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemDesaturationFilter$1;-><init>(Lcom/samsung/android/graphics/SemDesaturationFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public setSaturation(F)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/graphics/SemDesaturationFilter;->mDesaturation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/graphics/SemDesaturationFilter;->mDesaturation:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/samsung/android/graphics/SemDesaturationFilter;->mDesaturation:F

    :goto_0
    iget v0, p0, Lcom/samsung/android/graphics/SemDesaturationFilter;->mDesaturation:F

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/graphics/SemDesaturationFilter;->mDesaturation:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Lcom/samsung/android/graphics/SemDesaturationFilter;->mDesaturation:F

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/samsung/android/graphics/SemDesaturationFilter;->mDesaturation:F

    goto :goto_0
.end method
