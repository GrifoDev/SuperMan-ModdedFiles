.class public Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;
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

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\n\nvoid main(void) {\n    vec4 startColor = vec4(filterParams[1], filterParams[2], filterParams[3], filterParams[4]);\n    vec4 endColor = vec4(filterParams[5], filterParams[6], filterParams[7], filterParams[8]);\n    vec2 startPoint = vec2(filterParams[9], filterParams[10]);\n    vec2 endPoint = vec2(filterParams[11], filterParams[12]);\n    vec2 send = endPoint - startPoint;\n    vec2 scur = outTexCoords - startPoint;\n    float proj = dot(send, scur) / dot(send, send);\n    vec4 mask = mix(startColor, endColor, smoothstep(0.0, 1.0, proj));\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    mask.rgb *= mask.a;\n    gl_FragColor = mask + texColor * (1.0 - mask.a);\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\n\nvoid main(void) {\n   vec4 texColor = texture2D(baseSampler, outTexCoords);\n  vec4 maskColor = texture2D(maskSampler, outTexCoords);\n   vec4 domColor = vec4(filterParams[1], filterParams[2], filterParams[3], filterParams[4]) * texColor;\n float alpha = domColor.a * maskColor.a;\n  domColor.rgb = domColor.rgb * alpha;\n domColor.a = alpha;\n  gl_FragColor = domColor + texColor * (1.0 - domColor.a);\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeMask:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v2, 0x1

    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->useFilterParams()V

    sget-boolean v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    const-string/jumbo v1, "{0x%x}->SemBitmapColorMaskFilter()"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;->clone()Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    iput-boolean v1, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->clone()Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->clone()Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->clone()Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->clone()Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    move-result-object v0

    return-object v0
.end method

.method public enableGradient()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    iget-boolean v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    aput-object v0, v1, v4

    new-array v2, v3, [Ljava/lang/String;

    iget-boolean v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, v4

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->syncImageFilter()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->notifyWorkerFilters()V

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeMask:Ljava/lang/String;

    goto :goto_0
.end method

.method public getColor()[F
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-array v0, v6, [F

    invoke-virtual {p0, v3}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p0, v5}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    aput v1, v0, v4

    invoke-virtual {p0, v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    aput v1, v0, v5

    return-object v0
.end method

.method public getGradient()[F
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v1, 0xc

    new-array v0, v1, [F

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    sub-float v1, v3, v1

    aput v1, v0, v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    aput v1, v0, v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    aput v1, v0, v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    aput v1, v0, v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    sub-float v1, v3, v1

    const/4 v2, 0x7

    aput v1, v0, v2

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    return-object v0
.end method

.method public getGradientEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    return v0
.end method

.method public resetGradient()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    const-string/jumbo v1, "{0x%x}->SemBitmapColorMaskFilter.resetGradient()"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    iget-boolean v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    aput-object v0, v1, v4

    new-array v2, v5, [Ljava/lang/String;

    iget-boolean v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, v4

    invoke-virtual {p0, v5, v1, v2}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->syncImageFilter()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->notifyWorkerFilters()V

    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeMask:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string/jumbo v0, "maskSampler"

    invoke-super {p0, v0, p1}, Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setColor(FFFF)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-static {p3, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-static {p4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->resetGradient()V

    return-void
.end method

.method public setColor(I)V
    .locals 6

    const/high16 v5, 0x437f0000    # 255.0f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v5

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float v0, v4, v5

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setColor(FFFF)V

    return-void
.end method

.method public setGradient(FFIFFI)V
    .locals 9

    sget-boolean v4, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->sLogingEnabled:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "HWUI_IMAGE_FILTER"

    const-string/jumbo v5, "{0x%x}->SemBitmapColorMaskFilter.setGradient(%f,%f,0x%x,  %f, %f, 0x%x)"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->hashCode()I

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

    :cond_0
    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v3, v4, v5

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v2, v4, v5

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v1, v4, v5

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v0, v4, v5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-static {p6}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v3, v4, v5

    invoke-static {p6}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v2, v4, v5

    invoke-static {p6}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v1, v4, v5

    invoke-static {p6}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v0, v4, v5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/16 v5, 0x8

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    const/16 v4, 0x9

    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p2

    const/16 v5, 0xa

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    const/16 v4, 0xb

    invoke-virtual {p0, v4, p4}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p5

    const/16 v5, 0xc

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->enableGradient()V

    return-void
.end method
