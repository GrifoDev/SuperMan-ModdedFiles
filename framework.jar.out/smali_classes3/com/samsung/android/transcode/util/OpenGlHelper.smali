.class public Lcom/samsung/android/transcode/util/OpenGlHelper;
.super Ljava/lang/Object;
.source "OpenGlHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGLError(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TranscodeLib"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static compileFragmentShader(Ljava/lang/String;)I
    .locals 1

    const v0, 0x8b30

    invoke-static {v0, p0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static compileShader(ILjava/lang/String;)I
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x8b81

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v0, v4

    if-eqz v2, :cond_1

    return v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shader type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " creation failded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    return v4

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TranscodeLib"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v4
.end method

.method private static compileVertexShader(Ljava/lang/String;)I
    .locals 1

    const v0, 0x8b31

    invoke-static {v0, p0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->compileVertexShader(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->compileFragmentShader(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->linkProgram(II)I

    move-result v1

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v1

    :cond_0
    return v3

    :cond_1
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v3
.end method

.method public static deleteTexture(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [I

    aput p0, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static deleteTexture([I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method private static getOptimalSamplingSize(Ljava/lang/String;III)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v6

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v6

    int-to-float v6, p1

    div-float v1, v5, v6

    int-to-float v6, p2

    div-float v0, v2, v6

    cmpl-float v6, v1, v0

    if-ltz v6, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private static linkProgram(II)I
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x8b82

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v0, v4

    if-eqz v2, :cond_1

    return v1

    :cond_0
    const-string/jumbo v2, "CreateProgram failed"

    invoke-static {v2}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    return v4

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t link program :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TranscodeLib"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return v4
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;)I
    .locals 7

    const/16 v6, 0x2601

    const v5, 0x47012f00    # 33071.0f

    const/4 v4, 0x1

    const/16 v2, 0xde1

    const/4 v3, 0x0

    new-array v0, v4, [I

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v0, v3

    if-eqz v1, :cond_0

    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string/jumbo v1, "glBindTexture error"

    invoke-static {v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x2801

    invoke-static {v2, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    invoke-static {v2, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const-string/jumbo v1, "glTexParameter error"

    invoke-static {v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2, v3, p0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const-string/jumbo v1, "texImage2D error"

    invoke-static {v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    aget v1, v0, v3

    return v1

    :cond_0
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Could not create new opengl texture object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return v3

    :cond_2
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return v3

    :cond_3
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return v3
.end method

.method public static loadTexture(Ljava/lang/String;IILandroid/graphics/Rect;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "Orientation"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {p0, p1, p2, v3}, Lcom/samsung/android/transcode/util/OpenGlHelper;->getOptimalSamplingSize(Ljava/lang/String;III)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iput v7, p3, Landroid/graphics/Rect;->left:I

    iput v7, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return v4

    :cond_0
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "Could not decode bitmap. error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public static loadTextureOES()I
    .locals 7

    const v6, 0x812f

    const v5, 0x46180400    # 9729.0f

    const/4 v4, 0x1

    const v2, 0x8d65

    const/4 v3, 0x0

    new-array v0, v4, [I

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v0, v3

    if-eqz v1, :cond_0

    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string/jumbo v1, "glBindTexture error"

    invoke-static {v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x2801

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    invoke-static {v2, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {v2, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string/jumbo v1, "External OES parameter set error."

    invoke-static {v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    aget v1, v0, v3

    return v1

    :cond_0
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Could not create new opengl oes texture object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return v3

    :cond_2
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return v3
.end method
