.class Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragmentFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 39
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramFragmentFixedFunction;
    .locals 10

    .prologue
    .line 51
    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8}, Landroid/renderscript/RenderScript;->validate()V

    .line 52
    iget v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    iget v9, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x2

    new-array v7, v8, [J

    .line 53
    .local v7, "tmp":[J
    iget v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    new-array v6, v8, [Ljava/lang/String;

    .line 54
    .local v6, "texNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 56
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    if-ge v0, v8, :cond_0

    .line 57
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .local v4, "idx":I
    sget-object v8, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v8, v8, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v8, v8

    aput-wide v8, v7, v1

    .line 58
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    aget-object v8, v8, v0

    iget-object v9, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    aput-wide v8, v7, v4

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    if-ge v0, v8, :cond_1

    .line 61
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .restart local v4    # "idx":I
    sget-object v8, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v8, v8, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v8, v8

    aput-wide v8, v7, v1

    .line 62
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v8, v8, v0

    iget-object v9, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    aput-wide v8, v7, v4

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    if-ge v0, v8, :cond_2

    .line 65
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .restart local v4    # "idx":I
    sget-object v8, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v8, v8, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v8, v8

    aput-wide v8, v7, v1

    .line 66
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    aget-object v8, v8, v0

    iget-object v9, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    aput-wide v8, v7, v4

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 68
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    if-ge v0, v8, :cond_3

    .line 69
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .restart local v4    # "idx":I
    sget-object v8, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v8, v8, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v8, v8

    aput-wide v8, v7, v1

    .line 70
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v8, v8, v0

    iget v8, v8, Landroid/renderscript/Program$TextureType;->mID:I

    int-to-long v8, v8

    aput-wide v8, v7, v4

    .line 71
    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    aget-object v8, v8, v0

    aput-object v8, v6, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 74
    :cond_3
    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v9, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;

    invoke-virtual {v8, v9, v6, v7}, Landroid/renderscript/RenderScript;->nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide v2

    .line 75
    .local v2, "id":J
    new-instance v5, Landroid/renderscript/ProgramFragmentFixedFunction;

    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v5, v2, v3, v8}, Landroid/renderscript/ProgramFragmentFixedFunction;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 76
    .local v5, "pf":Landroid/renderscript/ProgramFragmentFixedFunction;
    invoke-virtual {p0, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->initProgram(Landroid/renderscript/Program;)V

    .line 77
    return-object v5
.end method
