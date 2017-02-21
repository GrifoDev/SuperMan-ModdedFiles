.class public Lcom/samsung/android/graphics/SemBlendingFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemBlendingFilter.java"


# static fields
.field public static final BLENDING_MODE_MULTIPLY:I = 0x1

.field public static final BLENDING_MODE_NORMAL:I = 0x0

.field public static final BLENDING_MODE_SCREEN:I = 0x2

.field private static mFragmentShaderCodeMultipy:Ljava/lang/String;

.field private static mFragmentShaderCodeNormal:Ljava/lang/String;

.field private static mFragmentShaderCodeScreen:Ljava/lang/String;


# instance fields
.field private mBlendMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\n\nvoid main(void) {\n   vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 mask = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = mask + texColor * (1.0 - mask.a);\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingFilter;->mFragmentShaderCodeNormal:Ljava/lang/String;

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\n\nvoid main(void) {\n       vec4 texColor = texture2D(baseSampler, outTexCoords);\n        vec4 mask = texture2D(maskSampler, outTexCoords);\n       gl_FragColor = texColor * mask;\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingFilter;->mFragmentShaderCodeMultipy:Ljava/lang/String;

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\n\nvoid main(void) {\n       vec4 unitColor = vec4(1.0);\n       vec4 texColor = texture2D(baseSampler, outTexCoords);\n       vec4 mask = texture2D(maskSampler, outTexCoords);\n       gl_FragColor = unitColor - ((unitColor-texColor) * (unitColor-mask));\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingFilter;->mFragmentShaderCodeScreen:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    invoke-static {v2}, Lcom/samsung/android/graphics/SemBlendingFilter;->getFragmentShader(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/graphics/SemBlendingFilter;->mBlendMode:I

    iput v2, p0, Lcom/samsung/android/graphics/SemBlendingFilter;->mBlendMode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    invoke-static {p1}, Lcom/samsung/android/graphics/SemBlendingFilter;->getFragmentShader(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemBlendingFilter;->mBlendMode:I

    iput p1, p0, Lcom/samsung/android/graphics/SemBlendingFilter;->mBlendMode:I

    return-void
.end method

.method protected static getFragmentShader(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/samsung/android/graphics/SemBlendingFilter;->mFragmentShaderCodeNormal:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/graphics/SemBlendingFilter;->mFragmentShaderCodeMultipy:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/graphics/SemBlendingFilter;->mFragmentShaderCodeScreen:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public setOperation(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/SemBlendingFilter;->mBlendMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/graphics/SemBlendingFilter;->mBlendMode:I

    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    invoke-static {p1}, Lcom/samsung/android/graphics/SemBlendingFilter;->getFragmentShader(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setup(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
