.class public Landroid/filterpacks/imageproc/RotateFilter;
.super Landroid/filterfw/core/Filter;
.source "RotateFilter.java"


# instance fields
.field private mAngle:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "angle"
    .end annotation
.end field

.field private mHeight:I

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 40
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTileSize:I

    .line 44
    iput v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    .line 45
    iput v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    .line 46
    iput v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    .line 51
    return-void
.end method

.method private updateParameters()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 125
    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    rem-int/lit8 v7, v7, 0x5a

    if-nez v7, :cond_3

    .line 126
    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    rem-int/lit16 v7, v7, 0xb4

    if-nez v7, :cond_1

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "sinTheta":F
    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    rem-int/lit16 v7, v7, 0x168

    if-nez v7, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 140
    .local v0, "cosTheta":F
    :goto_0
    new-instance v3, Landroid/filterfw/geometry/Point;

    neg-float v7, v0

    add-float/2addr v7, v2

    add-float/2addr v7, v10

    mul-float/2addr v7, v9

    .line 141
    neg-float v8, v2

    sub-float/2addr v8, v0

    add-float/2addr v8, v10

    mul-float/2addr v8, v9

    .line 140
    invoke-direct {v3, v7, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 142
    .local v3, "x0":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    add-float v7, v0, v2

    add-float/2addr v7, v10

    mul-float/2addr v7, v9

    .line 143
    sub-float v8, v2, v0

    add-float/2addr v8, v10

    mul-float/2addr v8, v9

    .line 142
    invoke-direct {v4, v7, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 144
    .local v4, "x1":Landroid/filterfw/geometry/Point;
    new-instance v5, Landroid/filterfw/geometry/Point;

    neg-float v7, v0

    sub-float/2addr v7, v2

    add-float/2addr v7, v10

    mul-float/2addr v7, v9

    .line 145
    neg-float v8, v2

    add-float/2addr v8, v0

    add-float/2addr v8, v10

    mul-float/2addr v8, v9

    .line 144
    invoke-direct {v5, v7, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 146
    .local v5, "x2":Landroid/filterfw/geometry/Point;
    new-instance v6, Landroid/filterfw/geometry/Point;

    sub-float v7, v0, v2

    add-float/2addr v7, v10

    mul-float/2addr v7, v9

    .line 147
    add-float v8, v2, v0

    add-float/2addr v8, v10

    mul-float/2addr v8, v9

    .line 146
    invoke-direct {v6, v7, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 148
    .local v6, "x3":Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Quad;

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 149
    .local v1, "quad":Landroid/filterfw/geometry/Quad;
    iget-object v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast v7, Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v7, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    .line 121
    return-void

    .line 128
    .end local v0    # "cosTheta":F
    .end local v1    # "quad":Landroid/filterfw/geometry/Quad;
    .end local v3    # "x0":Landroid/filterfw/geometry/Point;
    .end local v4    # "x1":Landroid/filterfw/geometry/Point;
    .end local v5    # "x2":Landroid/filterfw/geometry/Point;
    .end local v6    # "x3":Landroid/filterfw/geometry/Point;
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .restart local v0    # "cosTheta":F
    goto :goto_0

    .line 130
    .end local v0    # "cosTheta":F
    .end local v2    # "sinTheta":F
    :cond_1
    const/4 v0, 0x0

    .line 131
    .restart local v0    # "cosTheta":F
    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    add-int/lit8 v7, v7, 0x5a

    rem-int/lit16 v7, v7, 0x168

    if-nez v7, :cond_2

    const/high16 v2, -0x40800000    # -1.0f

    .line 133
    .restart local v2    # "sinTheta":F
    :goto_1
    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    iput v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    .line 134
    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    iput v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    goto :goto_0

    .line 131
    .end local v2    # "sinTheta":F
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "sinTheta":F
    goto :goto_1

    .line 137
    .end local v0    # "cosTheta":F
    .end local v2    # "sinTheta":F
    :cond_3
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "degree has to be multiply of 90."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 79
    iget-object v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Landroid/filterpacks/imageproc/RotateFilter;->updateParameters()V

    .line 78
    :cond_0
    return-void
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 62
    packed-switch p2, :pswitch_data_0

    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Filter Sharpen does not support frames of target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 72
    const-string/jumbo v3, "!"

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :pswitch_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    .line 65
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 67
    iput-object v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 74
    iput p2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    .line 61
    return-void

    .line 62
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v6, 0x3

    .line 87
    const-string/jumbo v4, "image"

    invoke-virtual {p0, v4}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 88
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 91
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    if-eq v4, v5, :cond_1

    .line 92
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/RotateFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 95
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    if-eq v4, v5, :cond_3

    .line 96
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iput v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    .line 97
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iput v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    .line 98
    iget v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    iput v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    .line 99
    iget v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    iput v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    .line 101
    invoke-direct {p0}, Landroid/filterpacks/imageproc/RotateFilter;->updateParameters()V

    .line 105
    :cond_3
    iget v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    iget v5, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    invoke-static {v4, v5, v6, v6}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    .line 109
    .local v3, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 112
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 115
    const-string/jumbo v4, "image"

    invoke-virtual {p0, v4, v2}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 118
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 85
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 58
    const-string/jumbo v0, "image"

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
