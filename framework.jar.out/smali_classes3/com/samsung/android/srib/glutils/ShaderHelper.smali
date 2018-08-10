.class public Lcom/samsung/android/srib/glutils/ShaderHelper;
.super Ljava/lang/Object;
.source "ShaderHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShaderHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/srib/glutils/ShaderHelper;->compileVertexShader(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Lcom/samsung/android/srib/glutils/ShaderHelper;->compileFragmentShader(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/samsung/android/srib/glutils/ShaderHelper;->linkProgram(II)I

    move-result v1

    return v1
.end method

.method public static compileFragmentShader(Ljava/lang/String;)I
    .locals 1

    const v0, 0x8b30

    invoke-static {v0, p0}, Lcom/samsung/android/srib/glutils/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static compileShader(ILjava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v0, v3

    if-eqz v2, :cond_1

    return v1

    :cond_0
    return v3

    :cond_1
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v3
.end method

.method public static compileVertexShader(Ljava/lang/String;)I
    .locals 1

    const v0, 0x8b31

    invoke-static {v0, p0}, Lcom/samsung/android/srib/glutils/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static linkProgram(II)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x8b82

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v0, v3

    if-eqz v2, :cond_1

    return v1

    :cond_0
    return v3

    :cond_1
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return v3
.end method

.method public static validateProgram(I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    new-array v0, v2, [I

    const v3, 0x8b83

    invoke-static {p0, v3, v0, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Results of validating program: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\nLog:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ShaderHelper"

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    aget v3, v0, v1

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
