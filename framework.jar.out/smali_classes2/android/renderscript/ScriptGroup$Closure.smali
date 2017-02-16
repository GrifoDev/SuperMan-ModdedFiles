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
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 111
    return-void
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 25
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "invokeID"    # Landroid/renderscript/Script$InvokeID;
    .param p3, "args"    # [Ljava/lang/Object;
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

    .prologue
    .line 157
    .local p4, "globals":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 158
    invoke-static/range {p3 .. p3}, Landroid/renderscript/FieldPacker;->createFromArray([Ljava/lang/Object;)Landroid/renderscript/FieldPacker;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mFP:Landroid/renderscript/FieldPacker;

    .line 160
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 161
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 162
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 164
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v24

    .line 166
    .local v24, "numValues":I
    move/from16 v0, v24

    new-array v0, v0, [J

    move-object/from16 v17, v0

    .line 167
    .local v17, "fieldIDs":[J
    move/from16 v0, v24

    new-array v9, v0, [J

    .line 168
    .local v9, "values":[J
    move/from16 v0, v24

    new-array v10, v0, [I

    .line 169
    .local v10, "sizes":[I
    move/from16 v0, v24

    new-array v11, v0, [J

    .line 170
    .local v11, "depClosures":[J
    move/from16 v0, v24

    new-array v12, v0, [J

    .line 172
    .local v12, "depFieldIDs":[J
    const/4 v6, 0x0

    .line 173
    .local v6, "i":I
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 174
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 175
    .local v8, "obj":Ljava/lang/Object;
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/renderscript/Script$FieldID;

    .line 176
    .local v7, "fieldID":Landroid/renderscript/Script$FieldID;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, v17, v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 177
    invoke-direct/range {v4 .. v12}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 179
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 182
    .end local v7    # "fieldID":Landroid/renderscript/Script$FieldID;
    .end local v8    # "obj":Ljava/lang/Object;
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

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

    .line 185
    .local v22, "id":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/BaseObj;->setID(J)V

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v5, "destroy"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 28
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "kernelID"    # Landroid/renderscript/Script$KernelID;
    .param p3, "returnType"    # Landroid/renderscript/Type;
    .param p4, "args"    # [Ljava/lang/Object;
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

    .prologue
    .line 117
    .local p5, "globals":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 119
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 120
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    .line 121
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 122
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 124
    move-object/from16 v0, p4

    array-length v4, v0

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v5

    add-int v25, v4, v5

    .line 126
    .local v25, "numValues":I
    move/from16 v0, v25

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 127
    .local v18, "fieldIDs":[J
    move/from16 v0, v25

    new-array v9, v0, [J

    .line 128
    .local v9, "values":[J
    move/from16 v0, v25

    new-array v10, v0, [I

    .line 129
    .local v10, "sizes":[I
    move/from16 v0, v25

    new-array v11, v0, [J

    .line 130
    .local v11, "depClosures":[J
    move/from16 v0, v25

    new-array v12, v0, [J

    .line 133
    .local v12, "depFieldIDs":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p4

    array-length v4, v0

    if-ge v6, v4, :cond_0

    .line 134
    const-wide/16 v4, 0x0

    aput-wide v4, v18, v6

    .line 135
    aget-object v8, p4, v6

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v12}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 133
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 139
    .local v23, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 140
    .local v8, "obj":Ljava/lang/Object;
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/renderscript/Script$FieldID;

    .line 141
    .local v7, "fieldID":Landroid/renderscript/Script$FieldID;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, v18, v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 142
    invoke-direct/range {v4 .. v12}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 144
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 147
    .end local v7    # "fieldID":Landroid/renderscript/Script$FieldID;
    .end local v8    # "obj":Ljava/lang/Object;
    .end local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v13, p1

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    invoke-virtual/range {v13 .. v22}, Landroid/renderscript/RenderScript;->nClosureCreate(JJ[J[J[I[J[J)J

    move-result-wide v26

    .line 150
    .local v26, "id":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/BaseObj;->setID(J)V

    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v5, "destroy"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "index"    # I
    .param p3, "fid"    # Landroid/renderscript/Script$FieldID;
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "values"    # [J
    .param p6, "sizes"    # [I
    .param p7, "depClosures"    # [J
    .param p8, "depFieldIDs"    # [J

    .prologue
    .line 213
    instance-of v4, p4, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v4, :cond_1

    move-object v0, p4

    .line 214
    nop

    nop

    .line 215
    .local v0, "f":Landroid/renderscript/ScriptGroup$Future;
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p4

    .line 216
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getClosure()Landroid/renderscript/ScriptGroup$Closure;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, p7, p2

    .line 217
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getFieldID()Landroid/renderscript/Script$FieldID;

    move-result-object v1

    .line 218
    .local v1, "fieldID":Landroid/renderscript/Script$FieldID;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    :goto_0
    aput-wide v4, p8, p2

    .line 224
    .end local v0    # "f":Landroid/renderscript/ScriptGroup$Future;
    .end local v1    # "fieldID":Landroid/renderscript/Script$FieldID;
    :goto_1
    instance-of v4, p4, Landroid/renderscript/ScriptGroup$Input;

    if-eqz v4, :cond_3

    move-object v2, p4

    .line 225
    nop

    nop

    .line 226
    .local v2, "unbound":Landroid/renderscript/ScriptGroup$Input;
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    array-length v4, v4

    if-ge p2, v4, :cond_2

    .line 227
    invoke-virtual {v2, p0, p2}, Landroid/renderscript/ScriptGroup$Input;->addReference(Landroid/renderscript/ScriptGroup$Closure;I)V

    .line 231
    :goto_2
    const-wide/16 v4, 0x0

    aput-wide v4, p5, p2

    .line 232
    const/4 v4, 0x0

    aput v4, p6, p2

    .line 211
    .end local v2    # "unbound":Landroid/renderscript/ScriptGroup$Input;
    :goto_3
    return-void

    .line 218
    .restart local v0    # "f":Landroid/renderscript/ScriptGroup$Future;
    .restart local v1    # "fieldID":Landroid/renderscript/Script$FieldID;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 220
    .end local v0    # "f":Landroid/renderscript/ScriptGroup$Future;
    .end local v1    # "fieldID":Landroid/renderscript/Script$FieldID;
    :cond_1
    const-wide/16 v4, 0x0

    aput-wide v4, p7, p2

    .line 221
    const-wide/16 v4, 0x0

    aput-wide v4, p8, p2

    goto :goto_1

    .line 229
    .restart local v2    # "unbound":Landroid/renderscript/ScriptGroup$Input;
    :cond_2
    invoke-virtual {v2, p0, p3}, Landroid/renderscript/ScriptGroup$Input;->addReference(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;)V

    goto :goto_2

    .line 234
    .end local v2    # "unbound":Landroid/renderscript/ScriptGroup$Input;
    :cond_3
    new-instance v3, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    invoke-direct {v3, p1, p4}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 235
    .local v3, "vs":Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    iget-wide v4, v3, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    aput-wide v4, p5, p2

    .line 236
    iget v4, v3, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    aput v4, p6, p2

    goto :goto_3
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    .line 195
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 193
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

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    .line 204
    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    .line 200
    return-void
.end method

.method public getGlobal(Landroid/renderscript/Script$FieldID;)Landroid/renderscript/ScriptGroup$Future;
    .locals 3
    .param p1, "field"    # Landroid/renderscript/Script$FieldID;

    .prologue
    .line 262
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    .line 264
    .local v0, "f":Landroid/renderscript/ScriptGroup$Future;
    if-nez v0, :cond_1

    .line 269
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 270
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v2, :cond_0

    .line 271
    nop

    nop

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 273
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v0, Landroid/renderscript/ScriptGroup$Future;

    .end local v0    # "f":Landroid/renderscript/ScriptGroup$Future;
    invoke-direct {v0, p0, p1, v1}, Landroid/renderscript/ScriptGroup$Future;-><init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    .line 274
    .restart local v0    # "f":Landroid/renderscript/ScriptGroup$Future;
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method public getReturn()Landroid/renderscript/ScriptGroup$Future;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Landroid/renderscript/ScriptGroup$Future;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    invoke-direct {v0, p0, v2, v1}, Landroid/renderscript/ScriptGroup$Future;-><init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    .line 251
    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    return-object v0
.end method

.method setArg(ILjava/lang/Object;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 281
    instance-of v0, p2, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v0, :cond_0

    .line 282
    nop

    nop

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 284
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 285
    new-instance v7, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v7, v0, p2}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 286
    .local v7, "vs":Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget-wide v4, v7, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iget v6, v7, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nClosureSetArg(JIJI)V

    .line 280
    return-void
.end method

.method setGlobal(Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 9
    .param p1, "fieldID"    # Landroid/renderscript/Script$FieldID;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 290
    instance-of v1, p2, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v1, :cond_0

    .line 291
    nop

    nop

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 293
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p2}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 295
    .local v0, "vs":Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-wide v6, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iget v8, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nClosureSetGlobal(JJJI)V

    .line 289
    return-void
.end method
