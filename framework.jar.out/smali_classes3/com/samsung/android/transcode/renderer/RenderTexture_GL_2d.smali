.class public Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;
.super Ljava/lang/Object;
.source "RenderTexture_GL_2d.java"


# static fields
.field private static final A_POSITION:Ljava/lang/String; = "a_Position"

.field private static final A_TEXTURE_COORDINATES:Ljava/lang/String; = "a_TextureCoordinates"

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field public static final PREPARE_FAILURE:I = 0x0

.field public static final PREPARE_SUCCESS:I = 0x1

.field private static final TEXTURE_FRAGMENT_SHADER_CODE:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D u_TextureUnit;\nvarying vec2 v_TextureCoordinates;\nvoid main(){ \ngl_FragColor = texture2D(u_TextureUnit, v_TextureCoordinates);\n}\n"

.field private static final TEXTURE_VERTEX_SHADER_CODE:Ljava/lang/String; = "uniform mat4 u_Matrix;\nattribute vec4 a_Position;\nattribute vec2 a_TextureCoordinates;\nvarying vec2 v_TextureCoordinates;\nvoid main(){\nv_TextureCoordinates = a_TextureCoordinates;\ngl_Position =u_Matrix*a_Position;\n}\n"

.field private static final U_MATRIX:Ljava/lang/String; = "u_Matrix"

.field private static final U_TEXTURE_UNIT:Ljava/lang/String; = "u_TextureUnit"

.field private static final VERTICES_DATA_POS_COUNT:I = 0x2

.field private static final VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final VERTICES_DATA_STRIDE_BYTES:I = 0x10

.field private static final VERTICES_DATA_TEX_COORD_COUNT:I = 0x2

.field private static final VERTICES_DATA_TEX_COORD_OFFSET:I = 0x2


# instance fields
.field private mProgram:I

.field private mTextureId:I

.field private final mVerticesData:[F

.field private mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

.field private ma_PositionHandle:I

.field private ma_TextureCoordinatesHandle:I

.field private mu_MatrixHandle:I

.field private mu_TextureUnitHandle:I

.field private final projectionMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-array v0, v6, [F

    aput v3, v0, v5

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v4, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v4, v0, v1

    const/16 v1, 0xc

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    iput-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesData:[F

    .line 76
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    .line 90
    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    .line 91
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesData:[F

    .line 94
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    .line 96
    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 98
    return-void
.end method

.method private deleteTexture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 275
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 276
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->deleteTexture(I)V

    .line 277
    iput v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    .line 278
    return-void
.end method


# virtual methods
.method public draw()V
    .locals 7

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x10

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 127
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 129
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mu_MatrixHandle:I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    invoke-static {v0, v5, v3, v6, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c0

    .line 131
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 132
    iget v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 133
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mu_TextureUnitHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 136
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    iget-object v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 137
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string/jumbo v0, "glEnableVertexAttribArray ma_PositionHandle"

    .line 138
    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 141
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    iget-object v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 142
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string/jumbo v0, "glEnableVertexAttribArray ma_TextureCoordinatesHandle"

    .line 143
    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    const/16 v0, 0xbe2

    .line 145
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    .line 146
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 148
    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Calling glFinish blocking call"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Finished glFinish"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public loadTexture(Landroid/graphics/Bitmap;II)I
    .locals 5

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 168
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    if-nez v0, :cond_0

    .line 171
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 172
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 173
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 176
    invoke-static {p1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    .line 177
    iget v2, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    if-eqz v2, :cond_1

    .line 182
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 183
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, p3

    div-float/2addr v0, v3

    .line 187
    cmpl-float v3, v2, v0

    if-ltz v3, :cond_2

    .line 188
    div-float/2addr v0, v2

    move v2, v1

    .line 193
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 194
    iget-object v3, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    invoke-static {v3, v4, v2, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 196
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    return v0

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->deleteTexture()V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v3, "not able to load new texture"

    .line 179
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    :cond_2
    div-float v0, v2, v0

    move v2, v0

    move v0, v1

    goto :goto_2
.end method

.method public loadTexture(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 209
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    if-nez v0, :cond_0

    .line 212
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 214
    invoke-static {p1, p2, p3, v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->loadTexture(Ljava/lang/String;IILandroid/graphics/Rect;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    .line 215
    iget v2, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    if-eqz v2, :cond_1

    .line 220
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 221
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, p3

    div-float/2addr v0, v3

    .line 225
    cmpl-float v3, v2, v0

    if-ltz v3, :cond_2

    .line 226
    div-float/2addr v0, v2

    move v2, v1

    .line 231
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 232
    iget-object v3, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    invoke-static {v3, v4, v2, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 234
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    return v0

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->deleteTexture()V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v3, "not able to load new texture"

    .line 217
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 229
    :cond_2
    div-float v0, v2, v0

    move v2, v0

    move v0, v1

    goto :goto_2
.end method

.method public prepare()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "uniform mat4 u_Matrix;\nattribute vec4 a_Position;\nattribute vec2 a_TextureCoordinates;\nvarying vec2 v_TextureCoordinates;\nvoid main(){\nv_TextureCoordinates = a_TextureCoordinates;\ngl_Position =u_Matrix*a_Position;\n}\n"

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D u_TextureUnit;\nvarying vec2 v_TextureCoordinates;\nvoid main(){ \ngl_FragColor = texture2D(u_TextureUnit, v_TextureCoordinates);\n}\n"

    .line 106
    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    .line 108
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    if-eqz v0, :cond_0

    .line 111
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string/jumbo v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mu_MatrixHandle:I

    .line 112
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string/jumbo v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    .line 113
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string/jumbo v1, "a_TextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    .line 114
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string/jumbo v1, "u_TextureUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mu_TextureUnitHandle:I

    .line 116
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/4 v0, 0x1

    .line 118
    return v0

    .line 109
    :cond_0
    return v3
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-direct {p0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->deleteTexture()V

    .line 285
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 286
    iput v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    .line 287
    iput v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mu_MatrixHandle:I

    .line 288
    iput v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    .line 289
    iput v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    .line 290
    iput v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mu_TextureUnitHandle:I

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    .line 292
    return-void
.end method

.method public setProjectionMatrixIdentity()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 271
    return-void
.end method

.method public setProjectionMatrixRotate(FFFF)V
    .locals 6

    .prologue
    .line 263
    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 264
    return-void
.end method

.method public setProjectionMatrixScale(FF)V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1, p2, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 244
    return-void
.end method

.method public setProjectionMatrixTranslate(FF)V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 253
    return-void
.end method
