.class public Landroid/media/effect/EffectContext;
.super Ljava/lang/Object;
.source "EffectContext.java"


# instance fields
.field private final GL_STATE_ARRAYBUFFER:I

.field private final GL_STATE_COUNT:I

.field private final GL_STATE_FBO:I

.field private final GL_STATE_PROGRAM:I

.field private mFactory:Landroid/media/effect/EffectFactory;

.field mFilterContext:Landroid/filterfw/core/FilterContext;

.field private mOldState:[I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_FBO:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_PROGRAM:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_ARRAYBUFFER:I

    iput v1, p0, Landroid/media/effect/EffectContext;->GL_STATE_COUNT:I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    new-instance v0, Landroid/filterfw/core/FilterContext;

    invoke-direct {v0}, Landroid/filterfw/core/FilterContext;-><init>()V

    iput-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    new-instance v1, Landroid/filterfw/core/CachedFrameManager;

    invoke-direct {v1}, Landroid/filterfw/core/CachedFrameManager;-><init>()V

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterContext;->setFrameManager(Landroid/filterfw/core/FrameManager;)V

    new-instance v0, Landroid/media/effect/EffectFactory;

    invoke-direct {v0, p0}, Landroid/media/effect/EffectFactory;-><init>(Landroid/media/effect/EffectContext;)V

    iput-object v0, p0, Landroid/media/effect/EffectContext;->mFactory:Landroid/media/effect/EffectFactory;

    return-void
.end method

.method public static createWithCurrentGlContext()Landroid/media/effect/EffectContext;
    .locals 1

    new-instance v0, Landroid/media/effect/EffectContext;

    invoke-direct {v0}, Landroid/media/effect/EffectContext;-><init>()V

    invoke-direct {v0}, Landroid/media/effect/EffectContext;->initInCurrentGlContext()V

    return-object v0
.end method

.method private initInCurrentGlContext()V
    .locals 3

    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Attempting to initialize EffectContext with no active GL context!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/filterfw/core/GLEnvironment;

    invoke-direct {v0}, Landroid/filterfw/core/GLEnvironment;-><init>()V

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->initWithCurrentContext()V

    iget-object v1, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v1, v0}, Landroid/filterfw/core/FilterContext;->initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    return-void
.end method


# virtual methods
.method final assertValidGLState()V
    .locals 3

    iget-object v1, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->isContextActive()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Applying effect in wrong GL context!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Attempting to apply effect without valid GL context!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFactory()Landroid/media/effect/EffectFactory;
    .locals 1

    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFactory:Landroid/media/effect/EffectFactory;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->tearDown()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    return-void
.end method

.method final restoreGLState()V
    .locals 2

    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method final saveGLState()V
    .locals 3

    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const v1, 0x8ca6

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const v1, 0x8b8d

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const v1, 0x8894

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    return-void
.end method
