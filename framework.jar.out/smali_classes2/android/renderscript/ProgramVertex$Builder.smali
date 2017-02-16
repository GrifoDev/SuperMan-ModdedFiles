.class public Landroid/renderscript/ProgramVertex$Builder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramVertex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 93
    return-void
.end method


# virtual methods
.method public addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;
    .locals 3
    .param p1, "e"    # Landroid/renderscript/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 107
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 108
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Max input count exceeded."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Element;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Complex elements not allowed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    aput-object p1, v0, v1

    .line 114
    return-object p0
.end method

.method public create()Landroid/renderscript/ProgramVertex;
    .locals 10

    .prologue
    .line 124
    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8}, Landroid/renderscript/RenderScript;->validate()V

    .line 125
    iget v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    iget v9, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x2

    new-array v7, v8, [J

    .line 126
    .local v7, "tmp":[J
    iget v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    new-array v6, v8, [Ljava/lang/String;

    .line 127
    .local v6, "texNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 129
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    if-ge v0, v8, :cond_0

    .line 130
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .local v4, "idx":I
    sget-object v8, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v8, v8, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v8, v8

    aput-wide v8, v7, v1

    .line 131
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    aget-object v8, v8, v0

    iget-object v9, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    aput-wide v8, v7, v4

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    if-ge v0, v8, :cond_1

    .line 134
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .restart local v4    # "idx":I
    sget-object v8, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v8, v8, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v8, v8

    aput-wide v8, v7, v1

    .line 135
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v8, v8, v0

    iget-object v9, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    aput-wide v8, v7, v4

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    if-ge v0, v8, :cond_2

    .line 138
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .restart local v4    # "idx":I
    sget-object v8, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v8, v8, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v8, v8

    aput-wide v8, v7, v1

    .line 139
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    aget-object v8, v8, v0

    iget-object v9, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    aput-wide v8, v7, v4

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 141
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    if-ge v0, v8, :cond_3

    .line 142
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .restart local v4    # "idx":I
    sget-object v8, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v8, v8, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v8, v8

    aput-wide v8, v7, v1

    .line 143
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v8, v8, v0

    iget v8, v8, Landroid/renderscript/Program$TextureType;->mID:I

    int-to-long v8, v8

    aput-wide v8, v7, v4

    .line 144
    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    aget-object v8, v8, v0

    aput-object v8, v6, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 147
    :cond_3
    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v9, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;

    invoke-virtual {v8, v9, v6, v7}, Landroid/renderscript/RenderScript;->nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide v2

    .line 148
    .local v2, "id":J
    new-instance v5, Landroid/renderscript/ProgramVertex;

    iget-object v8, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v5, v2, v3, v8}, Landroid/renderscript/ProgramVertex;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 149
    .local v5, "pv":Landroid/renderscript/ProgramVertex;
    invoke-virtual {p0, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->initProgram(Landroid/renderscript/Program;)V

    .line 150
    return-object v5
.end method
