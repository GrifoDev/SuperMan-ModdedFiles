.class public Lcom/samsung/android/graphics/SemZoomBlurFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemZoomBlurFilter.java"


# static fields
.field private static final QUALITY:I = 0x1

.field private static final ZOOM:I

.field private static mFragmentShaderCode:Ljava/lang/String;

.field private static mVertexShaderCode:Ljava/lang/String;


# instance fields
.field private mQuality:I

.field private mZoom:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemZoomBlurFilter;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mQuality:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/graphics/SemZoomBlurFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mZoom:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemZoomBlurFilter;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mQuality:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/graphics/SemZoomBlurFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mZoom:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = position;\n}\n"

    sput-object v0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mVertexShaderCode:Ljava/lang/String;

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float filterData01[64];\nvoid main(void) {\nvec2 xy = 2.0 * outTexCoords.xy - 1.0;\nvec2 uv = outTexCoords;\nvec2 dir = 0.5 - uv;\nfloat dist = sqrt(dir.x*dir.x + dir.y*dir.y);\ndir = dir/dist;\nvec4 color = texture2D(baseSampler,uv);\nfloat scaledStep = 0.0;\nvec4 sum = color;\nfor(int i = 0; i < int(filterParams[1])/2; i++){\n   sum += texture2D( baseSampler, uv + dir * -filterData01[i]);\n   sum += texture2D( baseSampler, uv + dir * filterData01[i]);\n}\nsum *= 1.0/filterParams[1];\nfloat t = dist * filterParams[0];\nt = clamp( t ,0.0, 1.0);\ngl_FragColor = mix( color, sum, t );\n}\n"

    sput-object v0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mFragmentShaderCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mVertexShaderCode:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mZoom:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mQuality:I

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterParams()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterData01()V

    return-void
.end method

.method private computeZoomBlur()V
    .locals 4

    const/16 v3, 0x40

    const/16 v2, 0xa

    iget v1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mQuality:I

    if-ge v1, v2, :cond_0

    iput v2, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mQuality:I

    :cond_0
    iget v1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mQuality:I

    if-le v1, v3, :cond_1

    iput v3, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mQuality:I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mQuality:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mData1:[F

    iget v2, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mQuality:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterData01Changed()V

    iget v1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mZoom:F

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    iget v1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mQuality:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    return-void
.end method

.method private paramsChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemZoomBlurFilter;->computeZoomBlur()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    return-void
.end method


# virtual methods
.method public animateQuality(IIJJLandroid/animation/TimeInterpolator;)[I
    .locals 7

    new-instance v1, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemZoomBlurFilter$2;-><init>(Lcom/samsung/android/graphics/SemZoomBlurFilter;II)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateZoom(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7

    new-instance v1, Lcom/samsung/android/graphics/SemZoomBlurFilter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemZoomBlurFilter$1;-><init>(Lcom/samsung/android/graphics/SemZoomBlurFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public setPivot(FF)V
    .locals 0

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mQuality:I

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemZoomBlurFilter;->paramsChanged()V

    return-void
.end method

.method public setZoomRatio(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemZoomBlurFilter;->mZoom:F

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemZoomBlurFilter;->paramsChanged()V

    return-void
.end method
