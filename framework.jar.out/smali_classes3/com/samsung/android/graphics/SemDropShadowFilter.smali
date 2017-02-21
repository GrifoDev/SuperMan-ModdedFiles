.class public Lcom/samsung/android/graphics/SemDropShadowFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemDropShadowFilter.java"


# static fields
.field private static final ALPHA:I = 0x6

.field private static final BLUE:I = 0x5

.field private static final CYCLES_COUNT:I = 0x7

.field private static final DIRECTION_X:I = 0x1

.field private static final DIRECTION_Y:I = 0x2

.field private static final DISTANCE:I = 0x0

.field private static final GREEN:I = 0x4

.field private static final RED:I = 0x3

.field private static final SHORTDISTANCE:I = 0x8

.field private static mFragmentShaderCode:[Ljava/lang/String;


# instance fields
.field private mAngle:F

.field private mDistance:F

.field private mQuality:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemDropShadowFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mAngle:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/graphics/SemDropShadowFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mDistance:F

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/graphics/SemDropShadowFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mQuality:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemDropShadowFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mAngle:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/graphics/SemDropShadowFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mDistance:F

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/graphics/SemDropShadowFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mQuality:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "precision highp float;\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    vec2 uv = vec2(outTexCoords);\n    float c = areaW / areaH;\n    vec2 vDirection = vec2(filterParams[1] / areaW, filterParams[2] / areaH);\n    if(areaW>areaH) vDirection.y*=c; else vDirection.x/=c; \n    vec4 savedColor = texture2D(baseSampler, uv);\n    if (savedColor.a != 1.0) {\n        float ccl = filterParams[7];\n        for (float i = 0.0; i < ccl; i += 1.0) {\n                uv -= vDirection;\n                if (uv.x<0.0 || uv.x>1.0 || uv.y<0.0 || uv.y>1.0)\n                   i = ccl;\n                if (texture2D(baseSampler, uv).a == 1.0) {                   savedColor = savedColor + vec4(filterParams[3], filterParams[4], filterParams[5], filterParams[6]) * (1.0 - savedColor.a) * (1.0-i/ccl);\n                   i = ccl;\n                }\n        }\n    }\n    gl_FragColor = savedColor;\n}\n\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mFragmentShaderCode:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, -0x3ee00000    # -10.0f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/graphics/SemDropShadowFilter;->mFragmentShaderCode:[Ljava/lang/String;

    invoke-direct {p0, v6, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    iput v4, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mAngle:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mDistance:F

    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mQuality:F

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemDropShadowFilter;->setDistance(F)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/graphics/SemDropShadowFilter;->setAngle(F)V

    invoke-virtual {p0, v2, v5, v5, v2}, Lcom/samsung/android/graphics/SemDropShadowFilter;->setShadowColor(FFFF)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemDropShadowFilter;->setQuality(F)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemCustomFilter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/SemCustomFilter;->setValue(IF)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemCustomFilter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/SemCustomFilter;->setValue(IF)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemCustomFilter;

    const/4 v1, 0x6

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/SemCustomFilter;->setValue(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDropShadowFilter;->preSetupShader()V

    return-void
.end method


# virtual methods
.method public animateAngle(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7

    new-instance v1, Lcom/samsung/android/graphics/SemDropShadowFilter$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemDropShadowFilter$3;-><init>(Lcom/samsung/android/graphics/SemDropShadowFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateDistance(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7

    new-instance v1, Lcom/samsung/android/graphics/SemDropShadowFilter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemDropShadowFilter$2;-><init>(Lcom/samsung/android/graphics/SemDropShadowFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateQuality(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7

    new-instance v1, Lcom/samsung/android/graphics/SemDropShadowFilter$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemDropShadowFilter$4;-><init>(Lcom/samsung/android/graphics/SemDropShadowFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateShadowColor(FFFFFFFFJJLandroid/animation/TimeInterpolator;)[I
    .locals 11

    new-instance v0, Lcom/samsung/android/graphics/SemDropShadowFilter$1;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p4

    move v5, p3

    move/from16 v6, p6

    move/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/SemDropShadowFilter$1;-><init>(Lcom/samsung/android/graphics/SemDropShadowFilter;FFFFFFFF)V

    move-object v2, p0

    move-object v3, v0

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    move-object/from16 v8, p13

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateShadowColor(IIJJLandroid/animation/TimeInterpolator;)[I
    .locals 15

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v2, v0, v1

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v3, v0, v1

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v4, v0, v1

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v5, v0, v1

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v6, v0, v1

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v7, v0, v1

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v8, v0, v1

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v9, v0, v1

    move-object v1, p0

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    invoke-virtual/range {v1 .. v14}, Lcom/samsung/android/graphics/SemDropShadowFilter;->animateShadowColor(FFFFFFFFJJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/SemDropShadowFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemDropShadowFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mAngle:F

    iput v1, v0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mAngle:F

    iget v1, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mDistance:F

    iput v1, v0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mDistance:F

    iget v1, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mQuality:F

    iput v1, v0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mQuality:F

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDropShadowFilter;->clone()Lcom/samsung/android/graphics/SemDropShadowFilter;

    move-result-object v0

    return-object v0
.end method

.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mAngle:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mDistance:F

    return v0
.end method

.method public getQuality()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mQuality:F

    return v0
.end method

.method public getShadowColor()[F
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    new-array v0, v4, [F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    aget v1, v1, v3

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    aget v1, v1, v4

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    aput v1, v0, v3

    return-object v0
.end method

.method protected preSetupShader()V
    .locals 6

    iget v4, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mAngle:F

    const/high16 v5, 0x43340000    # 180.0f

    div-float/2addr v4, v5

    const v5, 0x40490fd8

    mul-float v1, v4, v5

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    iget v4, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mDistance:F

    iget v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mQuality:F

    div-float v0, v4, v5

    mul-float/2addr v2, v0

    mul-float/2addr v3, v0

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    iget v4, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mQuality:F

    const/4 v5, 0x7

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method public setAngle(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mAngle:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDropShadowFilter;->preSetupShader()V

    return-void
.end method

.method public setDistance(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mDistance:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDropShadowFilter;->preSetupShader()V

    :cond_0
    return-void
.end method

.method public setQuality(F)V
    .locals 3

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    add-float v0, v2, v1

    float-to-int v1, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/graphics/SemDropShadowFilter;->mQuality:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDropShadowFilter;->preSetupShader()V

    return-void
.end method

.method public setShadowColor(FFFF)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    invoke-static {p4, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemDropShadowFilter;->preSetupShader()V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 5

    const/high16 v4, 0x437f0000    # 255.0f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemDropShadowFilter;->setShadowColor(FFFF)V

    return-void
.end method
