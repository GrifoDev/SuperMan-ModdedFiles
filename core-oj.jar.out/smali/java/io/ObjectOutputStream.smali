.class public Ljava/io/ObjectOutputStream;
.super Ljava/io/OutputStream;
.source "ObjectOutputStream.java"

# interfaces
.implements Ljava/io/ObjectOutput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectOutputStream$BlockDataOutputStream;,
        Ljava/io/ObjectOutputStream$Caches;,
        Ljava/io/ObjectOutputStream$DebugTraceInfoStack;,
        Ljava/io/ObjectOutputStream$HandleTable;,
        Ljava/io/ObjectOutputStream$PutField;,
        Ljava/io/ObjectOutputStream$PutFieldImpl;,
        Ljava/io/ObjectOutputStream$ReplaceTable;
    }
.end annotation


# static fields
.field private static final extendedDebugInfo:Z


# instance fields
.field private final bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

.field private curContext:Ljava/io/SerialCallbackContext;

.field private curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

.field private final debugInfoStack:Ljava/io/ObjectOutputStream$DebugTraceInfoStack;

.field private depth:I

.field private final enableOverride:Z

.field private enableReplace:Z

.field private final handles:Ljava/io/ObjectOutputStream$HandleTable;

.field private primVals:[B

.field private protocol:I

.field private final subs:Ljava/io/ObjectOutputStream$ReplaceTable;


# direct methods
.method static synthetic -get0(Ljava/io/ObjectOutputStream;)Ljava/io/ObjectOutputStream$BlockDataOutputStream;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    return-object v0
.end method

.method static synthetic -wrap0([DI[BII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectOutputStream;->doublesToBytes([DI[BII)V

    return-void
.end method

.method static synthetic -wrap1([FI[BII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectOutputStream;->floatsToBytes([FI[BII)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/io/ObjectOutputStream;Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v1, 0x2

    iput v1, p0, Ljava/io/ObjectOutputStream;->protocol:I

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/io/ObjectOutputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    iput-object v2, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    iput-object v2, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    iput-object v2, p0, Ljava/io/ObjectOutputStream;->debugInfoStack:Ljava/io/ObjectOutputStream$DebugTraceInfoStack;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0xa

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream;->protocol:I

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->verifySubclass()V

    new-instance v0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    new-instance v0, Ljava/io/ObjectOutputStream$HandleTable;

    invoke-direct {v0, v2, v1}, Ljava/io/ObjectOutputStream$HandleTable;-><init>(IF)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    new-instance v0, Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-direct {v0, v2, v1}, Ljava/io/ObjectOutputStream$ReplaceTable;-><init>(IF)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->writeStreamHeader()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->debugInfoStack:Ljava/io/ObjectOutputStream$DebugTraceInfoStack;

    return-void
.end method

.method private static auditSubclass(Ljava/lang/Class;)Z
    .locals 2

    new-instance v1, Ljava/io/ObjectOutputStream$1;

    invoke-direct {v1, p0}, Ljava/io/ObjectOutputStream$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$ReplaceTable;->clear()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->clear()V

    return-void
.end method

.method private defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->checkDefaultSerialize()V

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result v4

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    if-eqz v5, :cond_0

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    array-length v5, v5

    if-ge v5, v4, :cond_1

    :cond_0
    new-array v5, v4, [B

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    :cond_1
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    invoke-virtual {p2, p1, v5}, Ljava/io/ObjectStreamClass;->getPrimFieldValues(Ljava/lang/Object;[B)V

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    iget-object v6, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    invoke-virtual {v5, v6, v7, v4, v7}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    invoke-virtual {p2, v7}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result v5

    new-array v3, v5, [Ljava/lang/Object;

    array-length v5, v0

    array-length v6, v3

    sub-int v2, v5, v6

    invoke-virtual {p2, p1, v3}, Ljava/io/ObjectStreamClass;->getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_2

    :try_start_0
    aget-object v5, v3, v1

    add-int v6, v2, v1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v6

    invoke-direct {p0, v5, v6}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    throw v5

    :cond_2
    return-void
.end method

.method private static native doublesToBytes([DI[BII)V
.end method

.method private static native floatsToBytes([FI[BII)V
.end method

.method private isCustomSubclass()Z
    .locals 2

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private verifySubclass()V
    .locals 6

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Ljava/io/ObjectOutputStream;

    if-ne v0, v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v5, Ljava/io/ObjectOutputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v4, v5}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    new-instance v1, Ljava/io/ObjectStreamClass$WeakClassKey;

    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v0, v4}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/io/ObjectOutputStream;->auditSubclass(Ljava/lang/Class;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    sget-object v4, Ljava/io/ObjectOutputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    return-void
.end method

.method private writeArray(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v15, 0x75

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p3, :cond_1

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v15, v14}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_a

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_2

    move-object/from16 v8, p1

    check-cast v8, [I

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v8

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v8, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInts([III)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object/from16 v14, p1

    goto :goto_0

    :cond_2
    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_3

    move-object/from16 v2, p1

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v2

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v2

    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v2, v0, v15, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    goto :goto_1

    :cond_3
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_4

    move-object/from16 v9, p1

    check-cast v9, [J

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v9

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v9

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v9, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLongs([JII)V

    goto :goto_1

    :cond_4
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_5

    move-object/from16 v6, p1

    check-cast v6, [F

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v6

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v6

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeFloats([FII)V

    goto :goto_1

    :cond_5
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_6

    move-object/from16 v5, p1

    check-cast v5, [D

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v5

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v5, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeDoubles([DII)V

    goto :goto_1

    :cond_6
    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_7

    move-object/from16 v12, p1

    check-cast v12, [S

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v12

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v12

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v12, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShorts([SII)V

    goto/16 :goto_1

    :cond_7
    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_8

    move-object/from16 v3, p1

    check-cast v3, [C

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v3

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v3, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars([CII)V

    goto/16 :goto_1

    :cond_8
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_9

    move-object/from16 v13, p1

    check-cast v13, [Z

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v13

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v13

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBooleans([ZII)V

    goto/16 :goto_1

    :cond_9
    new-instance v14, Ljava/lang/InternalError;

    invoke-direct {v14}, Ljava/lang/InternalError;-><init>()V

    throw v14

    :cond_a
    move-object/from16 v11, p1

    check-cast v11, [Ljava/lang/Object;

    array-length v10, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v14, v10}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_0

    :try_start_0
    aget-object v14, v11, v7

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catchall_0
    move-exception v14

    :try_start_1
    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v14

    throw v14
.end method

.method private writeClass(Ljava/lang/Class;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    return-void
.end method

.method private writeClassDesc(Ljava/io/ObjectStreamClass;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeHandle(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeProxyDesc(Ljava/io/ObjectStreamClass;Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeNonProxyDesc(Ljava/io/ObjectStreamClass;Z)V

    goto :goto_0
.end method

.method private writeEnum(Ljava/lang/Enum;Ljava/io/ObjectStreamClass;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getSuperDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Enum;

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-direct {p0, p2, v3}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p3, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ljava/io/ObjectOutputStream;->writeString(Ljava/lang/String;Z)V

    return-void

    :cond_0
    move-object p2, v0

    goto :goto_0

    :cond_1
    move-object v1, p1

    goto :goto_1
.end method

.method private writeExternalData(Ljava/io/Externalizable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    iget v2, p0, Ljava/io/ObjectOutputStream;->protocol:I

    if-ne v2, v3, :cond_0

    invoke-interface {p1, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    iput-object v1, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    invoke-interface {p1, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    throw v2
.end method

.method private writeFatalException(Ljava/io/IOException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->clear()V

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    move-result v0

    :try_start_0
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    throw v1
.end method

.method private writeHandle(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/high16 v1, 0x7e0000

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    return-void
.end method

.method private writeNonProxyDesc(Ljava/io/ObjectStreamClass;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    iget v1, p0, Ljava/io/ObjectOutputStream;->protocol:I

    if-ne v1, v4, :cond_2

    invoke-virtual {p1, p0}, Ljava/io/ObjectStreamClass;->writeNonProxy(Ljava/io/ObjectOutputStream;)V

    :goto_1
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->isCustomSubclass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperDesc()Ljava/io/ObjectStreamClass;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    return-void

    :cond_1
    move-object v1, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    goto :goto_1
.end method

.method private writeNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    return-void
.end method

.method private writeObject0(Ljava/lang/Object;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, -0x1

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    move-result v5

    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    :try_start_0
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-virtual {v9, p1}, Ljava/io/ObjectOutputStream$ReplaceTable;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    return-void

    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v9, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v11, :cond_1

    invoke-direct {p0, v3}, Ljava/io/ObjectOutputStream;->writeHandle(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    return-void

    :cond_1
    move-object v6, p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v9, 0x1

    invoke-static {v1, v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasWriteReplaceMethod()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v2, p1}, Ljava/io/ObjectStreamClass;->invokeWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-eq v8, v1, :cond_2

    move-object v1, v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v2

    :cond_2
    :goto_0
    iget-boolean v9, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0, v4}, Ljava/io/ObjectOutputStream;->replaceObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v4, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v9, 0x1

    invoke-static {v1, v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v2

    :cond_3
    move-object v4, v7

    :cond_4
    if-eq v4, p1, :cond_7

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-virtual {v9, p1, v4}, Ljava/io/ObjectOutputStream$ReplaceTable;->assign(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v4, :cond_6

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    return-void

    :cond_5
    move-object v4, p1

    goto :goto_0

    :cond_6
    if-nez p2, :cond_7

    :try_start_4
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v9, v4}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v11, :cond_7

    invoke-direct {p0, v3}, Ljava/io/ObjectOutputStream;->writeHandle(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    return-void

    :cond_7
    :try_start_5
    instance-of v9, v4, Ljava/lang/Class;

    if-eqz v9, :cond_8

    move-object v0, v4

    check-cast v0, Ljava/lang/Class;

    move-object v9, v0

    invoke-direct {p0, v9, p2}, Ljava/io/ObjectOutputStream;->writeClass(Ljava/lang/Class;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    return-void

    :cond_8
    :try_start_6
    instance-of v9, v4, Ljava/io/ObjectStreamClass;

    if-eqz v9, :cond_9

    move-object v0, v4

    check-cast v0, Ljava/io/ObjectStreamClass;

    move-object v9, v0

    invoke-direct {p0, v9, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    move-object p1, v4

    :goto_2
    iget v10, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Ljava/io/ObjectOutputStream;->depth:I

    iget-object v10, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v10, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    throw v9

    :cond_9
    :try_start_7
    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_a

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-direct {p0, v9, p2}, Ljava/io/ObjectOutputStream;->writeString(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-direct {p0, v4, v2, p2}, Ljava/io/ObjectOutputStream;->writeArray(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V

    goto :goto_1

    :cond_b
    instance-of v9, v4, Ljava/lang/Enum;

    if-eqz v9, :cond_c

    move-object v0, v4

    check-cast v0, Ljava/lang/Enum;

    move-object v9, v0

    invoke-direct {p0, v9, v2, p2}, Ljava/io/ObjectOutputStream;->writeEnum(Ljava/lang/Enum;Ljava/io/ObjectStreamClass;Z)V

    goto :goto_1

    :cond_c
    instance-of v9, v4, Ljava/io/Serializable;

    if-eqz v9, :cond_d

    invoke-direct {p0, v4, v2, p2}, Ljava/io/ObjectOutputStream;->writeOrdinaryObject(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V

    goto :goto_1

    :cond_d
    new-instance v9, Ljava/io/NotSerializableException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_1
    move-exception v9

    goto :goto_2
.end method

.method private writeOrdinaryObject(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->checkSerialize()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    :goto_1
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
    check-cast p1, Ljava/io/Externalizable;

    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeExternalData(Ljava/io/Externalizable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private writeProxyDesc(Ljava/io/ObjectStreamClass;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move-object v3, p1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->isCustomSubclass()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateProxyClass(Ljava/lang/Class;)V

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperDesc()Ljava/io/ObjectStreamClass;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    return-void
.end method

.method private writeSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    aget-object v5, v4, v0

    iget-object v3, v5, Ljava/io/ObjectStreamClass$ClassDataSlot;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasWriteObjectMethod()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    const/4 v5, 0x0

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    :try_start_0
    new-instance v5, Ljava/io/SerialCallbackContext;

    invoke-direct {v5, p1, v3}, Ljava/io/SerialCallbackContext;-><init>(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    invoke-virtual {v3, p1, p0}, Ljava/io/ObjectStreamClass;->invokeWriteObject(Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    iput-object v1, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v6}, Ljava/io/SerialCallbackContext;->setUsed()V

    iput-object v1, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    throw v5

    :cond_0
    invoke-direct {p0, p1, v3}, Ljava/io/ObjectOutputStream;->defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private writeString(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v3, 0x74

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;J)V

    :goto_1
    return-void

    :cond_0
    move-object v2, p1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLongUTF(Ljava/lang/String;J)V

    goto :goto_1
.end method


# virtual methods
.method protected annotateClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected annotateProxyClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->flush()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->close()V

    return-void
.end method

.method public defaultWriteObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/NotActiveException;

    const-string/jumbo v3, "not in call to writeObject"

    invoke-direct {v2, v3}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    invoke-direct {p0, v1, v0}, Ljava/io/ObjectOutputStream;->defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    return-void
.end method

.method protected drain()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    return-void
.end method

.method protected enableReplaceObject(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    if-ne p1, v1, :cond_0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/io/ObjectOutputStream;->SUBSTITUTION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_1
    iput-boolean p1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    iget-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->flush()V

    return-void
.end method

.method getProtocolVersion()I
    .locals 1

    iget v0, p0, Ljava/io/ObjectOutputStream;->protocol:I

    return v0
.end method

.method public putFields()Ljava/io/ObjectOutputStream$PutField;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    if-nez v2, :cond_1

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/NotActiveException;

    const-string/jumbo v3, "not in call to writeObject"

    invoke-direct {v2, v3}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    new-instance v2, Ljava/io/ObjectOutputStream$PutFieldImpl;

    invoke-direct {v2, p0, v0}, Ljava/io/ObjectOutputStream$PutFieldImpl;-><init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V

    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    :cond_1
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    return-object v2
.end method

.method protected replaceObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Ljava/io/ObjectOutputStream;->depth:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream active"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->clear()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    return-void
.end method

.method public useProtocolVersion(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stream non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Ljava/io/ObjectOutputStream;->protocol:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    add-int v0, p2, p3

    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_2
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBoolean(Z)V

    return-void
.end method

.method public writeByte(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method public writeChar(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChar(I)V

    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars(Ljava/lang/String;)V

    return-void
.end method

.method protected writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/ObjectStreamClass;->writeNonProxy(Ljava/io/ObjectOutputStream;)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeDouble(D)V

    return-void
.end method

.method public writeFields()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/NotActiveException;

    const-string/jumbo v1, "no current PutField object"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$PutFieldImpl;->writeFields()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeFloat(F)V

    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLong(J)V

    return-void
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v2, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObjectOverride(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v2}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget v2, p0, Ljava/io/ObjectOutputStream;->depth:I

    if-nez v2, :cond_1

    :try_start_1
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFatalException(Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected writeObjectOverride(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public writeShort(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    return-void
.end method

.method protected writeStreamHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, -0x5313

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    return-void
.end method

.method writeTypeString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeHandle(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream;->writeString(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public writeUnshared(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFatalException(Ljava/io/IOException;)V

    :cond_0
    throw v0
.end method
