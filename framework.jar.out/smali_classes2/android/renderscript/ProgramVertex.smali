.class public Landroid/renderscript/ProgramVertex;
.super Landroid/renderscript/Program;
.source "ProgramVertex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramVertex$Builder;
    }
.end annotation


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Program;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getInput(I)Landroid/renderscript/Element;
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 70
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getInputCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
