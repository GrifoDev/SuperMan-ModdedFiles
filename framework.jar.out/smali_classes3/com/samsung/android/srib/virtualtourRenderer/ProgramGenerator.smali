.class public Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;
.super Ljava/lang/Object;
.source "ProgramGenerator.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private TRANSITION:Lcom/samsung/android/srib/virtualtourAPI/Transition;

.field private mFragmentShader:Ljava/lang/String;

.field private mProgram:I

.field private mVertexShader:Ljava/lang/String;

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muAlphaHandle:I

.field private muBoundHandle1:I

.field private muBoundHandle2:I

.field private muDirectionHandle:I

.field private muMVPMatrixHandle:I

.field private muTurnAlphaHandle:I

.field private muTurnNumberHandle:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/srib/virtualtourAPI/Transition;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ProgramGenerator"

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mVertexShader:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mFragmentShader:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mFragmentShader:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mProgram:I

    iput-object p3, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TRANSITION:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mProgram:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mProgram:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->maPositionHandle:I

    const-string/jumbo v0, "glGetAttribLocation aPosition"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->maPositionHandle:I

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mProgram:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->maTextureHandle:I

    const-string/jumbo v0, "glGetAttribLocation aTextureCoord"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->maTextureHandle:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mProgram:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muMVPMatrixHandle:I

    const-string/jumbo v0, "glGetUniformLocation uMVPMatrix"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muMVPMatrixHandle:I

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TRANSITION:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TRANSITION:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_8

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TRANSITION:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->HELPER:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_b

    :cond_2
    return-void

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error while getting aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error while getting aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error while getting uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mProgram:I

    const-string/jumbo v1, "utext_alpha_out"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muAlphaHandle:I

    const-string/jumbo v0, "glGetUniformLocation utext_alpha_out"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muAlphaHandle:I

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error while getting utext_alpha_out"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mProgram:I

    const-string/jumbo v1, "uAlpha_value"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muTurnAlphaHandle:I

    const-string/jumbo v0, "glGetUniformLocation uAlpha_value"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muTurnAlphaHandle:I

    if-eq v0, v2, :cond_9

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mProgram:I

    const-string/jumbo v1, "uBound1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muBoundHandle1:I

    const-string/jumbo v0, "glGetUniformLocation uBound1"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muBoundHandle1:I

    if-eq v0, v2, :cond_a

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mProgram:I

    const-string/jumbo v1, "uDirection"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muDirectionHandle:I

    const-string/jumbo v0, "glGetUniformLocation udirection"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muDirectionHandle:I

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error while getting udirection"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error while getting uAlpha_value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error while getting uBound1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mProgram:I

    const-string/jumbo v1, "uAlpha_value"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muTurnAlphaHandle:I

    const-string/jumbo v0, "glGetUniformLocation uAlpha_value"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muTurnAlphaHandle:I

    if-eq v0, v2, :cond_c

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mProgram:I

    const-string/jumbo v1, "uBound1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muBoundHandle1:I

    const-string/jumbo v0, "glGetUniformLocation uBound1"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muBoundHandle1:I

    if-eq v0, v2, :cond_d

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mProgram:I

    const-string/jumbo v1, "uDirection"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muDirectionHandle:I

    const-string/jumbo v0, "glGetUniformLocation udirection"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muDirectionHandle:I

    if-eq v0, v2, :cond_e

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mProgram:I

    const-string/jumbo v1, "uBound2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muBoundHandle2:I

    const-string/jumbo v0, "glGetUniformLocation uBound2"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muBoundHandle2:I

    if-eq v0, v2, :cond_f

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mProgram:I

    const-string/jumbo v1, "uTurnNumber"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muTurnNumberHandle:I

    const-string/jumbo v0, "glGetUniformLocation uTurnNumber"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muTurnNumberHandle:I

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error while getting uTurnNumber"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error while getting uAlpha_value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error while getting uBound1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error while getting udirection"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error while getting uBound2"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x8b31

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->loadShader(ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const v4, 0x8b30

    invoke-direct {p0, v4, p2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->loadShader(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    :goto_0
    return v2

    :cond_1
    return v5

    :cond_2
    return v5

    :cond_3
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string/jumbo v4, "glAttachShader"

    invoke-direct {p0, v4}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->checkGlError(Ljava/lang/String;)V

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string/jumbo v4, "glAttachShader"

    invoke-direct {p0, v4}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->checkGlError(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v6, [I

    const v4, 0x8b82

    invoke-static {v2, v4, v0, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v0, v5

    if-eq v4, v6, :cond_0

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v0, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method getAlphaHandle()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TRANSITION:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muAlphaHandle:I

    return v0
.end method

.method getBoundHandle1()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TRANSITION:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muBoundHandle1:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TRANSITION:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->HELPER:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0
.end method

.method getBoundHandle2()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TRANSITION:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->HELPER:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muBoundHandle2:I

    return v0
.end method

.method getMVPHandle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muMVPMatrixHandle:I

    return v0
.end method

.method getPositionHandle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->maPositionHandle:I

    return v0
.end method

.method getProgram()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->mProgram:I

    return v0
.end method

.method getTextureHandle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->maTextureHandle:I

    return v0
.end method

.method getTurnAlphaHandle()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TRANSITION:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muTurnAlphaHandle:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TRANSITION:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->HELPER:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0
.end method

.method getTurnDirectionHandle()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TRANSITION:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muDirectionHandle:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TRANSITION:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->HELPER:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0
.end method

.method getTurnNumberHandle()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->TRANSITION:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->HELPER:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->muTurnNumberHandle:I

    return v0
.end method
