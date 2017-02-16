.class public Ljava/io/ObjectInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/io/ObjectInput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$BlockDataInputStream;,
        Ljava/io/ObjectInputStream$Caches;,
        Ljava/io/ObjectInputStream$GetField;,
        Ljava/io/ObjectInputStream$GetFieldImpl;,
        Ljava/io/ObjectInputStream$HandleTable;,
        Ljava/io/ObjectInputStream$PeekInputStream;,
        Ljava/io/ObjectInputStream$ValidationList;
    }
.end annotation


# static fields
.field private static final NULL_HANDLE:I = -0x1

.field private static final primClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final unsharedMarker:Ljava/lang/Object;


# instance fields
.field private final bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

.field private closed:Z

.field private curContext:Ljava/io/SerialCallbackContext;

.field private defaultDataEnd:Z

.field private depth:I

.field private final enableOverride:Z

.field private enableResolve:Z

.field private final handles:Ljava/io/ObjectInputStream$HandleTable;

.field private passHandle:I

.field private primVals:[B

.field private final vlist:Ljava/io/ObjectInputStream$ValidationList;


# direct methods
.method static synthetic -get0(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$BlockDataInputStream;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    return-object v0
.end method

.method static synthetic -get1(Ljava/io/ObjectInputStream;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    return v0
.end method

.method static synthetic -get2(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    return-object v0
.end method

.method static synthetic -get3(Ljava/io/ObjectInputStream;)I
    .locals 1

    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return v0
.end method

.method static synthetic -set0(Ljava/io/ObjectInputStream;I)I
    .locals 0

    iput p1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return p1
.end method

.method static synthetic -wrap0(Ljava/io/ObjectInputStream;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "unshared"    # Z

    .prologue
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1([BI[DII)V
    .locals 0
    .param p0, "src"    # [B
    .param p1, "srcpos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstpos"    # I
    .param p4, "ndoubles"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream;->bytesToDoubles([BI[DII)V

    return-void
.end method

.method static synthetic -wrap2([BI[FII)V
    .locals 0
    .param p0, "src"    # [B
    .param p1, "srcpos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstpos"    # I
    .param p4, "nfloats"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream;->bytesToFloats([BI[FII)V

    return-void
.end method

.method static synthetic -wrap3(Ljava/io/ObjectInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->handleReset()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 219
    sput-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    .line 222
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "void"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
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

    .line 322
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 255
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 257
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 323
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 324
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 325
    sget-object v1, Ljava/io/ObjectInputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 327
    :cond_0
    iput-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    .line 328
    iput-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    .line 329
    iput-object v2, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    .line 330
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    .line 322
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 296
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 255
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 257
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 297
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->verifySubclass()V

    .line 298
    new-instance v0, Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/ObjectInputStream$BlockDataInputStream;-><init>(Ljava/io/ObjectInputStream;Ljava/io/InputStream;)V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    .line 299
    new-instance v0, Ljava/io/ObjectInputStream$HandleTable;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream$HandleTable;-><init>(I)V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    .line 300
    new-instance v0, Ljava/io/ObjectInputStream$ValidationList;

    invoke-direct {v0}, Ljava/io/ObjectInputStream$ValidationList;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    .line 301
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    .line 302
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readStreamHeader()V

    .line 303
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 296
    return-void
.end method

.method private static auditSubclass(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1264
    .local p0, "subcl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/io/ObjectInputStream$1;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream$1;-><init>(Ljava/lang/Class;)V

    .line 1263
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1286
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static native bytesToDoubles([BI[DII)V
.end method

.method private static native bytesToFloats([BI[FII)V
.end method

.method private checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1396
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1397
    :cond_0
    return-object p1

    .line 1399
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1400
    .local v0, "rep":Ljava/lang/Object;
    if-eq v0, p1, :cond_2

    .line 1401
    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    .line 1403
    :cond_2
    return-object v0
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$HandleTable;->clear()V

    .line 1294
    iget-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$ValidationList;->clear()V

    .line 1292
    return-void
.end method

.method private static cloneArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 3518
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3519
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3520
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [Z

    if-eqz v0, :cond_1

    .line 3521
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3522
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 3523
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3524
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [C

    if-eqz v0, :cond_3

    .line 3525
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3526
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [D

    if-eqz v0, :cond_4

    .line 3527
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3528
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [F

    if-eqz v0, :cond_5

    .line 3529
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3530
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [I

    if-eqz v0, :cond_6

    .line 3531
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3532
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, [J

    if-eqz v0, :cond_7

    .line 3533
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3534
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, [S

    if-eqz v0, :cond_8

    .line 3535
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3537
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1972
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1973
    .local v0, "cl":Ljava/lang/Class;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1977
    :cond_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result v7

    .line 1978
    .local v7, "primDataSize":I
    iget-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    if-eqz v8, :cond_1

    iget-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    array-length v8, v8

    if-ge v8, v7, :cond_2

    .line 1979
    :cond_1
    new-array v8, v7, [B

    iput-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    .line 1981
    :cond_2
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    iget-object v9, p0, Ljava/io/ObjectInputStream;->primVals:[B

    invoke-virtual {v8, v9, v10, v7, v10}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 1982
    if-eqz p1, :cond_3

    .line 1983
    iget-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    invoke-virtual {p2, p1, v8}, Ljava/io/ObjectStreamClass;->setPrimFieldValues(Ljava/lang/Object;[B)V

    .line 1986
    :cond_3
    iget v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1987
    .local v5, "objHandle":I
    invoke-virtual {p2, v10}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v2

    .line 1988
    .local v2, "fields":[Ljava/io/ObjectStreamField;
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result v8

    new-array v6, v8, [Ljava/lang/Object;

    .line 1989
    .local v6, "objVals":[Ljava/lang/Object;
    array-length v8, v2

    array-length v9, v6

    sub-int v4, v8, v9

    .line 1990
    .local v4, "numPrimFields":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v6

    if-ge v3, v8, :cond_6

    .line 1991
    add-int v8, v4, v3

    aget-object v1, v2, v8

    .line 1992
    .local v1, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v8

    invoke-direct {p0, v8}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v3

    .line 1993
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1994
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v9, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v8, v5, v9}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 1990
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1974
    .end local v1    # "f":Ljava/io/ObjectStreamField;
    .end local v2    # "fields":[Ljava/io/ObjectStreamField;
    .end local v3    # "i":I
    .end local v4    # "numPrimFields":I
    .end local v5    # "objHandle":I
    .end local v6    # "objVals":[Ljava/lang/Object;
    .end local v7    # "primDataSize":I
    :cond_5
    new-instance v8, Ljava/lang/ClassCastException;

    invoke-direct {v8}, Ljava/lang/ClassCastException;-><init>()V

    throw v8

    .line 1997
    .restart local v2    # "fields":[Ljava/io/ObjectStreamField;
    .restart local v3    # "i":I
    .restart local v4    # "numPrimFields":I
    .restart local v5    # "objHandle":I
    .restart local v6    # "objVals":[Ljava/lang/Object;
    .restart local v7    # "primDataSize":I
    :cond_6
    if-eqz p1, :cond_7

    .line 1998
    invoke-virtual {p2, p1, v6}, Ljava/io/ObjectStreamClass;->setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 2000
    :cond_7
    iput v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1969
    return-void
.end method

.method private handleReset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 2026
    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    if-lez v0, :cond_0

    .line 2027
    new-instance v0, Ljava/io/StreamCorruptedException;

    .line 2028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected reset; recursion depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/io/ObjectInputStream;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2027
    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2030
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 2025
    return-void
.end method

.method private isCustomSubclass()Z
    .locals 2

    .prologue
    .line 1528
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1529
    const-class v1, Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1528
    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static latestUserDefinedLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 2061
    invoke-static {}, Ldalvik/system/VMStack;->getClosestUserClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private readArray(Z)Ljava/lang/Object;
    .locals 13
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1660
    iget-object v9, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v9}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v9

    const/16 v10, 0x75

    if-eq v9, v10, :cond_0

    .line 1661
    new-instance v9, Ljava/lang/InternalError;

    invoke-direct {v9}, Ljava/lang/InternalError;-><init>()V

    throw v9

    .line 1664
    :cond_0
    invoke-direct {p0, v12}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v4

    .line 1665
    .local v4, "desc":Ljava/io/ObjectStreamClass;
    iget-object v9, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v9}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v6

    .line 1667
    .local v6, "len":I
    const/4 v0, 0x0

    .line 1668
    .local v0, "array":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1669
    .local v2, "ccl":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v3

    .local v3, "cl":Ljava/lang/Class;
    if-eqz v3, :cond_1

    .line 1670
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 1671
    .local v2, "ccl":Ljava/lang/Class;
    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 1674
    .end local v0    # "array":Ljava/lang/Object;
    .end local v2    # "ccl":Ljava/lang/Class;
    :cond_1
    iget-object v10, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_3

    sget-object v9, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v10, v9}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v1

    .line 1675
    .local v1, "arrayHandle":I
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v8

    .line 1676
    .local v8, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v8, :cond_2

    .line 1677
    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v9, v1, v8}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1680
    :cond_2
    if-nez v2, :cond_4

    .line 1681
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_5

    .line 1682
    invoke-direct {p0, v12}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    .line 1681
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v1    # "arrayHandle":I
    .end local v5    # "i":I
    .end local v8    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_3
    move-object v9, v0

    .line 1674
    goto :goto_0

    .line 1684
    .restart local v1    # "arrayHandle":I
    .restart local v8    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1685
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_6

    .line 1686
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [I

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInts([III)V

    .line 1712
    :cond_5
    :goto_2
    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v9, v1}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1713
    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1714
    return-object v0

    .line 1687
    :cond_6
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_7

    .line 1688
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [B

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v12, v6, v11}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    goto :goto_2

    .line 1689
    :cond_7
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_8

    .line 1690
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [J

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLongs([JII)V

    goto :goto_2

    .line 1691
    :cond_8
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_9

    .line 1692
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [F

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFloats([FII)V

    goto :goto_2

    .line 1693
    :cond_9
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_a

    .line 1694
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [D

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readDoubles([DII)V

    goto :goto_2

    .line 1695
    :cond_a
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_b

    .line 1696
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [S

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShorts([SII)V

    goto :goto_2

    .line 1697
    :cond_b
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_c

    .line 1698
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [C

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readChars([CII)V

    goto :goto_2

    .line 1699
    :cond_c
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_d

    .line 1700
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [Z

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBooleans([ZII)V

    goto :goto_2

    .line 1702
    :cond_d
    new-instance v9, Ljava/lang/InternalError;

    invoke-direct {v9}, Ljava/lang/InternalError;-><init>()V

    throw v9

    :cond_e
    move-object v7, v0

    .line 1705
    check-cast v7, [Ljava/lang/Object;

    .line 1706
    .local v7, "oa":[Ljava/lang/Object;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v6, :cond_5

    .line 1707
    invoke-direct {p0, v12}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v5

    .line 1708
    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v10, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v9, v1, v10}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 1706
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method private readClass(Z)Ljava/lang/Class;
    .locals 5
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1481
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v3

    const/16 v4, 0x76

    if-eq v3, v4, :cond_0

    .line 1482
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 1484
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1485
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1486
    .local v0, "cl":Ljava/lang/Class;
    iget-object v4, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_2

    sget-object v3, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1488
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v2

    .line 1489
    .local v2, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v2, :cond_1

    .line 1490
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4, v2}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1493
    :cond_1
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1494
    return-object v0

    .end local v2    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_2
    move-object v3, v0

    .line 1486
    goto :goto_0
.end method

.method private readClassDesc(Z)Ljava/io/ObjectStreamClass;
    .locals 6
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1506
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v0

    .line 1507
    .local v0, "tc":B
    sparse-switch v0, :sswitch_data_0

    .line 1521
    new-instance v1, Ljava/io/StreamCorruptedException;

    .line 1522
    const-string/jumbo v2, "invalid type code: %02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1521
    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1509
    :sswitch_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectStreamClass;

    return-object v1

    .line 1512
    :sswitch_1
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectStreamClass;

    return-object v1

    .line 1515
    :sswitch_2
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readProxyDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    return-object v1

    .line 1518
    :sswitch_3
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNonProxyDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    return-object v1

    .line 1507
    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_0
        0x71 -> :sswitch_1
        0x72 -> :sswitch_3
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private readEnum(Z)Ljava/lang/Enum;
    .locals 11
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 1722
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v8

    const/16 v9, 0x7e

    if-eq v8, v9, :cond_0

    .line 1723
    new-instance v7, Ljava/lang/InternalError;

    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    throw v7

    .line 1726
    :cond_0
    invoke-direct {p0, v10}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1727
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->isEnum()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1728
    new-instance v7, Ljava/io/InvalidClassException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "non-enum class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1731
    :cond_1
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_2

    sget-object v7, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v8, v7}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v3

    .line 1732
    .local v3, "enumHandle":I
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v6

    .line 1733
    .local v6, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v6, :cond_3

    .line 1734
    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v7, v3, v6}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1737
    :cond_3
    invoke-direct {p0, v10}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;

    move-result-object v5

    .line 1738
    .local v5, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1739
    .local v2, "en":Ljava/lang/Enum;
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1740
    .local v0, "cl":Ljava/lang/Class;
    if-eqz v0, :cond_4

    .line 1742
    :try_start_0
    invoke-static {v0, v5}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1748
    .local v2, "en":Ljava/lang/Enum;
    if-nez p1, :cond_4

    .line 1749
    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v7, v3, v2}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    .line 1753
    .end local v2    # "en":Ljava/lang/Enum;
    :cond_4
    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v7, v3}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1754
    iput v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1755
    return-object v2

    .line 1743
    .local v2, "en":Ljava/lang/Enum;
    :catch_0
    move-exception v4

    .line 1744
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/io/InvalidObjectException;

    .line 1745
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "enum constant "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not exist in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1744
    invoke-direct {v7, v8}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/io/IOException;

    throw v7
.end method

.method private readExternalData(Ljava/io/Externalizable;Ljava/io/ObjectStreamClass;)V
    .locals 5
    .param p1, "obj"    # Ljava/io/Externalizable;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1829
    iget-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1830
    .local v2, "oldContext":Ljava/io/SerialCallbackContext;
    iput-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1832
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->hasBlockExternalData()Z

    move-result v0

    .line 1833
    .local v0, "blocked":Z
    if-eqz v0, :cond_0

    .line 1834
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1836
    :cond_0
    if-eqz p1, :cond_1

    .line 1838
    :try_start_1
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1850
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1851
    :try_start_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1854
    :cond_2
    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1827
    return-void

    .line 1839
    :catch_0
    move-exception v1

    .line 1847
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_3
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4, v1}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1853
    .end local v0    # "blocked":Z
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v3

    .line 1854
    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1853
    throw v3
.end method

.method private readFatalException()Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2009
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_0

    .line 2010
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 2012
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 2013
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 2015
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 2017
    return-object v0
.end method

.method private readHandle(Z)Ljava/lang/Object;
    .locals 7
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x7e0000

    const/4 v5, 0x0

    .line 1450
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    const/16 v2, 0x71

    if-eq v1, v2, :cond_0

    .line 1451
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 1453
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v1

    sub-int/2addr v1, v6

    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1454
    iget v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    if-ltz v1, :cond_1

    iget v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$HandleTable;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 1455
    :cond_1
    new-instance v1, Ljava/io/StreamCorruptedException;

    .line 1456
    const-string/jumbo v2, "invalid handle value: %08X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1455
    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1459
    :cond_2
    if-eqz p1, :cond_3

    .line 1461
    new-instance v1, Ljava/io/InvalidObjectException;

    .line 1462
    const-string/jumbo v2, "cannot read back reference as unshared"

    .line 1461
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1465
    :cond_3
    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$HandleTable;->lookupObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 1466
    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    .line 1468
    new-instance v1, Ljava/io/InvalidObjectException;

    .line 1469
    const-string/jumbo v2, "cannot read back reference to unshared object"

    .line 1468
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1471
    :cond_4
    return-object v0
.end method

.method private readNonProxyDesc(Z)Ljava/io/ObjectStreamClass;
    .locals 9
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1592
    iget-object v7, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v7}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v7

    const/16 v8, 0x72

    if-eq v7, v8, :cond_0

    .line 1593
    new-instance v7, Ljava/lang/InternalError;

    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    throw v7

    .line 1596
    :cond_0
    new-instance v2, Ljava/io/ObjectStreamClass;

    invoke-direct {v2}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 1597
    .local v2, "desc":Ljava/io/ObjectStreamClass;
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_2

    sget-object v7, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v8, v7}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v3

    .line 1598
    .local v3, "descHandle":I
    const/4 v7, -0x1

    iput v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1600
    const/4 v5, 0x0

    .line 1602
    .local v5, "readDesc":Ljava/io/ObjectStreamClass;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1608
    .local v5, "readDesc":Ljava/io/ObjectStreamClass;
    const/4 v1, 0x0

    .line 1609
    .local v1, "cl":Ljava/lang/Class;
    const/4 v6, 0x0

    .line 1610
    .local v6, "resolveEx":Ljava/lang/ClassNotFoundException;
    iget-object v7, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1611
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->isCustomSubclass()Z

    move-result v0

    .line 1613
    .local v0, "checksRequired":Z
    :try_start_1
    invoke-virtual {p0, v5}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "cl":Ljava/lang/Class;
    if-nez v1, :cond_3

    .line 1614
    new-instance v6, Ljava/lang/ClassNotFoundException;

    .end local v6    # "resolveEx":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "null class"

    invoke-direct {v6, v7}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1621
    .end local v1    # "cl":Ljava/lang/Class;
    :cond_1
    :goto_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    .line 1623
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v7

    invoke-virtual {v2, v5, v1, v6, v7}, Ljava/io/ObjectStreamClass;->initNonProxy(Ljava/io/ObjectStreamClass;Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    .line 1625
    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v7, v3}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1626
    iput v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1627
    return-object v2

    .end local v0    # "checksRequired":Z
    .end local v3    # "descHandle":I
    .end local v5    # "readDesc":Ljava/io/ObjectStreamClass;
    :cond_2
    move-object v7, v2

    .line 1597
    goto :goto_0

    .line 1603
    .restart local v3    # "descHandle":I
    .local v5, "readDesc":Ljava/io/ObjectStreamClass;
    :catch_0
    move-exception v4

    .line 1604
    .local v4, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/io/InvalidClassException;

    .line 1605
    const-string/jumbo v8, "failed to read class descriptor"

    .line 1604
    invoke-direct {v7, v8}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/io/IOException;

    throw v7

    .line 1615
    .end local v4    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "checksRequired":Z
    .restart local v1    # "cl":Ljava/lang/Class;
    .local v5, "readDesc":Ljava/io/ObjectStreamClass;
    .restart local v6    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_3
    if-eqz v0, :cond_1

    .line 1616
    :try_start_2
    invoke-static {v1}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1618
    .end local v1    # "cl":Ljava/lang/Class;
    .end local v6    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 1619
    .restart local v4    # "ex":Ljava/lang/ClassNotFoundException;
    move-object v6, v4

    .local v6, "resolveEx":Ljava/lang/ClassNotFoundException;
    goto :goto_1
.end method

.method private readNull()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1438
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x70

    if-eq v0, v1, :cond_0

    .line 1439
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 1441
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1442
    const/4 v0, 0x0

    return-object v0
.end method

.method private readObject0(Z)Ljava/lang/Object;
    .locals 9
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1301
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->getBlockDataMode()Z

    move-result v1

    .line 1302
    .local v1, "oldMode":Z
    if-eqz v1, :cond_2

    .line 1303
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->currentBlockRemaining()I

    move-result v2

    .line 1304
    .local v2, "remain":I
    if-lez v2, :cond_0

    .line 1305
    new-instance v4, Ljava/io/OptionalDataException;

    invoke-direct {v4, v2}, Ljava/io/OptionalDataException;-><init>(I)V

    throw v4

    .line 1306
    :cond_0
    iget-boolean v4, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    if-eqz v4, :cond_1

    .line 1313
    new-instance v4, Ljava/io/OptionalDataException;

    invoke-direct {v4, v5}, Ljava/io/OptionalDataException;-><init>(Z)V

    throw v4

    .line 1315
    :cond_1
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1319
    .end local v2    # "remain":I
    :cond_2
    :goto_0
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v3

    .local v3, "tc":B
    const/16 v4, 0x79

    if-ne v3, v4, :cond_3

    .line 1320
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    .line 1321
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->handleReset()V

    goto :goto_0

    .line 1324
    :cond_3
    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1326
    packed-switch v3, :pswitch_data_0

    .line 1378
    :pswitch_0
    :try_start_0
    new-instance v4, Ljava/io/StreamCorruptedException;

    .line 1379
    const-string/jumbo v5, "invalid type code: %02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1378
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1381
    :catchall_0
    move-exception v4

    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1381
    throw v4

    .line 1328
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1328
    return-object v4

    .line 1331
    :pswitch_2
    :try_start_2
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1331
    return-object v4

    .line 1334
    :pswitch_3
    :try_start_3
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readClass(Z)Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1334
    return-object v4

    .line 1338
    :pswitch_4
    :try_start_4
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1338
    return-object v4

    .line 1342
    :pswitch_5
    :try_start_5
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1342
    return-object v4

    .line 1345
    :pswitch_6
    :try_start_6
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readArray(Z)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v4

    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1345
    return-object v4

    .line 1348
    :pswitch_7
    :try_start_7
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readEnum(Z)Ljava/lang/Enum;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1348
    return-object v4

    .line 1351
    :pswitch_8
    :try_start_8
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readOrdinaryObject(Z)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v4

    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1351
    return-object v4

    .line 1354
    :pswitch_9
    :try_start_9
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readFatalException()Ljava/io/IOException;

    move-result-object v0

    .line 1355
    .local v0, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/io/WriteAbortedException;

    const-string/jumbo v5, "writing aborted"

    invoke-direct {v4, v5, v0}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 1359
    .end local v0    # "ex":Ljava/io/IOException;
    :pswitch_a
    if-eqz v1, :cond_4

    .line 1360
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1361
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peek()I

    .line 1362
    new-instance v4, Ljava/io/OptionalDataException;

    .line 1363
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->currentBlockRemaining()I

    move-result v5

    .line 1362
    invoke-direct {v4, v5}, Ljava/io/OptionalDataException;-><init>(I)V

    throw v4

    .line 1365
    :cond_4
    new-instance v4, Ljava/io/StreamCorruptedException;

    .line 1366
    const-string/jumbo v5, "unexpected block data"

    .line 1365
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1370
    :pswitch_b
    if-eqz v1, :cond_5

    .line 1371
    new-instance v4, Ljava/io/OptionalDataException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/io/OptionalDataException;-><init>(Z)V

    throw v4

    .line 1373
    :cond_5
    new-instance v4, Ljava/io/StreamCorruptedException;

    .line 1374
    const-string/jumbo v5, "unexpected end of block data"

    .line 1373
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1326
    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private readOrdinaryObject(Z)Ljava/lang/Object;
    .locals 9
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1768
    iget-object v6, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v6

    const/16 v7, 0x73

    if-eq v6, v7, :cond_0

    .line 1769
    new-instance v6, Ljava/lang/InternalError;

    invoke-direct {v6}, Ljava/lang/InternalError;-><init>()V

    throw v6

    .line 1772
    :cond_0
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1773
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->checkDeserialize()V

    .line 1775
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1776
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    if-eq v0, v6, :cond_1

    const-class v6, Ljava/lang/Class;

    if-ne v0, v6, :cond_2

    .line 1778
    :cond_1
    new-instance v6, Ljava/io/InvalidClassException;

    const-string/jumbo v7, "invalid class descriptor"

    invoke-direct {v6, v7}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1777
    :cond_2
    const-class v6, Ljava/io/ObjectStreamClass;

    if-eq v0, v6, :cond_1

    .line 1783
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->isInstantiable()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1790
    :goto_0
    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_7

    sget-object v6, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v7, v6}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1791
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v5

    .line 1792
    .local v5, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v5, :cond_3

    .line 1793
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v6, v7, v5}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1796
    :cond_3
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v3

    .line 1797
    check-cast v6, Ljava/io/Externalizable;

    invoke-direct {p0, v6, v1}, Ljava/io/ObjectInputStream;->readExternalData(Ljava/io/Externalizable;Ljava/io/ObjectStreamClass;)V

    .line 1802
    :goto_2
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v6, v7}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1804
    if-eqz v3, :cond_5

    .line 1805
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v6, v7}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v6

    if-nez v6, :cond_5

    .line 1806
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->hasReadResolveMethod()Z

    move-result v6

    .line 1804
    if-eqz v6, :cond_5

    .line 1808
    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamClass;->invokeReadResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1809
    .local v4, "rep":Ljava/lang/Object;
    if-eqz p1, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1810
    invoke-static {v4}, Ljava/io/ObjectInputStream;->cloneArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1812
    :cond_4
    if-eq v4, v3, :cond_5

    .line 1813
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    move-object v3, v4

    .local v3, "obj":Ljava/lang/Object;
    invoke-virtual {v6, v7, v4}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    .line 1817
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "rep":Ljava/lang/Object;
    :cond_5
    return-object v3

    .line 1783
    .end local v5    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "obj":Ljava/lang/Object;
    goto :goto_0

    .line 1784
    .end local v3    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1785
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/io/InvalidClassException;

    .line 1786
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1787
    const-string/jumbo v8, "unable to create instance"

    .line 1785
    invoke-direct {v6, v7, v8}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/io/IOException;

    throw v6

    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_7
    move-object v6, v3

    .line 1790
    goto :goto_1

    .line 1799
    .restart local v5    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_8
    invoke-direct {p0, v3, v1}, Ljava/io/ObjectInputStream;->readSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_2
.end method

.method private readProxyDesc(Z)Ljava/io/ObjectStreamClass;
    .locals 10
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1541
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v8

    const/16 v9, 0x7d

    if-eq v8, v9, :cond_0

    .line 1542
    new-instance v8, Ljava/lang/InternalError;

    invoke-direct {v8}, Ljava/lang/InternalError;-><init>()V

    throw v8

    .line 1545
    :cond_0
    new-instance v1, Ljava/io/ObjectStreamClass;

    invoke-direct {v1}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 1546
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_1

    sget-object v8, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v9, v8}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v2

    .line 1547
    .local v2, "descHandle":I
    const/4 v8, -0x1

    iput v8, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1549
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v6

    .line 1550
    .local v6, "numIfaces":I
    new-array v5, v6, [Ljava/lang/String;

    .line 1551
    .local v5, "ifaces":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 1552
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v4

    .line 1551
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "descHandle":I
    .end local v4    # "i":I
    .end local v5    # "ifaces":[Ljava/lang/String;
    .end local v6    # "numIfaces":I
    :cond_1
    move-object v8, v1

    .line 1546
    goto :goto_0

    .line 1555
    .restart local v2    # "descHandle":I
    .restart local v4    # "i":I
    .restart local v5    # "ifaces":[Ljava/lang/String;
    .restart local v6    # "numIfaces":I
    :cond_2
    const/4 v0, 0x0

    .line 1556
    .local v0, "cl":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 1557
    .local v7, "resolveEx":Ljava/lang/ClassNotFoundException;
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1559
    :try_start_0
    invoke-virtual {p0, v5}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "cl":Ljava/lang/Class;
    if-nez v0, :cond_3

    .line 1560
    new-instance v7, Ljava/lang/ClassNotFoundException;

    .end local v7    # "resolveEx":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v8, "null class"

    invoke-direct {v7, v8}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1574
    .end local v0    # "cl":Ljava/lang/Class;
    :goto_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    .line 1576
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v8

    invoke-virtual {v1, v0, v7, v8}, Ljava/io/ObjectStreamClass;->initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    .line 1578
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v8, v2}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1579
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1580
    return-object v1

    .line 1561
    .restart local v0    # "cl":Ljava/lang/Class;
    .restart local v7    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1562
    new-instance v8, Ljava/io/InvalidClassException;

    const-string/jumbo v9, "Not a proxy"

    invoke-direct {v8, v9}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1571
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v7    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v3

    .line 1572
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    move-object v7, v3

    .local v7, "resolveEx":Ljava/lang/ClassNotFoundException;
    goto :goto_2

    .line 1568
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;
    .local v7, "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_4
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 1569
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v9

    .line 1567
    invoke-static {v8, v9}, Lsun/reflect/misc/ReflectUtil;->checkProxyPackageAccess(Ljava/lang/ClassLoader;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private readSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
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

    .line 1879
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    move-result-object v4

    .line 1880
    .local v4, "slots":[Ljava/io/ObjectStreamClass$ClassDataSlot;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 1881
    aget-object v5, v4, v1

    iget-object v3, v5, Ljava/io/ObjectStreamClass$ClassDataSlot;->desc:Ljava/io/ObjectStreamClass;

    .line 1883
    .local v3, "slotDesc":Ljava/io/ObjectStreamClass;
    aget-object v5, v4, v1

    iget-boolean v5, v5, Ljava/io/ObjectStreamClass$ClassDataSlot;->hasData:Z

    if-eqz v5, :cond_3

    .line 1884
    if-eqz p1, :cond_1

    .line 1885
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasReadObjectMethod()Z

    move-result v5

    .line 1884
    if-eqz v5, :cond_1

    .line 1886
    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1888
    iget-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1891
    .local v2, "oldContext":Ljava/io/SerialCallbackContext;
    :try_start_0
    new-instance v5, Ljava/io/SerialCallbackContext;

    invoke-direct {v5, p1, v3}, Ljava/io/SerialCallbackContext;-><init>(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    iput-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1893
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1894
    invoke-virtual {v3, p1, p0}, Ljava/io/ObjectStreamClass;->invokeReadObject(Ljava/lang/Object;Ljava/io/ObjectInputStream;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1905
    iget-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 1906
    :goto_1
    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1914
    iput-boolean v7, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 1918
    .end local v2    # "oldContext":Ljava/io/SerialCallbackContext;
    :goto_2
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1919
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    .line 1880
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1895
    .restart local v2    # "oldContext":Ljava/io/SerialCallbackContext;
    :catch_0
    move-exception v0

    .line 1903
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_1
    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v5, v6, v0}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1905
    iget-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    goto :goto_1

    .line 1904
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v5

    .line 1905
    iget-object v6, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v6}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 1906
    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1904
    throw v5

    .line 1916
    .end local v2    # "oldContext":Ljava/io/SerialCallbackContext;
    :cond_1
    invoke-direct {p0, p1, v3}, Ljava/io/ObjectInputStream;->defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_2

    .line 1921
    :cond_2
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v7}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    goto :goto_3

    .line 1924
    :cond_3
    if-eqz p1, :cond_0

    .line 1925
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasReadObjectNoDataMethod()Z

    move-result v5

    .line 1924
    if-eqz v5, :cond_0

    .line 1926
    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1928
    invoke-virtual {v3, p1}, Ljava/io/ObjectStreamClass;->invokeReadObjectNoData(Ljava/lang/Object;)V

    goto :goto_3

    .line 1877
    .end local v3    # "slotDesc":Ljava/io/ObjectStreamClass;
    :cond_4
    return-void
.end method

.method private readString(Z)Ljava/lang/String;
    .locals 7
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1636
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    .line 1637
    .local v1, "tc":B
    sparse-switch v1, :sswitch_data_0

    .line 1647
    new-instance v2, Ljava/io/StreamCorruptedException;

    .line 1648
    const-string/jumbo v3, "invalid type code: %02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1647
    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1639
    :sswitch_0
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 1650
    .local v0, "str":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_0

    sget-object v2, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1651
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1652
    return-object v0

    .line 1643
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_1
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLongUTF()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 1650
    goto :goto_1

    .line 1637
    nop

    :sswitch_data_0
    .sparse-switch
        0x74 -> :sswitch_0
        0x7c -> :sswitch_1
    .end sparse-switch
.end method

.method private skipCustomData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1939
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1941
    .local v0, "oldHandle":I
    :goto_0
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->getBlockDataMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1942
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->skipBlockData()V

    .line 1943
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1945
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1957
    :pswitch_0
    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    goto :goto_0

    .line 1948
    :pswitch_1
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    goto :goto_0

    .line 1952
    :pswitch_2
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    .line 1953
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1954
    return-void

    .line 1945
    nop

    :pswitch_data_0
    .packed-switch 0x77
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private verifySubclass()V
    .locals 6

    .prologue
    .line 1236
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1237
    .local v0, "cl":Ljava/lang/Class;
    const-class v4, Ljava/io/ObjectInputStream;

    if-ne v0, v4, :cond_0

    .line 1238
    return-void

    .line 1240
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 1241
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-nez v3, :cond_1

    .line 1242
    return-void

    .line 1244
    :cond_1
    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v5, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v4, v5}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 1245
    new-instance v1, Ljava/io/ObjectStreamClass$WeakClassKey;

    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v0, v4}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    .line 1246
    .local v1, "key":Ljava/io/ObjectStreamClass$WeakClassKey;
    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1247
    .local v2, "result":Ljava/lang/Boolean;
    if-nez v2, :cond_2

    .line 1248
    invoke-static {v0}, Ljava/io/ObjectInputStream;->auditSubclass(Ljava/lang/Class;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1249
    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1252
    return-void

    .line 1254
    :cond_3
    sget-object v4, Ljava/io/ObjectInputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1235
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 877
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->closed:Z

    .line 892
    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v0, :cond_0

    .line 893
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 895
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->close()V

    .line 886
    return-void
.end method

.method public defaultReadObject()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 496
    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    if-nez v3, :cond_0

    .line 497
    new-instance v3, Ljava/io/NotActiveException;

    const-string/jumbo v4, "not in call to readObject"

    invoke-direct {v3, v4}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 499
    :cond_0
    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v3}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v1

    .line 500
    .local v1, "curObj":Ljava/lang/Object;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v3}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 501
    .local v0, "curDesc":Ljava/io/ObjectStreamClass;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 502
    invoke-direct {p0, v1, v0}, Ljava/io/ObjectInputStream;->defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 503
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v3, v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 504
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    move-result v3

    if-nez v3, :cond_1

    .line 510
    iput-boolean v5, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 512
    :cond_1
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v2

    .line 513
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    if-eqz v2, :cond_2

    .line 514
    throw v2

    .line 494
    :cond_2
    return-void
.end method

.method protected enableResolveObject(Z)Z
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 776
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-ne p1, v1, :cond_0

    .line 777
    return p1

    .line 779
    :cond_0
    if-eqz p1, :cond_1

    .line 780
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 781
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 782
    sget-object v1, Ljava/io/ObjectInputStream;->SUBSTITUTION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 785
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    iput-boolean p1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 786
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 842
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
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

    .line 859
    if-nez p1, :cond_0

    .line 860
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 862
    :cond_0
    add-int v0, p2, p3

    .line 863
    .local v0, "endoff":I
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 864
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 863
    :cond_2
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    .line 866
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read([BIIZ)I

    move-result v1

    return v1
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 917
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 939
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 830
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 831
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0, p0}, Ljava/io/ObjectStreamClass;->readNonProxy(Ljava/io/ObjectInputStream;)V

    .line 832
    return-object v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1005
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFields()Ljava/io/ObjectInputStream$GetField;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 534
    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    if-nez v3, :cond_0

    .line 535
    new-instance v3, Ljava/io/NotActiveException;

    const-string/jumbo v4, "not in call to readObject"

    invoke-direct {v3, v4}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 537
    :cond_0
    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v3}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v1

    .line 538
    .local v1, "curObj":Ljava/lang/Object;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v3}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 539
    .local v0, "curDesc":Ljava/io/ObjectStreamClass;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 540
    new-instance v2, Ljava/io/ObjectInputStream$GetFieldImpl;

    invoke-direct {v2, p0, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;-><init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectStreamClass;)V

    .line 541
    .local v2, "getField":Ljava/io/ObjectInputStream$GetFieldImpl;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream$GetFieldImpl;->readFields()V

    .line 542
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v3, v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 543
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    move-result v3

    if-nez v3, :cond_1

    .line 549
    iput-boolean v5, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 552
    :cond_1
    return-object v2
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 994
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 3
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1016
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 1015
    return-void
.end method

.method public readFully([BII)V
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

    .line 1029
    add-int v0, p2, p3

    .line 1030
    .local v0, "endoff":I
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 1031
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1030
    :cond_1
    array-length v1, p1

    if-gt v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 1033
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 1028
    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 972
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1058
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 983
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readObject()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 366
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    if-eqz v3, :cond_0

    .line 367
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObjectOverride()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 371
    :cond_0
    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 373
    .local v2, "outerHandle":I
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v1

    .line 374
    .local v1, "obj":Ljava/lang/Object;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v2, v4}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 375
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v0

    .line 376
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    if-eqz v0, :cond_2

    .line 377
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v1    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    .line 384
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 385
    iget-boolean v4, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v4, :cond_1

    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v4, :cond_1

    .line 386
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 383
    :cond_1
    throw v3

    .line 379
    .restart local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_2
    :try_start_1
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_3

    .line 380
    iget-object v3, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$ValidationList;->doCallbacks()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    :cond_3
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 385
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v3, :cond_4

    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_4

    .line 386
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 382
    :cond_4
    return-object v1
.end method

.method protected readObjectOverride()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 411
    const/4 v0, 0x0

    return-object v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 950
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method protected readStreamHeader()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 802
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    move-result v0

    .line 803
    .local v0, "s0":S
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    move-result v1

    .line 804
    .local v1, "s1":S
    const/16 v2, -0x5313

    if-ne v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 805
    :cond_0
    new-instance v2, Ljava/io/StreamCorruptedException;

    .line 806
    const-string/jumbo v3, "invalid stream header: %04X%04X"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 805
    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 800
    :cond_1
    return-void
.end method

.method readTypeString()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1411
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1413
    .local v0, "oldHandle":I
    :try_start_0
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v1

    .line 1414
    .local v1, "tc":B
    sparse-switch v1, :sswitch_data_0

    .line 1426
    new-instance v2, Ljava/io/StreamCorruptedException;

    .line 1427
    const-string/jumbo v3, "invalid type code: %02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1426
    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1429
    .end local v1    # "tc":B
    :catchall_0
    move-exception v2

    .line 1430
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1429
    throw v2

    .line 1416
    .restart local v1    # "tc":B
    :sswitch_0
    :try_start_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1430
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1416
    return-object v2

    .line 1419
    :sswitch_1
    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1430
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1419
    return-object v2

    .line 1423
    :sswitch_2
    const/4 v2, 0x0

    :try_start_3
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 1430
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1423
    return-object v2

    .line 1414
    nop

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_0
        0x71 -> :sswitch_1
        0x74 -> :sswitch_2
        0x7c -> :sswitch_2
    .end sparse-switch
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1073
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnshared()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 461
    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 463
    .local v2, "outerHandle":I
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v1

    .line 464
    .local v1, "obj":Ljava/lang/Object;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v2, v4}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 465
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v0

    .line 466
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    if-eqz v0, :cond_1

    .line 467
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v1    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    .line 474
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 475
    iget-boolean v4, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v4, :cond_0

    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v4, :cond_0

    .line 476
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 473
    :cond_0
    throw v3

    .line 469
    .restart local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_1
    :try_start_1
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_2

    .line 470
    iget-object v3, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$ValidationList;->doCallbacks()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    :cond_2
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 475
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v3, :cond_3

    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_3

    .line 476
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 472
    :cond_3
    return-object v1
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 928
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 961
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public registerValidation(Ljava/io/ObjectInputValidation;I)V
    .locals 2
    .param p1, "obj"    # Ljava/io/ObjectInputValidation;
    .param p2, "prio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 574
    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Ljava/io/NotActiveException;

    const-string/jumbo v1, "stream inactive"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectInputStream$ValidationList;->register(Ljava/io/ObjectInputValidation;I)V

    .line 572
    return-void
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 5
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/io/ObjectInputStream;->latestUserDefinedLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    sget-object v3, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 629
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 630
    return-object v0

    .line 632
    :cond_0
    throw v1
.end method

.method protected resolveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    return-object p1
.end method

.method protected resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
    .param p1, "interfaces"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 691
    invoke-static {}, Ljava/io/ObjectInputStream;->latestUserDefinedLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 692
    .local v5, "latestLoader":Ljava/lang/ClassLoader;
    const/4 v6, 0x0

    .line 693
    .local v6, "nonPublicLoader":Ljava/lang/ClassLoader;
    const/4 v3, 0x0

    .line 696
    .local v3, "hasNonPublicInterface":Z
    array-length v7, p1

    new-array v1, v7, [Ljava/lang/Class;

    .line 697
    .local v1, "classObjs":[Ljava/lang/Class;
    const/4 v4, 0x0

    .end local v6    # "nonPublicLoader":Ljava/lang/ClassLoader;
    .local v4, "i":I
    :goto_0
    array-length v7, p1

    if-ge v4, v7, :cond_2

    .line 698
    aget-object v7, p1, v4

    invoke-static {v7, v8, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 699
    .local v0, "cl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_1

    .line 700
    if-eqz v3, :cond_0

    .line 701
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    if-eq v6, v7, :cond_1

    .line 702
    new-instance v7, Ljava/lang/IllegalAccessError;

    .line 703
    const-string/jumbo v8, "conflicting non-public interface class loaders"

    .line 702
    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 706
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 707
    .local v6, "nonPublicLoader":Ljava/lang/ClassLoader;
    const/4 v3, 0x1

    .line 710
    .end local v6    # "nonPublicLoader":Ljava/lang/ClassLoader;
    :cond_1
    aput-object v0, v1, v4

    .line 697
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 714
    .end local v0    # "cl":Ljava/lang/Class;
    :cond_2
    if-eqz v3, :cond_3

    .line 713
    :goto_1
    :try_start_0
    invoke-static {v6, v1}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :cond_3
    move-object v6, v5

    .line 714
    goto :goto_1

    .line 716
    :catch_0
    move-exception v2

    .line 717
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/ClassNotFoundException;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public skipBytes(I)I
    .locals 1
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1044
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->skipBytes(I)I

    move-result v0

    return v0
.end method
