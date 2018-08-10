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

    const/16 v6, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    new-array v0, v6, [F

    iput-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private deleteTexture()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xde1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->deleteTexture(I)V

    iput v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 7

    const/16 v2, 0x1406

    const/16 v4, 0x10

    const/4 v1, 0x2

    const/4 v3, 0x0

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mu_MatrixHandle:I

    iget-object v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v6, 0x1

    invoke-static {v0, v6, v3, v5, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    const/16 v5, 0xde1

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mu_TextureUnitHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    iget-object v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string/jumbo v0, "glEnableVertexAttribArray ma_PositionHandle"

    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    iget-object v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string/jumbo v0, "glEnableVertexAttribArray ma_TextureCoordinatesHandle"

    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Calling glFinish blocking call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Finished glFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loadTexture(Landroid/graphics/Bitmap;II)I
    .locals 8

    const/4 v7, 0x0

    iget v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    if-nez v5, :cond_0

    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput v7, v2, Landroid/graphics/Rect;->left:I

    iput v7, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    iget v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p2

    div-float v1, v5, v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p3

    div-float v0, v5, v6

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v0

    if-ltz v5, :cond_2

    div-float v4, v0, v1

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    invoke-static {v5, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v7, v3, v4, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    return v5

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->deleteTexture()V

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "not able to load new texture"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    div-float v3, v1, v0

    goto :goto_2
.end method

.method public loadTexture(Ljava/lang/String;II)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    iget v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    if-nez v5, :cond_0

    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, p2, p3, v2}, Lcom/samsung/android/transcode/util/OpenGlHelper;->loadTexture(Ljava/lang/String;IILandroid/graphics/Rect;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    iget v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p2

    div-float v1, v5, v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p3

    div-float v0, v5, v6

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v0

    if-ltz v5, :cond_2

    div-float v4, v0, v1

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    invoke-static {v5, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v7, v3, v4, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget v5, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mTextureId:I

    return v5

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->deleteTexture()V

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "not able to load new texture"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    div-float v3, v1, v0

    goto :goto_2
.end method

.method public prepare()I
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "uniform mat4 u_Matrix;\nattribute vec4 a_Position;\nattribute vec2 a_TextureCoordinates;\nvarying vec2 v_TextureCoordinates;\nvoid main(){\nv_TextureCoordinates = a_TextureCoordinates;\ngl_Position =u_Matrix*a_Position;\n}\n"

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D u_TextureUnit;\nvarying vec2 v_TextureCoordinates;\nvoid main(){ \ngl_FragColor = texture2D(u_TextureUnit, v_TextureCoordinates);\n}\n"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string/jumbo v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mu_MatrixHandle:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string/jumbo v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string/jumbo v1, "a_TextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string/jumbo v1, "u_TextureUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mu_TextureUnitHandle:I

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->deleteTexture()V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iput v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mProgram:I

    iput v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mu_MatrixHandle:I

    iput v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    iput v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    iput v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mu_TextureUnitHandle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public setProjectionMatrixIdentity()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public setProjectionMatrixRotate(FFFF)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method public setProjectionMatrixScale(FF)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1, p2, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setProjectionMatrixTranslate(FF)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method
