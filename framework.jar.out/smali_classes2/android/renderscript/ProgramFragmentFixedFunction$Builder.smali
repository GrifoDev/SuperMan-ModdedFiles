.class public Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
.super Ljava/lang/Object;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragmentFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;,
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;,
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;
    }
.end annotation


# static fields
.field private static final synthetic -android-renderscript-ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues:[I = null

.field private static final synthetic -android-renderscript-ProgramFragmentFixedFunction$Builder$FormatSwitchesValues:[I = null

.field public static final MAX_TEXTURE:I = 0x2


# instance fields
.field mNumTextures:I

.field mPointSpriteEnable:Z

.field mRS:Landroid/renderscript/RenderScript;

.field mShader:Ljava/lang/String;

.field mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

.field mVaryingColorEnable:Z


# direct methods
.method private static synthetic -getandroid-renderscript-ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android-renderscript-ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android-renderscript-ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->values()[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->DECAL:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android-renderscript-ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getandroid-renderscript-ProgramFragmentFixedFunction$Builder$FormatSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android-renderscript-ProgramFragmentFixedFunction$Builder$FormatSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android-renderscript-ProgramFragmentFixedFunction$Builder$FormatSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->values()[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ALPHA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->LUMINANCE_ALPHA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGB:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android-renderscript-ProgramFragmentFixedFunction$Builder$FormatSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 233
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mPointSpriteEnable:Z

    .line 231
    return-void
.end method

.method private buildShaderString()V
    .locals 3

    .prologue
    .line 162
    const-string/jumbo v1, "//rs_shader_internal\n"

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "varying lowp vec4 varColor;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "varying vec2 varTex0;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "void main() {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 167
    iget-boolean v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    if-eqz v1, :cond_1

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  lowp vec4 col = varColor;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 173
    :goto_0
    iget v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    if-eqz v1, :cond_0

    .line 174
    iget-boolean v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mPointSpriteEnable:Z

    if-eqz v1, :cond_2

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  vec2 t0 = gl_PointCoord;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 181
    :cond_0
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    if-ge v0, v1, :cond_3

    .line 182
    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-getandroid-renderscript-ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->env:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 181
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 170
    .end local v0    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  lowp vec4 col = UNI_Color;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto :goto_0

    .line 177
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  vec2 t0 = varTex0.xy;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto :goto_1

    .line 184
    .restart local v0    # "i":I
    :pswitch_0
    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-getandroid-renderscript-ProgramFragmentFixedFunction$Builder$FormatSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->format:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 186
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.a = texture2D(UNI_Tex0, t0).a;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto :goto_3

    .line 189
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.rgba = texture2D(UNI_Tex0, t0).rgba;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto :goto_3

    .line 192
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.rgb = texture2D(UNI_Tex0, t0).rgb;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto/16 :goto_3

    .line 195
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.rgba = texture2D(UNI_Tex0, t0).rgba;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto/16 :goto_3

    .line 200
    :pswitch_5
    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-getandroid-renderscript-ProgramFragmentFixedFunction$Builder$FormatSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->format:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_3

    .line 202
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.a *= texture2D(UNI_Tex0, t0).a;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto/16 :goto_3

    .line 205
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.rgba *= texture2D(UNI_Tex0, t0).rgba;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto/16 :goto_3

    .line 208
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.rgb *= texture2D(UNI_Tex0, t0).rgb;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto/16 :goto_3

    .line 211
    :pswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.rgba *= texture2D(UNI_Tex0, t0).rgba;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto/16 :goto_3

    .line 216
    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col = texture2D(UNI_Tex0, t0);\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto/16 :goto_3

    .line 221
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  gl_FragColor = col;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 161
    return-void

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 184
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 200
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramFragmentFixedFunction;
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 292
    new-instance v7, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;

    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v7, v9}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 293
    .local v7, "sb":Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;
    iput v12, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    .line 294
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v13, :cond_1

    .line 295
    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    aget-object v9, v9, v5

    if-eqz v9, :cond_0

    .line 296
    iget v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    .line 294
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 299
    :cond_1
    invoke-direct {p0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->buildShaderString()V

    .line 300
    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 302
    const/4 v1, 0x0

    .line 303
    .local v1, "constType":Landroid/renderscript/Type;
    iget-boolean v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    if-nez v9, :cond_2

    .line 304
    new-instance v0, Landroid/renderscript/Element$Builder;

    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v9}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 305
    .local v0, "b":Landroid/renderscript/Element$Builder;
    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v9}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v9

    const-string/jumbo v10, "Color"

    invoke-virtual {v0, v9, v10}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 306
    new-instance v8, Landroid/renderscript/Type$Builder;

    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 307
    .local v8, "typeBuilder":Landroid/renderscript/Type$Builder;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 308
    invoke-virtual {v8}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    .line 309
    .local v1, "constType":Landroid/renderscript/Type;
    invoke-virtual {v7, v1}, Landroid/renderscript/Program$BaseProgramBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 311
    .end local v0    # "b":Landroid/renderscript/Element$Builder;
    .end local v1    # "constType":Landroid/renderscript/Type;
    .end local v8    # "typeBuilder":Landroid/renderscript/Type$Builder;
    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    if-ge v5, v9, :cond_3

    .line 312
    sget-object v9, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v7, v9}, Landroid/renderscript/Program$BaseProgramBuilder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 311
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 315
    :cond_3
    invoke-virtual {v7}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v6

    .line 316
    .local v6, "pf":Landroid/renderscript/ProgramFragmentFixedFunction;
    iput v13, v6, Landroid/renderscript/Program;->mTextureCount:I

    .line 317
    iget-boolean v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    if-nez v9, :cond_4

    .line 318
    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v9, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 319
    .local v2, "constantData":Landroid/renderscript/Allocation;
    new-instance v4, Landroid/renderscript/FieldPacker;

    const/16 v9, 0x10

    invoke-direct {v4, v9}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 320
    .local v4, "fp":Landroid/renderscript/FieldPacker;
    new-instance v3, Landroid/renderscript/Float4;

    invoke-direct {v3, v11, v11, v11, v11}, Landroid/renderscript/Float4;-><init>(FFFF)V

    .line 321
    .local v3, "f4":Landroid/renderscript/Float4;
    invoke-virtual {v4, v3}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 322
    invoke-virtual {v2, v12, v4}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 323
    invoke-virtual {v6, v2, v12}, Landroid/renderscript/Program;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 325
    .end local v2    # "constantData":Landroid/renderscript/Allocation;
    .end local v3    # "f4":Landroid/renderscript/Float4;
    .end local v4    # "fp":Landroid/renderscript/FieldPacker;
    :cond_4
    return-object v6
.end method

.method public setPointSpriteTexCoordinateReplacement(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mPointSpriteEnable:Z

    .line 269
    return-object p0
.end method

.method public setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .locals 2
    .param p1, "env"    # Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;
    .param p2, "fmt"    # Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;
    .param p3, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 253
    if-ltz p3, :cond_0

    const/4 v0, 0x2

    if-lt p3, v0, :cond_1

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MAX_TEXTURE exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    iget-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    new-instance v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    invoke-direct {v1, p0, p1, p2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;-><init>(Landroid/renderscript/ProgramFragmentFixedFunction$Builder;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;)V

    aput-object v1, v0, p3

    .line 257
    return-object p0
.end method

.method public setVaryingColor(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    .line 282
    return-object p0
.end method
