.class public Landroid/graphics/ComposeShader;
.super Landroid/graphics/Shader;
.source "ComposeShader.java"


# instance fields
.field private mNativeInstanceShaderA:J

.field private mNativeInstanceShaderB:J

.field private mPorterDuffMode:I

.field mShaderA:Landroid/graphics/Shader;

.field mShaderB:Landroid/graphics/Shader;


# direct methods
.method private constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Shader parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    iput-object p2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    iput p3, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget v0, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V
    .locals 1

    iget v0, p3, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V

    return-void
.end method

.method private static native nativeCreate(JJJI)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 4

    new-instance v0, Landroid/graphics/ComposeShader;

    iget-object v1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v1}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v2}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v2

    iget v3, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:I

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V

    invoke-virtual {p0, v0}, Landroid/graphics/ComposeShader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    return-object v0
.end method

.method createNativeInstance(J)J
    .locals 7

    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderA:J

    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderB:J

    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v4

    iget v6, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:I

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/ComposeShader;->nativeCreate(JJJI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected verifyNativeInstance()V
    .locals 4

    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderA:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderB:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/ComposeShader;->discardNativeInstance()V

    :cond_1
    return-void
.end method
