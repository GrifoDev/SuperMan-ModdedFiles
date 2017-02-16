.class public Lcom/samsung/android/transcode/util/OpenGlHelper;
.super Ljava/lang/Object;
.source "OpenGlHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGLError(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 278
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    .line 281
    return v0

    :cond_0
    const-string/jumbo v1, "TranscodeLib"

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static compileFragmentShader(Ljava/lang/String;)I
    .locals 1

    .prologue
    const v0, 0x8b30

    .line 53
    invoke-static {v0, p0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static compileShader(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 65
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 66
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v1, 0x1

    .line 68
    new-array v1, v1, [I

    const v2, 0x8b81

    .line 69
    invoke-static {v0, v2, v1, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 70
    aget v1, v1, v4

    if-eqz v1, :cond_1

    .line 78
    return v0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shader type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " creation failded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    .line 62
    return v4

    :cond_1
    const-string/jumbo v1, "TranscodeLib"

    .line 72
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

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 75
    return v4
.end method

.method private static compileVertexShader(Ljava/lang/String;)I
    .locals 1

    .prologue
    const v0, 0x8b31

    .line 50
    invoke-static {v0, p0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-static {p0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->compileVertexShader(Ljava/lang/String;)I

    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 31
    invoke-static {p1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->compileFragmentShader(Ljava/lang/String;)I

    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 37
    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->linkProgram(II)I

    move-result v1

    .line 43
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 44
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 46
    return v1

    .line 29
    :cond_0
    return v2

    .line 33
    :cond_1
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 34
    return v2
.end method

.method public static deleteTexture(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 260
    new-array v0, v2, [I

    aput p0, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 261
    return-void
.end method

.method public static deleteTexture([I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 268
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 269
    return-void
.end method

.method private static getOptimalSamplingSize(Ljava/lang/String;III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 149
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 150
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 152
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 155
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    .line 156
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v0

    .line 158
    int-to-float v0, p1

    div-float v0, v1, v0

    .line 159
    int-to-float v1, p2

    div-float v1, v2, v1

    .line 161
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 163
    return v0

    :cond_0
    move v0, v1

    .line 161
    goto :goto_0
.end method

.method private static linkProgram(II)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 84
    if-eqz v0, :cond_0

    .line 90
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 91
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 93
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v1, 0x1

    .line 95
    new-array v1, v1, [I

    const v2, 0x8b82

    .line 96
    invoke-static {v0, v2, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 98
    aget v1, v1, v4

    if-eqz v1, :cond_1

    .line 105
    return v0

    :cond_0
    const-string/jumbo v0, "CreateProgram failed"

    .line 86
    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    .line 87
    return v4

    :cond_1
    const-string/jumbo v1, "TranscodeLib"

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t link program :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 102
    return v4
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;)I
    .locals 7

    .prologue
    const v6, 0x47012f00    # 33071.0f

    const/4 v5, 0x1

    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 173
    new-array v0, v5, [I

    .line 175
    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 177
    aget v1, v0, v3

    if-eqz v1, :cond_0

    .line 183
    aget v1, v0, v3

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string/jumbo v1, "glBindTexture error"

    .line 186
    invoke-static {v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x2801

    const/16 v2, 0x2703

    .line 192
    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    .line 193
    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    .line 194
    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    .line 195
    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const-string/jumbo v1, "glTexParameter error"

    .line 197
    invoke-static {v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 203
    invoke-static {v4, v3, p0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const-string/jumbo v1, "texImage2D error"

    .line 206
    invoke-static {v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 211
    invoke-static {v4}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 212
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 214
    aget v0, v0, v3

    return v0

    :cond_0
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Could not create new opengl texture object"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v3

    .line 187
    :cond_1
    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 188
    return v3

    .line 198
    :cond_2
    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 199
    return v3

    .line 207
    :cond_3
    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 208
    return v3
.end method

.method public static loadTexture(Ljava/lang/String;IILandroid/graphics/Rect;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 119
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Orientation"

    const/4 v2, 0x1

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 122
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 123
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->getOptimalSamplingSize(Ljava/lang/String;III)I

    move-result v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 126
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 135
    iput v3, p3, Landroid/graphics/Rect;->left:I

    .line 136
    iput v3, p3, Landroid/graphics/Rect;->top:I

    .line 137
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 140
    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    return v1

    :cond_0
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Could not decode bitmap. error."

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v3
.end method

.method public static loadTextureOES()I
    .locals 7

    .prologue
    const v6, 0x812f

    const/4 v5, 0x1

    const v4, 0x8d65

    const/4 v3, 0x0

    .line 223
    new-array v0, v5, [I

    .line 225
    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 226
    aget v1, v0, v3

    if-eqz v1, :cond_0

    .line 232
    aget v1, v0, v3

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string/jumbo v1, "glBindTexture error"

    .line 234
    invoke-static {v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    .line 240
    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    .line 241
    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    .line 242
    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 243
    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string/jumbo v1, "External OES parameter set error."

    .line 246
    invoke-static {v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 252
    aget v0, v0, v3

    return v0

    :cond_0
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Could not create new opengl oes texture object"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v3

    .line 235
    :cond_1
    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 236
    return v3

    .line 247
    :cond_2
    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 248
    return v3
.end method
