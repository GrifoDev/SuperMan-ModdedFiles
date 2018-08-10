.class public final Landroid/renderscript/ScriptGroup$Closure;
.super Landroid/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Closure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Closure"


# instance fields
.field private mArgs:[Ljava/lang/Object;

.field private mBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFP:Landroid/renderscript/FieldPacker;

.field private mGlobalFuture:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            "Landroid/renderscript/ScriptGroup$Future;",
            ">;"
        }
    .end annotation
.end field

.field private mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

.field private mReturnValue:Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Landroid/renderscript/Script$InvokeID;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    invoke-static/range {p3 .. p3}, Landroid/renderscript/FieldPacker;->createFromArray([Ljava/lang/Object;)Landroid/renderscript/FieldPacker;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mFP:Landroid/renderscript/FieldPacker;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [J

    move-object/from16 v17, v0

    move/from16 v0, v24

    new-array v9, v0, [J

    move/from16 v0, v24

    new-array v10, v0, [I

    move/from16 v0, v24

    new-array v11, v0, [J

    move/from16 v0, v24

    new-array v12, v0, [J

    const/4 v6, 0x0

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/renderscript/Script$FieldID;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, v17, v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v12}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/renderscript/Script$InvokeID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mFP:Landroid/renderscript/FieldPacker;

    invoke-virtual {v4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v16

    move-object/from16 v13, p1

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-virtual/range {v13 .. v19}, Landroid/renderscript/RenderScript;->nInvokeClosureCreate(J[B[J[J[I)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ScriptGroup$Closure;->setID(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v5, "destroy"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Landroid/renderscript/Script$KernelID;",
            "Landroid/renderscript/Type;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    move-object/from16 v0, p4

    array-length v4, v0

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v5

    add-int v25, v4, v5

    move/from16 v0, v25

    new-array v0, v0, [J

    move-object/from16 v18, v0

    move/from16 v0, v25

    new-array v9, v0, [J

    move/from16 v0, v25

    new-array v10, v0, [I

    move/from16 v0, v25

    new-array v11, v0, [J

    move/from16 v0, v25

    new-array v12, v0, [J

    const/4 v6, 0x0

    :goto_0
    move-object/from16 v0, p4

    array-length v4, v0

    if-ge v6, v4, :cond_0

    const-wide/16 v4, 0x0

    aput-wide v4, v18, v6

    aget-object v8, p4, v6

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v12}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/renderscript/Script$FieldID;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, v18, v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v12}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v13, p1

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    invoke-virtual/range {v13 .. v22}, Landroid/renderscript/RenderScript;->nClosureCreate(JJ[J[J[I[J[J)J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ScriptGroup$Closure;->setID(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v5, "destroy"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V
    .locals 6

    instance-of v4, p4, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v4, :cond_1

    move-object v0, p4

    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getClosure()Landroid/renderscript/ScriptGroup$Closure;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, p7, p2

    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getFieldID()Landroid/renderscript/Script$FieldID;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    :goto_0
    aput-wide v4, p8, p2

    :goto_1
    instance-of v4, p4, Landroid/renderscript/ScriptGroup$Input;

    if-eqz v4, :cond_3

    move-object v2, p4

    check-cast v2, Landroid/renderscript/ScriptGroup$Input;

    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    array-length v4, v4

    if-ge p2, v4, :cond_2

    invoke-virtual {v2, p0, p2}, Landroid/renderscript/ScriptGroup$Input;->addReference(Landroid/renderscript/ScriptGroup$Closure;I)V

    :goto_2
    const-wide/16 v4, 0x0

    aput-wide v4, p5, p2

    const/4 v4, 0x0

    aput v4, p6, p2

    :goto_3
    return-void

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    aput-wide v4, p7, p2

    const-wide/16 v4, 0x0

    aput-wide v4, p8, p2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, p0, p3}, Landroid/renderscript/ScriptGroup$Input;->addReference(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;)V

    goto :goto_2

    :cond_3
    new-instance v3, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    invoke-direct {v3, p1, p4}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    iget-wide v4, v3, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    aput-wide v4, p5, p2

    iget v4, v3, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    aput v4, p6, p2

    goto :goto_3
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    return-void
.end method

.method public getGlobal(Landroid/renderscript/Script$FieldID;)Landroid/renderscript/ScriptGroup$Future;
    .locals 3

    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/renderscript/ScriptGroup$Future;

    invoke-virtual {v1}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v1

    :cond_0
    new-instance v0, Landroid/renderscript/ScriptGroup$Future;

    invoke-direct {v0, p0, p1, v1}, Landroid/renderscript/ScriptGroup$Future;-><init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getReturn()Landroid/renderscript/ScriptGroup$Future;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/ScriptGroup$Future;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    invoke-direct {v0, p0, v2, v1}, Landroid/renderscript/ScriptGroup$Future;-><init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    return-object v0
.end method

.method setArg(ILjava/lang/Object;)V
    .locals 8

    instance-of v0, p2, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/renderscript/ScriptGroup$Future;

    invoke-virtual {p2}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    aput-object p2, v0, p1

    new-instance v7, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v7, v0, p2}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget-wide v4, v7, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iget v6, v7, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nClosureSetArg(JIJI)V

    return-void
.end method

.method setGlobal(Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 9

    instance-of v1, p2, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v1, :cond_0

    check-cast p2, Landroid/renderscript/ScriptGroup$Future;

    invoke-virtual {p2}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p2

    :cond_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p2}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-wide v6, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iget v8, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nClosureSetGlobal(JJJI)V

    return-void
.end method
