.class public final Landroid/renderscript/ScriptGroup;
.super Landroid/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptGroup$Binding;,
        Landroid/renderscript/ScriptGroup$Builder2;,
        Landroid/renderscript/ScriptGroup$Builder;,
        Landroid/renderscript/ScriptGroup$Closure;,
        Landroid/renderscript/ScriptGroup$ConnectLine;,
        Landroid/renderscript/ScriptGroup$Future;,
        Landroid/renderscript/ScriptGroup$IO;,
        Landroid/renderscript/ScriptGroup$Input;,
        Landroid/renderscript/ScriptGroup$Node;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptGroup"


# instance fields
.field private mClosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            ">;"
        }
    .end annotation
.end field

.field mInputs:[Landroid/renderscript/ScriptGroup$IO;

.field private mInputs2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Input;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field mOutputs:[Landroid/renderscript/ScriptGroup$IO;

.field private mOutputs2:[Landroid/renderscript/ScriptGroup$Future;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    iget-object v0, p0, Landroid/renderscript/ScriptGroup;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Landroid/renderscript/ScriptGroup$Future;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Input;",
            ">;[",
            "Landroid/renderscript/ScriptGroup$Future;",
            ")V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5, p1}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object p2, p0, Landroid/renderscript/ScriptGroup;->mName:Ljava/lang/String;

    iput-object p3, p0, Landroid/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    iput-object p4, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    iput-object p5, p0, Landroid/renderscript/ScriptGroup;->mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [J

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/renderscript/ScriptGroup$Closure;

    invoke-virtual {v4, p1}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p2, v4, v0}, Landroid/renderscript/RenderScript;->nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/ScriptGroup;->setID(J)V

    iget-object v4, p0, Landroid/renderscript/ScriptGroup;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v5, "destroy"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ScriptGroup$Closure;

    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Closure;->destroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public execute()V
    .locals 4

    iget-object v0, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nScriptGroupExecute(J)V

    return-void
.end method

.method public varargs execute([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11

    const/4 v10, 0x0

    array-length v7, p1

    iget-object v8, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    const-string/jumbo v7, "ScriptGroup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/renderscript/ScriptGroup;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " receives "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " inputs, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "less than expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_0
    array-length v7, p1

    iget-object v8, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v7, v8, :cond_1

    const-string/jumbo v7, "ScriptGroup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/renderscript/ScriptGroup;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " receives "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " inputs, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "more than expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    aget-object v3, p1, v1

    instance-of v7, v3, Landroid/renderscript/ScriptGroup$Future;

    if-nez v7, :cond_2

    instance-of v7, v3, Landroid/renderscript/ScriptGroup$Input;

    if-eqz v7, :cond_3

    :cond_2
    const-string/jumbo v7, "ScriptGroup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/renderscript/ScriptGroup;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": input "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is a future or unbound value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_3
    iget-object v7, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/renderscript/ScriptGroup$Input;

    invoke-virtual {v6, v3}, Landroid/renderscript/ScriptGroup$Input;->set(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v7, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v8, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v8}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/renderscript/RenderScript;->nScriptGroup2Execute(J)V

    iget-object v7, p0, Landroid/renderscript/ScriptGroup;->mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    array-length v7, v7

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v8, p0, Landroid/renderscript/ScriptGroup;->mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    const/4 v7, 0x0

    array-length v9, v8

    move v2, v1

    :goto_1
    if-ge v7, v9, :cond_6

    aget-object v0, v8, v7

    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v10, v4, Landroid/renderscript/ScriptGroup$Input;

    if-eqz v10, :cond_5

    check-cast v4, Landroid/renderscript/ScriptGroup$Input;

    invoke-virtual {v4}, Landroid/renderscript/ScriptGroup$Input;->get()Ljava/lang/Object;

    move-result-object v4

    :cond_5
    add-int/lit8 v1, v2, 0x1

    aput-object v4, v5, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v1

    goto :goto_1

    :cond_6
    return-object v5
.end method

.method public setInput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nScriptGroupSetInput(JJJ)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Script not found"

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setOutput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nScriptGroupSetOutput(JJJ)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Script not found"

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
