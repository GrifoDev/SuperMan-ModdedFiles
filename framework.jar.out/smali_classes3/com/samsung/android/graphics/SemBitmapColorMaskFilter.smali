.class public Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemBitmapColorMaskFilter.java"


# static fields
.field private static final ALPHA:I = 0x4

.field private static final BLUE:I = 0x3

.field private static final ENABLE_GRADIENT:I = 0x0

.field private static final GRADIENT_ALPHA:I = 0x8

.field private static final GRADIENT_BLUE:I = 0x7

.field private static final GRADIENT_ENDX:I = 0xb

.field private static final GRADIENT_ENDY:I = 0xc

.field private static final GRADIENT_GREEN:I = 0x6

.field private static final GRADIENT_RED:I = 0x5

.field private static final GRADIENT_STARTX:I = 0x9

.field private static final GRADIENT_STARTY:I = 0xa

.field private static final GREEN:I = 0x2

.field private static final RED:I = 0x1

.field private static mFragmentShaderCodeGradient:Ljava/lang/String;

.field private static mFragmentShaderCodeMask:Ljava/lang/String;


# instance fields
.field private mGradientEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\n\nvoid main(void) {\n    vec4 startColor = vec4(filterParams[1], filterParams[2], filterParams[3], filterParams[4]);\n    vec4 endColor = vec4(filterParams[5], filterParams[6], filterParams[7], filterParams[8]);\n    vec2 startPoint = vec2(filterParams[9], filterParams[10]);\n    vec2 endPoint = vec2(filterParams[11], filterParams[12]);\n    vec2 send = endPoint - startPoint;\n    vec2 scur = outTexCoords - startPoint;\n    float proj = dot(send, scur) / dot(send, send);\n    vec4 mask = mix(startColor, endColor, smoothstep(0.0, 1.0, proj));\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    mask.rgb *= mask.a;\n    gl_FragColor = mask + texColor * (1.0 - mask.a);\n}\n\n"

    .line 41
    sput-object v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\n\nvoid main(void) {\n   vec4 texColor = texture2D(baseSampler, outTexCoords);\n  vec4 maskColor = texture2D(maskSampler, outTexCoords);\n   vec4 domColor = vec4(filterParams[1], filterParams[2], filterParams[3], filterParams[4]) * texColor;\n float alpha = domColor.a * maskColor.a;\n  domColor.rgb = domColor.rgb * alpha;\n domColor.a = alpha;\n  gl_FragColor = domColor + texColor * (1.0 - domColor.a);\n}\n\n"

    .line 69
    sput-object v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeMask:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 115
    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-boolean v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterParams()V

    .line 117
    sget-boolean v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    .line 118
    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    const-string/jumbo v1, "{0x%x}->SemBitmapColorMaskFilter()"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public animateEndColor(FFFFFFFFJJLandroid/animation/TimeInterpolator;)[I
    .locals 11
    .param p1, "aStartValueRed"    # F
    .param p2, "aEndValueRed"    # F
    .param p3, "aStartValueGreen"    # F
    .param p4, "aEndValueGreen"    # F
    .param p5, "aStartValueBlue"    # F
    .param p6, "aEndValueBlue"    # F
    .param p7, "aStartValueAlpha"    # F
    .param p8, "aEndValueAlpha"    # F
    .param p9, "aDuration"    # J
    .param p11, "aDelay"    # J
    .param p13, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 455
    new-instance v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p4

    move v5, p3

    move/from16 v6, p6

    move/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$2;-><init>(Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;FFFFFFFF)V

    move-object v2, p0

    move-object v3, v0

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    move-object/from16 v8, p13

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateEndColor(IIJJLandroid/animation/TimeInterpolator;)[I
    .locals 15
    .param p1, "aStartValueColor"    # I
    .param p2, "aEndValueColor"    # I
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 423
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

    .line 424
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

    .line 425
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

    .line 426
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

    .line 422
    invoke-virtual/range {v1 .. v14}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->animateEndColor(FFFFFFFFJJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateGradientEndX(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 585
    new-instance v1, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$5;-><init>(Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateGradientEndY(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 624
    new-instance v1, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$6;-><init>(Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateGradientStartX(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 507
    new-instance v1, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$3;-><init>(Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateGradientStartY(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 546
    new-instance v1, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$4;-><init>(Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateStartColor(FFFFFFFFJJLandroid/animation/TimeInterpolator;)[I
    .locals 11
    .param p1, "aStartValueRed"    # F
    .param p2, "aEndValueRed"    # F
    .param p3, "aStartValueGreen"    # F
    .param p4, "aEndValueGreen"    # F
    .param p5, "aStartValueBlue"    # F
    .param p6, "aEndValueBlue"    # F
    .param p7, "aStartValueAlpha"    # F
    .param p8, "aEndValueAlpha"    # F
    .param p9, "aDuration"    # J
    .param p11, "aDelay"    # J
    .param p13, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 370
    new-instance v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$1;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p4

    move v5, p3

    move/from16 v6, p6

    move/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$1;-><init>(Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;FFFFFFFF)V

    move-object v2, p0

    move-object v3, v0

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    move-object/from16 v8, p13

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateStartColor(IIJJLandroid/animation/TimeInterpolator;)[I
    .locals 15
    .param p1, "aStartValueColor"    # I
    .param p2, "aEndValueColor"    # I
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 338
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

    .line 339
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

    .line 340
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

    .line 341
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

    .line 337
    invoke-virtual/range {v1 .. v14}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->animateStartColor(FFFFFFFFJJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    .line 132
    .local v0, "imageFilter":Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    iput-boolean v1, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    .line 133
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
    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->clone()Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    move-result-object v0

    return-object v0
.end method

.method public enableGradient()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 311
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 312
    iget-boolean v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    if-nez v0, :cond_0

    .line 313
    iput-boolean v3, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    .line 314
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    aput-object v0, v1, v4

    new-array v2, v3, [Ljava/lang/String;

    iget-boolean v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, v4

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->syncImageFilter()V

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 310
    return-void

    .line 314
    :cond_1
    sget-object v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeMask:Ljava/lang/String;

    goto :goto_0
.end method

.method public getColor()[F
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 187
    new-array v0, v6, [F

    .line 188
    .local v0, "color":[F
    invoke-virtual {p0, v3}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 189
    invoke-virtual {p0, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    aput v1, v0, v3

    .line 190
    invoke-virtual {p0, v5}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    aput v1, v0, v4

    .line 191
    invoke-virtual {p0, v6}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    aput v1, v0, v5

    .line 192
    return-object v0
.end method

.method public getGradient()[F
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 252
    const/16 v1, 0xc

    new-array v0, v1, [F

    .line 254
    .local v0, "gradient":[F
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 255
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    sub-float v1, v3, v1

    aput v1, v0, v4

    .line 257
    invoke-virtual {p0, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    aput v1, v0, v5

    .line 258
    invoke-virtual {p0, v5}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    aput v1, v0, v6

    .line 259
    invoke-virtual {p0, v6}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    aput v1, v0, v7

    .line 260
    invoke-virtual {p0, v7}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 262
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 263
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    sub-float v1, v3, v1

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 265
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 266
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 267
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 268
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 270
    return-object v0
.end method

.method public getGradientEnabled()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    return v0
.end method

.method public resetGradient()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 282
    sget-boolean v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    .line 283
    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    const-string/jumbo v1, "{0x%x}->SemBitmapColorMaskFilter.resetGradient()"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 286
    iget-boolean v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    if-eqz v0, :cond_1

    .line 287
    iput-boolean v4, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    .line 288
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    aput-object v0, v1, v4

    new-array v2, v5, [Ljava/lang/String;

    iget-boolean v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, v4

    invoke-virtual {p0, v5, v1, v2}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->syncImageFilter()V

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 281
    return-void

    .line 288
    :cond_2
    sget-object v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeMask:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 144
    const-string/jumbo v0, "maskSampler"

    invoke-super {p0, v0, p1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 143
    return-void
.end method

.method public setColor(FFFF)V
    .locals 4
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 171
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 172
    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 173
    invoke-static {p3, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 174
    invoke-static {p4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setFilterParamsChanged()V

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->resetGradient()V

    .line 170
    return-void
.end method

.method public setColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 154
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    .line 155
    .local v3, "r":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, v5

    .line 156
    .local v2, "g":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v5

    .line 157
    .local v1, "b":F
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float v0, v4, v5

    .line 158
    .local v0, "a":F
    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setColor(FFFF)V

    .line 153
    return-void
.end method

.method public setGradient(FFIFFI)V
    .locals 9
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "startColor"    # I
    .param p4, "endX"    # F
    .param p5, "endY"    # F
    .param p6, "endColor"    # I

    .prologue
    .line 210
    sget-boolean v4, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->sLogingEnabled:Z

    if-eqz v4, :cond_0

    .line 211
    const-string/jumbo v4, "HWUI_IMAGE_FILTER"

    const-string/jumbo v5, "{0x%x}->SemBitmapColorMaskFilter.setGradient(%f,%f,0x%x,  %f, %f, 0x%x)"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v6, v8

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x6

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v3, v4, v5

    .line 215
    .local v3, "r":F
    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v2, v4, v5

    .line 216
    .local v2, "g":F
    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v1, v4, v5

    .line 217
    .local v1, "b":F
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v0, v4, v5

    .line 219
    .local v0, "a":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 220
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 221
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 222
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 224
    invoke-static {p6}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v3, v4, v5

    .line 225
    invoke-static {p6}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v2, v4, v5

    .line 226
    invoke-static {p6}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v1, v4, v5

    .line 227
    invoke-static {p6}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v0, v4, v5

    .line 229
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 230
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 231
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 232
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/16 v5, 0x8

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 234
    const/16 v4, 0x9

    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 235
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p2

    const/16 v5, 0xa

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 237
    const/16 v4, 0xb

    invoke-virtual {p0, v4, p4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 238
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p5

    const/16 v5, 0xc

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->enableGradient()V

    .line 208
    return-void
.end method
