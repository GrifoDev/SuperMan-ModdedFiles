.class public Lcom/samsung/android/graphics/SemBlendingImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemBlendingImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;,
        Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-graphics-SemBlendingImageFilter$BlendingModeSwitchesValues:[I = null

.field private static final FRAGMENT_SHADER_BURN_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = (vec4(1.0) - (vec4(1.0) - texColor) / maskColor) * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

.field private static final FRAGMENT_SHADER_DARKEN_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = min(maskColor, texColor) * filterParams[0] +  texColor * (1.0 - filterParams[0]);\n}\n\n"

.field private static final FRAGMENT_SHADER_DIFFERENCE_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= (1.0 - filterParams[0]);\n    gl_FragColor = mix(abs(texColor - maskColor), texColor, maskColor.a);\n}\n\n"

.field private static final FRAGMENT_SHADER_DODGE_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = mix(texColor / (vec4(1.0) - maskColor), texColor, (1.0 - maskColor.a));\n}\n\n"

.field private static final FRAGMENT_SHADER_EXCLUSION_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= (1.0 - filterParams[0]);\n    gl_FragColor = mix(texColor + maskColor - 2.0 * texColor * maskColor, texColor, maskColor.a);\n}\n\n"

.field private static FRAGMENT_SHADER_GLOW_BLEND:Ljava/lang/String; = null

.field private static final FRAGMENT_SHADER_HARD_LIGHT_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nfloat blendChannel(float base, float blend) {\n    if (blend < 0.5) {\n        return 2.0 * base * blend;\n    } else {\n        return 1.0 - 2.0 * (1.0 - base) * (1.0 - blend);\n    }\n}\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = vec4(blendChannel(texColor.r, maskColor.r), blendChannel(texColor.g, maskColor.g),           blendChannel(texColor.b, maskColor.b), blendChannel(texColor.a, maskColor.a));\n    gl_FragColor = mix(gl_FragColor, texColor, (1.0 - maskColor.a));\n}\n\n"

.field private static final FRAGMENT_SHADER_LIGHTEN_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = max(maskColor, texColor) * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

.field private static final FRAGMENT_SHADER_MULTIPLY_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = maskColor*texColor * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

.field private static FRAGMENT_SHADER_NEGATION_BLEND:Ljava/lang/String; = null

.field private static final FRAGMENT_SHADER_NORMAL_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = maskColor * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

.field private static final FRAGMENT_SHADER_OVERLAY_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nfloat blendChannel(float base, float blend) {\n    if (base < 0.5) {\n        return 2.0 * base * blend;\n    } else {\n        return 1.0 - 2.0 * (1.0 - base) * (1.0 - blend);\n    }\n}\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = vec4(blendChannel(texColor.r, maskColor.r), blendChannel(texColor.g, maskColor.g),           blendChannel(texColor.b, maskColor.b), blendChannel(texColor.a, maskColor.a));\ngl_FragColor = mix(gl_FragColor, texColor, (1.0 - maskColor.a));\n}\n\n"

.field private static final FRAGMENT_SHADER_SCREEN_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 unitColor = vec4(1.0);\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor *= filterParams[0];\n    gl_FragColor = unitColor - ((unitColor-texColor) * (unitColor-maskColor));\n}\n\n"

.field private static final FRAGMENT_SHADER_SOFT_LIGHT_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nfloat blendChannel(float base, float blend) {\n    if (blend < 0.5) {\n        return 2.0 * base * blend + base * base *( 1.0 - 2.0 * blend);\n    } else {\n        return 2.0 * base * (1.0 - blend) + sqrt(base) * (2.0 * blend - 1.0) ;\n    }\n}\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = vec4(blendChannel(texColor.r, maskColor.r), blendChannel(texColor.g, maskColor.g),           blendChannel(texColor.b, maskColor.b), blendChannel(texColor.a, maskColor.a));\n    gl_FragColor = mix(gl_FragColor, texColor, (1.0 - maskColor.a));\n}\n\n"

.field private static final OPACITY_PARAM_INDEX:I

.field private static mBitmapMask:Landroid/graphics/Bitmap;

.field private static mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field private static mLayerOpacity:F


# direct methods
.method static synthetic -get0()F
    .locals 1

    sget v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    return v0
.end method

