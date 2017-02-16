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
    .param p0, "src"    # [D
    .param p1, "srcpos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstpos"    # I
    .param p4, "ndoubles"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectOutputStream;->doublesToBytes([DI[BII)V

    return-void
.end method

.method static synthetic -wrap1([FI[BII)V
    .locals 0
    .param p0, "src"    # [F
    .param p1, "srcpos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstpos"    # I
    .param p4, "nfloats"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectOutputStream;->floatsToBytes([FI[BII)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/io/ObjectOutputStream;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "unshared"    # Z

    .prologue
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

    .prologue
    const/4 v2, 0x0

    .line 270
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 185
    const/4 v1, 0x2

    iput v1, p0, Ljava/io/ObjectOutputStream;->protocol:I

    .line 271
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 272
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 273
    sget-object v1, Ljava/io/ObjectOutputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 275
    :cond_0
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    .line 276
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    .line 277
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    .line 278
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    .line 279
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->debugInfoStack:Ljava/io/ObjectOutputStream$DebugTraceInfoStack;

    .line 270
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xa

    const/high16 v1, 0x40400000    # 3.0f

    .line 239
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 185
    const/4 v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream;->protocol:I

    .line 240
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->verifySubclass()V

    .line 241
    new-instance v0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    .line 242
    new-instance v0, Ljava/io/ObjectOutputStream$HandleTable;

    invoke-direct {v0, v2, v1}, Ljava/io/ObjectOutputStream$HandleTable;-><init>(IF)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    .line 243
    new-instance v0, Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-direct {v0, v2, v1}, Ljava/io/ObjectOutputStream$ReplaceTable;-><init>(IF)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    .line 245
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->writeStreamHeader()V

    .line 246
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->debugInfoStack:Ljava/io/ObjectOutputStream$DebugTraceInfoStack;

    .line 239
    return-void
.end method

.method private static auditSubclass(Ljava/lang/Class;)Z
    .locals 2
    .param p0, "subcl"    # Ljava/lang/Class;

    .prologue
    .line 1082
    new-instance v1, Ljava/io/ObjectOutputStream$1;

    invoke-direct {v1, p0}, Ljava/io/ObjectOutputStream$1;-><init>(Ljava/lang/Class;)V

    .line 1081
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1104
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$ReplaceTable;->clear()V

    .line 1112
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->clear()V

    .line 1110
    return-void
.end method

.method private defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1563
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->checkDefaultSerialize()V

    .line 1565
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result v4

    .line 1566
    .local v4, "primDataSize":I
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    if-eqz v5, :cond_0

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    array-length v5, v5

    if-ge v5, v4, :cond_1

    .line 1567
    :cond_0
    new-array v5, v4, [B

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    .line 1569
    :cond_1
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    invoke-virtual {p2, p1, v5}, Ljava/io/ObjectStreamClass;->getPrimFieldValues(Ljava/lang/Object;[B)V

    .line 1570
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    iget-object v6, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    invoke-virtual {v5, v6, v7, v4, v7}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1572
    invoke-virtual {p2, v7}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 1573
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result v5

    new-array v3, v5, [Ljava/lang/Object;

    .line 1574
    .local v3, "objVals":[Ljava/lang/Object;
    array-length v5, v0

    array-length v6, v3

    sub-int v2, v5, v6

    .line 1575
    .local v2, "numPrimFields":I
    invoke-virtual {p2, p1, v3}, Ljava/io/ObjectStreamClass;->getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1576
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 1584
    :try_start_0
    aget-object v5, v3, v1

    .line 1585
    add-int v6, v2, v1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v6

    .line 1584
    invoke-direct {p0, v5, v6}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1576
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1586
    :catchall_0
    move-exception v5

    throw v5

    .line 1560
    :cond_2
    return-void
.end method

.method private static native doublesToBytes([DI[BII)V
.end method

.method private static native floatsToBytes([FI[BII)V
.end method

.method private isCustomSubclass()Z
    .locals 2

    .prologue
    .line 1277
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1278
    const-class v1, Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1277
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

    .prologue
    .line 1054
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1055
    .local v0, "cl":Ljava/lang/Class;
    const-class v4, Ljava/io/ObjectOutputStream;

    if-ne v0, v4, :cond_0

    .line 1056
    return-void

    .line 1058
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 1059
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-nez v3, :cond_1

    .line 1060
    return-void

    .line 1062
    :cond_1
    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v5, Ljava/io/ObjectOutputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v4, v5}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 1063
    new-instance v1, Ljava/io/ObjectStreamClass$WeakClassKey;

    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v0, v4}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    .line 1064
    .local v1, "key":Ljava/io/ObjectStreamClass$WeakClassKey;
    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1065
    .local v2, "result":Ljava/lang/Boolean;
    if-nez v2, :cond_2

    .line 1066
    invoke-static {v0}, Ljava/io/ObjectOutputStream;->auditSubclass(Ljava/lang/Class;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1067
    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1070
    return-void

    .line 1072
    :cond_3
    sget-object v4, Ljava/io/ObjectOutputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1053
    return-void
.end method

.method private writeArray(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V
    .locals 18
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1361
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v15, 0x75

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1362
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p3, :cond_1

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v15, v14}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1365
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 1366
    .local v4, "ccl":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1367
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_2

    move-object/from16 v8, p1

    .line 1368
    check-cast v8, [I

    .line 1369
    .local v8, "ia":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v8

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v8, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInts([III)V

    .line 1359
    .end local v8    # "ia":[I
    :cond_0
    :goto_1
    return-void

    .end local v4    # "ccl":Ljava/lang/Class;
    :cond_1
    move-object/from16 v14, p1

    .line 1363
    goto :goto_0

    .line 1371
    .restart local v4    # "ccl":Ljava/lang/Class;
    :cond_2
    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_3

    move-object/from16 v2, p1

    .line 1372
    check-cast v2, [B

    .line 1373
    .local v2, "ba":[B
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v2

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v2

    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v2, v0, v15, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    goto :goto_1

    .line 1375
    .end local v2    # "ba":[B
    :cond_3
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_4

    move-object/from16 v9, p1

    .line 1376
    check-cast v9, [J

    .line 1377
    .local v9, "ja":[J
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v9

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v9

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v9, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLongs([JII)V

    goto :goto_1

    .line 1379
    .end local v9    # "ja":[J
    :cond_4
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_5

    move-object/from16 v6, p1

    .line 1380
    check-cast v6, [F

    .line 1381
    .local v6, "fa":[F
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v6

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v6

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeFloats([FII)V

    goto :goto_1

    .line 1383
    .end local v6    # "fa":[F
    :cond_5
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_6

    move-object/from16 v5, p1

    .line 1384
    check-cast v5, [D

    .line 1385
    .local v5, "da":[D
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v5

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v5, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeDoubles([DII)V

    goto :goto_1

    .line 1387
    .end local v5    # "da":[D
    :cond_6
    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_7

    move-object/from16 v12, p1

    .line 1388
    check-cast v12, [S

    .line 1389
    .local v12, "sa":[S
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v12

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v12

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v12, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShorts([SII)V

    goto/16 :goto_1

    .line 1391
    .end local v12    # "sa":[S
    :cond_7
    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_8

    move-object/from16 v3, p1

    .line 1392
    check-cast v3, [C

    .line 1393
    .local v3, "ca":[C
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v3

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v3, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars([CII)V

    goto/16 :goto_1

    .line 1395
    .end local v3    # "ca":[C
    :cond_8
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_9

    move-object/from16 v13, p1

    .line 1396
    check-cast v13, [Z

    .line 1397
    .local v13, "za":[Z
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v13

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v13

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBooleans([ZII)V

    goto/16 :goto_1

    .line 1400
    .end local v13    # "za":[Z
    :cond_9
    new-instance v14, Ljava/lang/InternalError;

    invoke-direct {v14}, Ljava/lang/InternalError;-><init>()V

    throw v14

    :cond_a
    move-object/from16 v11, p1

    .line 1403
    check-cast v11, [Ljava/lang/Object;

    .line 1404
    .local v11, "objs":[Ljava/lang/Object;
    array-length v10, v11

    .line 1405
    .local v10, "len":I
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v14, v10}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1412
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v10, :cond_0

    .line 1418
    :try_start_0
    aget-object v14, v11, v7

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1419
    :catchall_0
    move-exception v14

    :try_start_1
    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1425
    :catchall_1
    move-exception v14

    throw v14
.end method

.method private writeClass(Ljava/lang/Class;Z)V
    .locals 2
    .param p1, "cl"    # Ljava/lang/Class;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1252
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1253
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1254
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .end local p1    # "cl":Ljava/lang/Class;
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1251
    return-void
.end method

.method private writeClassDesc(Ljava/io/ObjectStreamClass;Z)V
    .locals 2
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1264
    if-nez p1, :cond_0

    .line 1265
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    .line 1261
    :goto_0
    return-void

    .line 1266
    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v0

    .local v0, "handle":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1267
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeHandle(I)V

    goto :goto_0

    .line 1268
    .end local v0    # "handle":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1269
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeProxyDesc(Ljava/io/ObjectStreamClass;Z)V

    goto :goto_0

    .line 1271
    :cond_2
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeNonProxyDesc(Ljava/io/ObjectStreamClass;Z)V

    goto :goto_0
.end method

.method private writeEnum(Ljava/lang/Enum;Ljava/io/ObjectStreamClass;Z)V
    .locals 4
    .param p1, "en"    # Ljava/lang/Enum;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1441
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1442
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getSuperDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1443
    .local v0, "sdesc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Enum;

    if-ne v1, v2, :cond_0

    .end local p2    # "desc":Ljava/io/ObjectStreamClass;
    :goto_0
    invoke-direct {p0, p2, v3}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1444
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p3, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1445
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ljava/io/ObjectOutputStream;->writeString(Ljava/lang/String;Z)V

    .line 1439
    return-void

    .restart local p2    # "desc":Ljava/io/ObjectStreamClass;
    :cond_0
    move-object p2, v0

    .line 1443
    goto :goto_0

    .end local p2    # "desc":Ljava/io/ObjectStreamClass;
    :cond_1
    move-object v1, p1

    .line 1444
    goto :goto_1
.end method

.method private writeExternalData(Ljava/io/Externalizable;)V
    .locals 4
    .param p1, "obj"    # Ljava/io/Externalizable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1486
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1487
    .local v1, "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1492
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1494
    .local v0, "oldContext":Ljava/io/SerialCallbackContext;
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1495
    iget v2, p0, Ljava/io/ObjectOutputStream;->protocol:I

    if-ne v2, v3, :cond_0

    .line 1496
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    :goto_0
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1510
    iput-object v1, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1485
    return-void

    .line 1498
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1499
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1500
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1501
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1503
    :catchall_0
    move-exception v2

    .line 1504
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1503
    throw v2
.end method

.method private writeFatalException(Ljava/io/IOException;)V
    .locals 3
    .param p1, "ex"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1609
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->clear()V

    .line 1610
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    move-result v0

    .line 1612
    .local v0, "oldMode":Z
    :try_start_0
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1613
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V

    .line 1614
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1616
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1598
    return-void

    .line 1615
    :catchall_0
    move-exception v1

    .line 1616
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1615
    throw v1
.end method

.method private writeHandle(I)V
    .locals 2
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1244
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1245
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/high16 v1, 0x7e0000

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1243
    return-void
.end method

.method private writeNonProxyDesc(Ljava/io/ObjectStreamClass;Z)V
    .locals 5
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1315
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1316
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1318
    iget v1, p0, Ljava/io/ObjectOutputStream;->protocol:I

    if-ne v1, v4, :cond_2

    .line 1320
    invoke-virtual {p1, p0}, Ljava/io/ObjectStreamClass;->writeNonProxy(Ljava/io/ObjectOutputStream;)V

    .line 1325
    :goto_1
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1326
    .local v0, "cl":Ljava/lang/Class;
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1327
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->isCustomSubclass()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1328
    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 1330
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    .line 1331
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1332
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1334
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperDesc()Ljava/io/ObjectStreamClass;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1313
    return-void

    .end local v0    # "cl":Ljava/lang/Class;
    :cond_1
    move-object v1, p1

    .line 1316
    goto :goto_0

    .line 1322
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

    .prologue
    .line 1237
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1236
    return-void
.end method

.method private writeObject0(Ljava/lang/Object;Z)V
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 1121
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    move-result v5

    .line 1122
    .local v5, "oldMode":Z
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1126
    :try_start_0
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-virtual {v9, p1}, Ljava/io/ObjectOutputStream$ReplaceTable;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1127
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1228
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1229
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1128
    return-void

    .line 1129
    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v9, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v3

    .local v3, "h":I
    if-eq v3, v11, :cond_1

    .line 1130
    invoke-direct {p0, v3}, Ljava/io/ObjectOutputStream;->writeHandle(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1228
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1229
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1131
    return-void

    .line 1143
    .end local v3    # "h":I
    :cond_1
    move-object v6, p1

    .line 1144
    .local v6, "orig":Ljava/lang/Object;
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1165
    .local v1, "cl":Ljava/lang/Class;
    const/4 v9, 0x1

    invoke-static {v1, v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 1166
    .local v2, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasWriteReplaceMethod()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1167
    invoke-virtual {v2, p1}, Ljava/io/ObjectStreamClass;->invokeWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .end local p1    # "obj":Ljava/lang/Object;
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 1168
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .local v8, "repCl":Ljava/lang/Class;
    if-eq v8, v1, :cond_2

    .line 1170
    move-object v1, v8

    .line 1171
    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 1175
    .end local v8    # "repCl":Ljava/lang/Class;
    :cond_2
    :goto_0
    iget-boolean v9, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    if-eqz v9, :cond_4

    .line 1176
    invoke-virtual {p0, v4}, Ljava/io/ObjectOutputStream;->replaceObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1177
    .local v7, "rep":Ljava/lang/Object;
    if-eq v7, v4, :cond_3

    if-eqz v7, :cond_3

    .line 1178
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1179
    const/4 v9, 0x1

    invoke-static {v1, v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 1181
    :cond_3
    move-object v4, v7

    .line 1185
    .end local v7    # "rep":Ljava/lang/Object;
    :cond_4
    if-eq v4, p1, :cond_7

    .line 1186
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-virtual {v9, p1, v4}, Ljava/io/ObjectOutputStream$ReplaceTable;->assign(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1187
    if-nez v4, :cond_6

    .line 1188
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1228
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1229
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1189
    return-void

    .end local v4    # "obj":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    move-object v4, p1

    .line 1168
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v4    # "obj":Ljava/lang/Object;
    goto :goto_0

    .line 1190
    :cond_6
    if-nez p2, :cond_7

    :try_start_4
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v9, v4}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v3

    .restart local v3    # "h":I
    if-eq v3, v11, :cond_7

    .line 1191
    invoke-direct {p0, v3}, Ljava/io/ObjectOutputStream;->writeHandle(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1228
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1229
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1192
    return-void

    .line 1206
    .end local v3    # "h":I
    :cond_7
    :try_start_5
    instance-of v9, v4, Ljava/lang/Class;

    if-eqz v9, :cond_8

    .line 1207
    move-object v0, v4

    check-cast v0, Ljava/lang/Class;

    move-object v9, v0

    invoke-direct {p0, v9, p2}, Ljava/io/ObjectOutputStream;->writeClass(Ljava/lang/Class;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1228
    :goto_1
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1229
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1119
    return-void

    .line 1208
    :cond_8
    :try_start_6
    instance-of v9, v4, Ljava/io/ObjectStreamClass;

    if-eqz v9, :cond_9

    .line 1209
    move-object v0, v4

    check-cast v0, Ljava/io/ObjectStreamClass;

    move-object v9, v0

    invoke-direct {p0, v9, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1227
    :catchall_0
    move-exception v9

    move-object p1, v4

    .line 1228
    .end local v1    # "cl":Ljava/lang/Class;
    .end local v2    # "desc":Ljava/io/ObjectStreamClass;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v6    # "orig":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :goto_2
    iget v10, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1229
    iget-object v10, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v10, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1227
    throw v9

    .line 1211
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v1    # "cl":Ljava/lang/Class;
    .restart local v2    # "desc":Ljava/io/ObjectStreamClass;
    .restart local v4    # "obj":Ljava/lang/Object;
    .restart local v6    # "orig":Ljava/lang/Object;
    :cond_9
    :try_start_7
    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_a

    .line 1212
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-direct {p0, v9, p2}, Ljava/io/ObjectOutputStream;->writeString(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1213
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1214
    invoke-direct {p0, v4, v2, p2}, Ljava/io/ObjectOutputStream;->writeArray(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V

    goto :goto_1

    .line 1215
    :cond_b
    instance-of v9, v4, Ljava/lang/Enum;

    if-eqz v9, :cond_c

    .line 1216
    move-object v0, v4

    check-cast v0, Ljava/lang/Enum;

    move-object v9, v0

    invoke-direct {p0, v9, v2, p2}, Ljava/io/ObjectOutputStream;->writeEnum(Ljava/lang/Enum;Ljava/io/ObjectStreamClass;Z)V

    goto :goto_1

    .line 1217
    :cond_c
    instance-of v9, v4, Ljava/io/Serializable;

    if-eqz v9, :cond_d

    .line 1218
    invoke-direct {p0, v4, v2, p2}, Ljava/io/ObjectOutputStream;->writeOrdinaryObject(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V

    goto :goto_1

    .line 1224
    :cond_d
    new-instance v9, Ljava/io/NotSerializableException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1227
    .end local v1    # "cl":Ljava/lang/Class;
    .end local v2    # "desc":Ljava/io/ObjectStreamClass;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v6    # "orig":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :catchall_1
    move-exception v9

    goto :goto_2
.end method

.method private writeOrdinaryObject(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1464
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->checkSerialize()V

    .line 1466
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1467
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1468
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1469
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1472
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 1456
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_1
    return-void

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    move-object v0, p1

    .line 1468
    goto :goto_0

    .line 1470
    :cond_2
    check-cast p1, Ljava/io/Externalizable;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeExternalData(Ljava/io/Externalizable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1474
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private writeProxyDesc(Ljava/io/ObjectStreamClass;Z)V
    .locals 6
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1287
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1288
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1290
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1291
    .local v0, "cl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 1292
    .local v2, "ifaces":[Ljava/lang/Class;
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1293
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1294
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1293
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "cl":Ljava/lang/Class;
    .end local v1    # "i":I
    .end local v2    # "ifaces":[Ljava/lang/Class;
    :cond_0
    move-object v3, p1

    .line 1288
    goto :goto_0

    .line 1297
    .restart local v0    # "cl":Ljava/lang/Class;
    .restart local v1    # "i":I
    .restart local v2    # "ifaces":[Ljava/lang/Class;
    :cond_1
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1298
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->isCustomSubclass()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1299
    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 1301
    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateProxyClass(Ljava/lang/Class;)V

    .line 1302
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1303
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1305
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperDesc()Ljava/io/ObjectStreamClass;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1285
    return-void
.end method

.method private writeSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1520
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    move-result-object v4

    .line 1521
    .local v4, "slots":[Ljava/io/ObjectStreamClass$ClassDataSlot;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 1522
    aget-object v5, v4, v0

    iget-object v3, v5, Ljava/io/ObjectStreamClass$ClassDataSlot;->desc:Ljava/io/ObjectStreamClass;

    .line 1523
    .local v3, "slotDesc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasWriteObjectMethod()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1524
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1525
    .local v2, "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1526
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1534
    .local v1, "oldContext":Ljava/io/SerialCallbackContext;
    :try_start_0
    new-instance v5, Ljava/io/SerialCallbackContext;

    invoke-direct {v5, p1, v3}, Ljava/io/SerialCallbackContext;-><init>(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1535
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1536
    invoke-virtual {v3, p1, p0}, Ljava/io/ObjectStreamClass;->invokeWriteObject(Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V

    .line 1537
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1538
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 1541
    iput-object v1, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1547
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1521
    .end local v1    # "oldContext":Ljava/io/SerialCallbackContext;
    .end local v2    # "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1539
    .restart local v1    # "oldContext":Ljava/io/SerialCallbackContext;
    .restart local v2    # "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    :catchall_0
    move-exception v5

    .line 1540
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v6}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 1541
    iput-object v1, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1539
    throw v5

    .line 1549
    .end local v1    # "oldContext":Ljava/io/SerialCallbackContext;
    .end local v2    # "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    :cond_0
    invoke-direct {p0, p1, v3}, Ljava/io/ObjectOutputStream;->defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_1

    .line 1518
    .end local v3    # "slotDesc":Ljava/io/ObjectStreamClass;
    :cond_1
    return-void
.end method

.method private writeString(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1342
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1343
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    move-result-wide v0

    .line 1344
    .local v0, "utflen":J
    const-wide/32 v2, 0xffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1345
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v3, 0x74

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1346
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;J)V

    .line 1341
    :goto_1
    return-void

    .end local v0    # "utflen":J
    :cond_0
    move-object v2, p1

    .line 1342
    goto :goto_0

    .line 1348
    .restart local v0    # "utflen":J
    :cond_1
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1349
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

    .prologue
    .line 534
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .prologue
    .line 558
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 755
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->close()V

    .line 751
    return-void
.end method

.method public defaultWriteObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    if-nez v2, :cond_0

    .line 449
    new-instance v2, Ljava/io/NotActiveException;

    const-string/jumbo v3, "not in call to writeObject"

    invoke-direct {v2, v3}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    :cond_0
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v1

    .line 452
    .local v1, "curObj":Ljava/lang/Object;
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 453
    .local v0, "curDesc":Ljava/io/ObjectStreamClass;
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 454
    invoke-direct {p0, v1, v0}, Ljava/io/ObjectOutputStream;->defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 455
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 447
    return-void
.end method

.method protected drain()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 741
    return-void
.end method

.method protected enableReplaceObject(Z)Z
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 626
    iget-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    if-ne p1, v1, :cond_0

    .line 627
    return p1

    .line 629
    :cond_0
    if-eqz p1, :cond_1

    .line 630
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 631
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 632
    sget-object v1, Ljava/io/ObjectOutputStream;->SUBSTITUTION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 635
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    iput-boolean p1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    .line 636
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

    .prologue
    .line 731
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->flush()V

    .line 730
    return-void
.end method

.method getProtocolVersion()I
    .locals 1

    .prologue
    .line 1029
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

    .prologue
    .line 469
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    if-nez v2, :cond_1

    .line 470
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    if-nez v2, :cond_0

    .line 471
    new-instance v2, Ljava/io/NotActiveException;

    const-string/jumbo v3, "not in call to writeObject"

    invoke-direct {v2, v3}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 473
    :cond_0
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v1

    .line 474
    .local v1, "curObj":Ljava/lang/Object;
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 475
    .local v0, "curDesc":Ljava/io/ObjectStreamClass;
    new-instance v2, Ljava/io/ObjectOutputStream$PutFieldImpl;

    invoke-direct {v2, p0, v0}, Ljava/io/ObjectOutputStream$PutFieldImpl;-><init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V

    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 477
    .end local v0    # "curDesc":Ljava/io/ObjectStreamClass;
    .end local v1    # "curObj":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    return-object v2
.end method

.method protected replaceObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    return-object p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 509
    iget v0, p0, Ljava/io/ObjectOutputStream;->depth:I

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream active"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 513
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 514
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->clear()V

    .line 515
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 508
    return-void
.end method

.method public useProtocolVersion(I)V
    .locals 3
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stream non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :pswitch_0
    iput p1, p0, Ljava/io/ObjectOutputStream;->protocol:I

    .line 302
    return-void

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public write(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 690
    return-void
.end method

.method public write([B)V
    .locals 3
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 702
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 701
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 714
    if-nez p1, :cond_0

    .line 715
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 717
    :cond_0
    add-int v0, p2, p3

    .line 718
    .local v0, "endoff":I
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 719
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 718
    :cond_2
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    .line 721
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 713
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 766
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBoolean(Z)V

    .line 765
    return-void
.end method

.method public writeByte(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 776
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 854
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method public writeChar(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 799
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChar(I)V

    .line 798
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars(Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method protected writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .locals 0
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    invoke-virtual {p1, p0}, Ljava/io/ObjectStreamClass;->writeNonProxy(Ljava/io/ObjectOutputStream;)V

    .line 678
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "val"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 843
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeDouble(D)V

    .line 842
    return-void
.end method

.method public writeFields()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Ljava/io/NotActiveException;

    const-string/jumbo v1, "no current PutField object"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 494
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$PutFieldImpl;->writeFields()V

    .line 495
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 489
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "val"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeFloat(F)V

    .line 831
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 809
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLong(J)V

    .line 820
    return-void
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    iget-boolean v2, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObjectOverride(Ljava/lang/Object;)V

    .line 343
    return-void

    .line 346
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v2}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "ex":Ljava/io/IOException;
    iget v2, p0, Ljava/io/ObjectOutputStream;->depth:I

    if-nez v2, :cond_1

    .line 352
    :try_start_1
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFatalException(Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 361
    :cond_1
    :goto_0
    throw v0

    .line 354
    :catch_1
    move-exception v1

    .local v1, "ex2":Ljava/io/IOException;
    goto :goto_0
.end method

.method protected writeObjectOverride(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 379
    :cond_0
    return-void
.end method

.method public writeShort(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    .line 787
    return-void
.end method

.method protected writeStreamHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, -0x5313

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    .line 649
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    .line 647
    return-void
.end method

.method writeTypeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1038
    if-nez p1, :cond_0

    .line 1039
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    .line 1036
    :goto_0
    return-void

    .line 1040
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v0

    .local v0, "handle":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1041
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeHandle(I)V

    goto :goto_0

    .line 1043
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream;->writeString(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method public writeUnshared(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "ex":Ljava/io/IOException;
    iget v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    if-nez v1, :cond_0

    .line 432
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFatalException(Ljava/io/IOException;)V

    .line 434
    :cond_0
    throw v0
.end method
