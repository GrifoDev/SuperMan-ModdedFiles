.class public Landroid/filterpacks/imageproc/TintFilter;
.super Landroid/filterfw/core/Filter;
.source "TintFilter.java"


# instance fields
.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mTint:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tint"
    .end annotation
.end field

.field private final mTintShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 32
    const v0, -0xffff01

    iput v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mTint:I

    .line 35
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mTileSize:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mTarget:I

    .line 41
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 tint;\nuniform vec3 color_ratio;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float avg_color = dot(color_ratio, color.rgb);\n  vec3 new_color = min(0.8 * avg_color + 0.2 * tint, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    .line 40
    iput-object v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mTintShader:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private initParameters()V
    .locals 3

    .prologue
    .line 116
    const/4 v1, 0x3

    new-array v0, v1, [F

    .local v0, "color_ratio":[F
    fill-array-data v0, :array_0

    .line 117
    iget-object v1, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v2, "color_ratio"

    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    invoke-direct {p0}, Landroid/filterpacks/imageproc/TintFilter;->updateParameters()V

    .line 115
    return-void

    .line 116
    :array_0
    .array-data 4
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3d8f5c29    # 0.07f
    .end array-data
.end method

.method private updateParameters()V
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 123
    const/4 v1, 0x3

    new-array v0, v1, [F

    iget v1, p0, Landroid/filterpacks/imageproc/TintFilter;->mTint:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 124
    iget v1, p0, Landroid/filterpacks/imageproc/TintFilter;->mTint:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 125
    iget v1, p0, Landroid/filterpacks/imageproc/TintFilter;->mTint:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 127
    .local v0, "tint_color":[F
    iget-object v1, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v2, "tint"

    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Landroid/filterpacks/imageproc/TintFilter;->updateParameters()V

    .line 84
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 65
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 69
    packed-switch p2, :pswitch_data_0

    .line 77
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Filter Sharpen does not support frames of target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    const-string/jumbo v3, "!"

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 tint;\nuniform vec3 color_ratio;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float avg_color = dot(color_ratio, color.rgb);\n  vec3 new_color = min(0.8 * avg_color + 0.2 * tint, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 72
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/TintFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 73
    iput-object v0, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 80
    iput p2, p0, Landroid/filterpacks/imageproc/TintFilter;->mTarget:I

    .line 68
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 93
    const-string/jumbo v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 94
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 97
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/TintFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 98
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/TintFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 99
    invoke-direct {p0}, Landroid/filterpacks/imageproc/TintFilter;->initParameters()V

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 106
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/TintFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 109
    const-string/jumbo v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 112
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 91
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 59
    const-string/jumbo v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 60
    const-string/jumbo v0, "image"

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