.method private static synthetic -getcom-samsung-android-graphics-SemBlendingImageFilter$BlendingModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->-com-samsung-android-graphics-SemBlendingImageFilter$BlendingModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->-com-samsung-android-graphics-SemBlendingImageFilter$BlendingModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->values()[Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->BURN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->DARKEN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->DIFFERENCE:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->DODGE:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->EXCLUSION:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    :try_start_5
    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->GLOW:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_5
    :try_start_6
    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->HARD_LIGHT:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    :try_start_7
    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->LIGHTEN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_7
    :try_start_8
    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->MULTIPLY:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_8
    :try_start_9
    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->NEGATION:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    :try_start_a
    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->NORMAL:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_a
    :try_start_b
    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->OVERLAY:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_b
    :try_start_c
    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->SCREEN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    :try_start_d
    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->SOFT_LIGHT:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_d
    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->-com-samsung-android-graphics-SemBlendingImageFilter$BlendingModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1

    :catch_d
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -set0(F)F
    .locals 0

    sput p0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= (1.0 - filterParams[0]);\n    gl_FragColor = mix(vec4(1.0) - abs(vec4(1.0) - texColor - maskColor), texColor, maskColor.a);\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->FRAGMENT_SHADER_NEGATION_BLEND:Ljava/lang/String;

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = min(maskColor * maskColor / (1.0 - texColor), 1.0) * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->FRAGMENT_SHADER_GLOW_BLEND:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->NORMAL:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    invoke-static {}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->getFragmentShader()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->useFilterParams()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setOverlayLayerOpacity(F)V

    return-void
.end method

.method private static getFragmentShader()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->-getcom-samsung-android-graphics-SemBlendingImageFilter$BlendingModeSwitchesValues()[I

    move-result-object v0

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = maskColor * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = maskColor*texColor * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 unitColor = vec4(1.0);\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor *= filterParams[0];\n    gl_FragColor = unitColor - ((unitColor-texColor) * (unitColor-maskColor));\n}\n\n"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = min(maskColor, texColor) * filterParams[0] +  texColor * (1.0 - filterParams[0]);\n}\n\n"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = max(maskColor, texColor) * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = mix(texColor / (vec4(1.0) - maskColor), texColor, (1.0 - maskColor.a));\n}\n\n"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = (vec4(1.0) - (vec4(1.0) - texColor) / maskColor) * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= (1.0 - filterParams[0]);\n    gl_FragColor = mix(abs(texColor - maskColor), texColor, maskColor.a);\n}\n\n"

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->FRAGMENT_SHADER_NEGATION_BLEND:Ljava/lang/String;

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= (1.0 - filterParams[0]);\n    gl_FragColor = mix(texColor + maskColor - 2.0 * texColor * maskColor, texColor, maskColor.a);\n}\n\n"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nfloat blendChannel(float base, float blend) {\n    if (base < 0.5) {\n        return 2.0 * base * blend;\n    } else {\n        return 1.0 - 2.0 * (1.0 - base) * (1.0 - blend);\n    }\n}\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = vec4(blendChannel(texColor.r, maskColor.r), blendChannel(texColor.g, maskColor.g),           blendChannel(texColor.b, maskColor.b), blendChannel(texColor.a, maskColor.a));\ngl_FragColor = mix(gl_FragColor, texColor, (1.0 - maskColor.a));\n}\n\n"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nfloat blendChannel(float base, float blend) {\n    if (blend < 0.5) {\n        return 2.0 * base * blend;\n    } else {\n        return 1.0 - 2.0 * (1.0 - base) * (1.0 - blend);\n    }\n}\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = vec4(blendChannel(texColor.r, maskColor.r), blendChannel(texColor.g, maskColor.g),           blendChannel(texColor.b, maskColor.b), blendChannel(texColor.a, maskColor.a));\n    gl_FragColor = mix(gl_FragColor, texColor, (1.0 - maskColor.a));\n}\n\n"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nfloat blendChannel(float base, float blend) {\n    if (blend < 0.5) {\n        return 2.0 * base * blend + base * base *( 1.0 - 2.0 * blend);\n    } else {\n        return 2.0 * base * (1.0 - blend) + sqrt(base) * (2.0 * blend - 1.0) ;\n    }\n}\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = vec4(blendChannel(texColor.r, maskColor.r), blendChannel(texColor.g, maskColor.g),           blendChannel(texColor.b, maskColor.b), blendChannel(texColor.a, maskColor.a));\n    gl_FragColor = mix(gl_FragColor, texColor, (1.0 - maskColor.a));\n}\n\n"

    return-object v0

    :pswitch_d
    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->FRAGMENT_SHADER_GLOW_BLEND:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_b
        :pswitch_4
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_c
    .end packed-switch
.end method

.method private setupBlendingShader()V
    .locals 4

    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    invoke-static {}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->getFragmentShader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setup(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->useFilterParams()V

    sget v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setParam(IF)V

    const-string/jumbo v0, "maskSampler"

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->notifyWorkerFilters()V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clearAnimation()V

    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/SemBlendingImageFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;

    sget-object v2, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    sput-object v2, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    sget-object v2, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    sput-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->clone()Lcom/samsung/android/graphics/SemBlendingImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->clone()Lcom/samsung/android/graphics/SemBlendingImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->clone()Lcom/samsung/android/graphics/SemBlendingImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getBlendingMode()Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    return-object v0
.end method

.method public getOverlayLayerOpacity()F
    .locals 1

    sget v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    return v0
.end method

.method public setBlendingMode(Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    if-eq v0, p1, :cond_0

    sput-object p1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setupBlendingShader()V

    :cond_0
    return-void
.end method

.method public setOpacityAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;-><init>(Lcom/samsung/android/graphics/SemBlendingImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setOverlayLayerBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    sput-object p1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    const-string/jumbo v0, "maskSampler"

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setupBlendingShader()V

    return-void
.end method

.method public setOverlayLayerOpacity(F)V
    .locals 2

    sget v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    sput v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    sget v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method
