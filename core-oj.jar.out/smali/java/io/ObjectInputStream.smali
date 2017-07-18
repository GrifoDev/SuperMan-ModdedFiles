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

    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1([BI[DII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream;->bytesToDoubles([BI[DII)V

    return-void
.end method

.method static synthetic -wrap2([BI[FII)V
    .locals 0

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

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "void"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/io/ObjectInputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    iput-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    iput-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iput-object v2, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->verifySubclass()V

    new-instance v0, Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/ObjectInputStream$BlockDataInputStream;-><init>(Ljava/io/ObjectInputStream;Ljava/io/InputStream;)V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    new-instance v0, Ljava/io/ObjectInputStream$HandleTable;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream$HandleTable;-><init>(I)V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    new-instance v0, Ljava/io/ObjectInputStream$ValidationList;

    invoke-direct {v0}, Ljava/io/ObjectInputStream$ValidationList;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readStreamHeader()V

    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

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

    new-instance v1, Ljava/io/ObjectInputStream$1;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_2

    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$HandleTable;->clear()V

    iget-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$ValidationList;->clear()V

    return-void
.end method

.method private static cloneArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p0, [Z

    if-eqz v0, :cond_1

    check-cast p0, [Z

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    check-cast p0, [B

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    instance-of v0, p0, [C

    if-eqz v0, :cond_3

    check-cast p0, [C

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    instance-of v0, p0, [D

    if-eqz v0, :cond_4

    check-cast p0, [D

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    instance-of v0, p0, [F

    if-eqz v0, :cond_5

    check-cast p0, [F

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5
    instance-of v0, p0, [I

    if-eqz v0, :cond_6

    check-cast p0, [I

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    instance-of v0, p0, [J

    if-eqz v0, :cond_7

    check-cast p0, [J

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    instance-of v0, p0, [S

    if-eqz v0, :cond_8

    check-cast p0, [S

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result v7

    iget-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    if-eqz v8, :cond_1

    iget-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    array-length v8, v8

    if-ge v8, v7, :cond_2

    :cond_1
    new-array v8, v7, [B

    iput-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    :cond_2
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    iget-object v9, p0, Ljava/io/ObjectInputStream;->primVals:[B

    invoke-virtual {v8, v9, v10, v7, v10}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    if-eqz p1, :cond_3

    iget-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    invoke-virtual {p2, p1, v8}, Ljava/io/ObjectStreamClass;->setPrimFieldValues(Ljava/lang/Object;[B)V

    :cond_3
    iget v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {p2, v10}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result v8

    new-array v6, v8, [Ljava/lang/Object;

    array-length v8, v2

    array-length v9, v6

    sub-int v4, v8, v9

    const/4 v3, 0x0

    :goto_0
    array-length v8, v6

    if-ge v3, v8, :cond_6

    add-int v8, v4, v3

    aget-object v1, v2, v8

    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v8

    invoke-direct {p0, v8}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v9, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v8, v5, v9}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    new-instance v8, Ljava/lang/ClassCastException;

    invoke-direct {v8}, Ljava/lang/ClassCastException;-><init>()V

    throw v8

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p2, p1, v6}, Ljava/io/ObjectStreamClass;->setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_7
    iput v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return-void
.end method

.method private handleReset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/StreamCorruptedException;

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

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    return-void
.end method

.method private isCustomSubclass()Z
    .locals 2

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/io/ObjectInputStream;

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

.method private static latestUserDefinedLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-static {}, Ldalvik/system/VMStack;->getClosestUserClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private readArray(Z)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    iget-object v9, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v9}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v9

    const/16 v10, 0x75

    if-eq v9, v10, :cond_0

    new-instance v9, Ljava/lang/InternalError;

    invoke-direct {v9}, Ljava/lang/InternalError;-><init>()V

    throw v9

    :cond_0
    invoke-direct {p0, v12}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v4

    iget-object v9, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v9}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v6

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    iget-object v10, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_3

    sget-object v9, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v10, v9}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v4}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v9, v1, v8}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    :cond_2
    if-nez v2, :cond_4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_5

    invoke-direct {p0, v12}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move-object v9, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_e

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_6

    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [I

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInts([III)V

    :cond_5
    :goto_2
    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v9, v1}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return-object v0

    :cond_6
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_7

    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [B

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v12, v6, v11}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    goto :goto_2

    :cond_7
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_8

    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [J

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLongs([JII)V

    goto :goto_2

    :cond_8
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_9

    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [F

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFloats([FII)V

    goto :goto_2

    :cond_9
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_a

    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [D

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readDoubles([DII)V

    goto :goto_2

    :cond_a
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_b

    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [S

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShorts([SII)V

    goto :goto_2

    :cond_b
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_c

    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [C

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readChars([CII)V

    goto :goto_2

    :cond_c
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_d

    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [Z

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBooleans([ZII)V

    goto :goto_2

    :cond_d
    new-instance v9, Ljava/lang/InternalError;

    invoke-direct {v9}, Ljava/lang/InternalError;-><init>()V

    throw v9

    :cond_e
    move-object v7, v0

    check-cast v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_5

    invoke-direct {p0, v12}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v5

    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v10, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v9, v1, v10}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method private readClass(Z)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v3

    const/16 v4, 0x76

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v4, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_2

    sget-object v3, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4, v2}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    :cond_1
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    return-object v0

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method

.method private readClassDesc(Z)Ljava/io/ObjectStreamClass;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string/jumbo v2, "invalid type code: %02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectStreamClass;

    return-object v1

    :sswitch_1
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectStreamClass;

    return-object v1

    :sswitch_2
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readProxyDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    return-object v1

    :sswitch_3
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNonProxyDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    return-object v1

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v8

    const/16 v9, 0x7e

    if-eq v8, v9, :cond_0

    new-instance v7, Ljava/lang/InternalError;

    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    throw v7

    :cond_0
    invoke-direct {p0, v10}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->isEnum()Z

    move-result v8

    if-nez v8, :cond_1

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

    :cond_1
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_2

    sget-object v7, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v8, v7}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v7, v3, v6}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    :cond_3
    invoke-direct {p0, v10}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {v0, v5}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez p1, :cond_4

    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v7, v3, v2}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    :cond_4
    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v7, v3}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    iput v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return-object v2

    :catch_0
    move-exception v4

    new-instance v7, Ljava/io/InvalidObjectException;

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

    invoke-direct {v7, v8}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/io/IOException;

    throw v7
.end method

.method private readExternalData(Ljava/io/Externalizable;Ljava/io/ObjectStreamClass;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    iput-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    :try_start_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->hasBlockExternalData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    :try_start_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4, v1}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    throw v3
.end method

.method private readFatalException()Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    return-object v0
.end method

.method private readHandle(Z)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v6, 0x7e0000

    const/4 v5, 0x0

    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    const/16 v2, 0x71

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v1

    sub-int/2addr v1, v6

    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    iget v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    if-ltz v1, :cond_1

    iget v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$HandleTable;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    :cond_1
    new-instance v1, Ljava/io/StreamCorruptedException;

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

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-eqz p1, :cond_3

    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "cannot read back reference as unshared"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$HandleTable;->lookupObject(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "cannot read back reference to unshared object"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-object v0
.end method

.method private readNonProxyDesc(Z)Ljava/io/ObjectStreamClass;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v7, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v7}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v7

    const/16 v8, 0x72

    if-eq v7, v8, :cond_0

    new-instance v7, Ljava/lang/InternalError;

    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    throw v7

    :cond_0
    new-instance v2, Ljava/io/ObjectStreamClass;

    invoke-direct {v2}, Ljava/io/ObjectStreamClass;-><init>()V

    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_2

    sget-object v7, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v8, v7}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v3

    const/4 v7, -0x1

    iput v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->isCustomSubclass()Z

    move-result v0

    :try_start_1
    invoke-virtual {p0, v5}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v6, Ljava/lang/ClassNotFoundException;

    const-string/jumbo v7, "null class"

    invoke-direct {v6, v7}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v7

    invoke-virtual {v2, v5, v1, v6, v7}, Ljava/io/ObjectStreamClass;->initNonProxy(Ljava/io/ObjectStreamClass;Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v7, v3}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    iput v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return-object v2

    :cond_2
    move-object v7, v2

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v7, Ljava/io/InvalidClassException;

    const-string/jumbo v8, "failed to read class descriptor"

    invoke-direct {v7, v8}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/io/IOException;

    throw v7

    :cond_3
    if-eqz v0, :cond_1

    :try_start_2
    invoke-static {v1}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v6, v4

    goto :goto_1
.end method

.method private readNull()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x70

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    const/4 v0, 0x0

    return-object v0
.end method

.method private readObject0(Z)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->getBlockDataMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->currentBlockRemaining()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v4, Ljava/io/OptionalDataException;

    invoke-direct {v4, v2}, Ljava/io/OptionalDataException;-><init>(I)V

    throw v4

    :cond_0
    iget-boolean v4, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/OptionalDataException;

    invoke-direct {v4, v5}, Ljava/io/OptionalDataException;-><init>(Z)V

    throw v4

    :cond_1
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    :cond_2
    :goto_0
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v3

    const/16 v4, 0x79

    if-ne v3, v4, :cond_3

    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->handleReset()V

    goto :goto_0

    :cond_3
    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/io/ObjectInputStream;->depth:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    :try_start_0
    new-instance v4, Ljava/io/StreamCorruptedException;

    const-string/jumbo v5, "invalid type code: %02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    throw v4

    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    return-object v4

    :pswitch_2
    :try_start_2
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    return-object v4

    :pswitch_3
    :try_start_3
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readClass(Z)Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    return-object v4

    :pswitch_4
    :try_start_4
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    return-object v4

    :pswitch_5
    :try_start_5
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    return-object v4

    :pswitch_6
    :try_start_6
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readArray(Z)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v4

    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    return-object v4

    :pswitch_7
    :try_start_7
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readEnum(Z)Ljava/lang/Enum;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    return-object v4

    :pswitch_8
    :try_start_8
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readOrdinaryObject(Z)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v4

    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    return-object v4

    :pswitch_9
    :try_start_9
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readFatalException()Ljava/io/IOException;

    move-result-object v0

    new-instance v4, Ljava/io/WriteAbortedException;

    const-string/jumbo v5, "writing aborted"

    invoke-direct {v4, v5, v0}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    :pswitch_a
    if-eqz v1, :cond_4

    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peek()I

    new-instance v4, Ljava/io/OptionalDataException;

    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->currentBlockRemaining()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/io/OptionalDataException;-><init>(I)V

    throw v4

    :cond_4
    new-instance v4, Ljava/io/StreamCorruptedException;

    const-string/jumbo v5, "unexpected block data"

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_b
    if-eqz v1, :cond_5

    new-instance v4, Ljava/io/OptionalDataException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/io/OptionalDataException;-><init>(Z)V

    throw v4

    :cond_5
    new-instance v4, Ljava/io/StreamCorruptedException;

    const-string/jumbo v5, "unexpected end of block data"

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v6, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v6

    const/16 v7, 0x73

    if-eq v6, v7, :cond_0

    new-instance v6, Ljava/lang/InternalError;

    invoke-direct {v6}, Ljava/lang/InternalError;-><init>()V

    throw v6

    :cond_0
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->checkDeserialize()V

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    const-class v6, Ljava/lang/String;

    if-eq v0, v6, :cond_1

    const-class v6, Ljava/lang/Class;

    if-ne v0, v6, :cond_2

    :cond_1
    new-instance v6, Ljava/io/InvalidClassException;

    const-string/jumbo v7, "invalid class descriptor"

    invoke-direct {v6, v7}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    const-class v6, Ljava/io/ObjectStreamClass;

    if-eq v0, v6, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->isInstantiable()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_7

    sget-object v6, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v7, v6}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v6, v7, v5}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    :cond_3
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v3

    check-cast v6, Ljava/io/Externalizable;

    invoke-direct {p0, v6, v1}, Ljava/io/ObjectInputStream;->readExternalData(Ljava/io/Externalizable;Ljava/io/ObjectStreamClass;)V

    :goto_2
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v6, v7}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    if-eqz v3, :cond_5

    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v6, v7}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->hasReadResolveMethod()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamClass;->invokeReadResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz p1, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v4}, Ljava/io/ObjectInputStream;->cloneArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_4
    if-eq v4, v3, :cond_5

    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    move-object v3, v4

    invoke-virtual {v6, v7, v4}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    :cond_5
    return-object v3

    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Ljava/io/InvalidClassException;

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "unable to create instance"

    invoke-direct {v6, v7, v8}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/io/IOException;

    throw v6

    :cond_7
    move-object v6, v3

    goto :goto_1

    :cond_8
    invoke-direct {p0, v3, v1}, Ljava/io/ObjectInputStream;->readSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_2
.end method

.method private readProxyDesc(Z)Ljava/io/ObjectStreamClass;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v8

    const/16 v9, 0x7d

    if-eq v8, v9, :cond_0

    new-instance v8, Ljava/lang/InternalError;

    invoke-direct {v8}, Ljava/lang/InternalError;-><init>()V

    throw v8

    :cond_0
    new-instance v1, Ljava/io/ObjectStreamClass;

    invoke-direct {v1}, Ljava/io/ObjectStreamClass;-><init>()V

    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_1

    sget-object v8, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v9, v8}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v2

    const/4 v8, -0x1

    iput v8, p0, Ljava/io/ObjectInputStream;->passHandle:I

    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_2

    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v8, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v7, Ljava/lang/ClassNotFoundException;

    const-string/jumbo v8, "null class"

    invoke-direct {v7, v8}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v8

    invoke-virtual {v1, v0, v7, v8}, Ljava/io/ObjectStreamClass;->initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v8, v2}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return-object v1

    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v8, Ljava/io/InvalidClassException;

    const-string/jumbo v9, "Not a proxy"

    invoke-direct {v8, v9}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v8

    :catch_0
    move-exception v3

    move-object v7, v3

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v9

    invoke-static {v8, v9}, Lsun/reflect/misc/ReflectUtil;->checkProxyPackageAccess(Ljava/lang/ClassLoader;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private readSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_4

    aget-object v5, v4, v1

    iget-object v3, v5, Ljava/io/ObjectStreamClass$ClassDataSlot;->desc:Ljava/io/ObjectStreamClass;

    aget-object v5, v4, v1

    iget-boolean v5, v5, Ljava/io/ObjectStreamClass$ClassDataSlot;->hasData:Z

    if-eqz v5, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasReadObjectMethod()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    :try_start_0
    new-instance v5, Ljava/io/SerialCallbackContext;

    invoke-direct {v5, p1, v3}, Ljava/io/SerialCallbackContext;-><init>(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    iput-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    invoke-virtual {v3, p1, p0}, Ljava/io/ObjectStreamClass;->invokeReadObject(Ljava/lang/Object;Ljava/io/ObjectInputStream;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    :goto_1
    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    iput-boolean v7, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    :goto_2
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v5, v6, v0}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    goto :goto_1

    :catchall_0
    move-exception v5

    iget-object v6, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v6}, Ljava/io/SerialCallbackContext;->setUsed()V

    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    throw v5

    :cond_1
    invoke-direct {p0, p1, v3}, Ljava/io/ObjectInputStream;->defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_2

    :cond_2
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v7}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_0

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasReadObjectNoDataMethod()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v3, p1}, Ljava/io/ObjectStreamClass;->invokeReadObjectNoData(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method private readString(Z)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v2, Ljava/io/StreamCorruptedException;

    const-string/jumbo v3, "invalid type code: %02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_0

    sget-object v2, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    return-object v0

    :sswitch_1
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLongUTF()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto :goto_1

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

    const/4 v3, 0x0

    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    :goto_0
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->getBlockDataMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->skipBlockData()V

    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return-void

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

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Ljava/io/ObjectInputStream;

    if-ne v0, v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v5, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v4, v5}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    new-instance v1, Ljava/io/ObjectStreamClass$WeakClassKey;

    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v0, v4}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/io/ObjectInputStream;->auditSubclass(Ljava/lang/Class;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    sget-object v4, Ljava/io/ObjectInputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->closed:Z

    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->close()V

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

    const/4 v5, 0x1

    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/NotActiveException;

    const-string/jumbo v4, "not in call to readObject"

    invoke-direct {v3, v4}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v3}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v3}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    invoke-direct {p0, v1, v0}, Ljava/io/ObjectInputStream;->defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v3, v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    move-result v3

    if-nez v3, :cond_1

    iput-boolean v5, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    :cond_1
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v2

    if-eqz v2, :cond_2

    throw v2

    :cond_2
    return-void
.end method

.method protected enableResolveObject(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-ne p1, v1, :cond_0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/io/ObjectInputStream;->SUBSTITUTION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_1
    iput-boolean p1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

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

    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
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

    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass;-><init>()V

    invoke-virtual {v0, p0}, Ljava/io/ObjectStreamClass;->readNonProxy(Ljava/io/ObjectInputStream;)V

    return-object v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    const/4 v5, 0x1

    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/NotActiveException;

    const-string/jumbo v4, "not in call to readObject"

    invoke-direct {v3, v4}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v3}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v3}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    new-instance v2, Ljava/io/ObjectInputStream$GetFieldImpl;

    invoke-direct {v2, p0, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;-><init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectStreamClass;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$GetFieldImpl;->readFields()V

    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v3, v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    move-result v3

    if-nez v3, :cond_1

    iput-boolean v5, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

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

    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    return-void
.end method

.method public readFully([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    add-int v0, p2, p3

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    array-length v1, p1

    if-gt v0, v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObjectOverride()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :cond_0
    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v2, v4}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v0

    if-eqz v0, :cond_2

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    iget-boolean v4, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v4, :cond_1

    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v4, :cond_1

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    :cond_1
    throw v3

    :cond_2
    :try_start_1
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_3

    iget-object v3, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$ValidationList;->doCallbacks()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v3, :cond_4

    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_4

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

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

    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    move-result v0

    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    move-result v1

    const/16 v2, -0x5313

    if-ne v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/io/StreamCorruptedException;

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

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2

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

    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    :try_start_0
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v2, Ljava/io/StreamCorruptedException;

    const-string/jumbo v3, "invalid type code: %02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    throw v2

    :sswitch_0
    :try_start_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return-object v2

    :sswitch_1
    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return-object v2

    :sswitch_2
    const/4 v2, 0x0

    :try_start_3
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return-object v2

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

    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v2, v4}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    iget-boolean v4, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v4, :cond_0

    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v4, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    :cond_0
    throw v3

    :cond_1
    :try_start_1
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_2

    iget-object v3, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$ValidationList;->doCallbacks()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v3, :cond_3

    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_3

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

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

    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public registerValidation(Ljava/io/ObjectInputValidation;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/NotActiveException;

    const-string/jumbo v1, "stream inactive"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectInputStream$ValidationList;->register(Ljava/io/ObjectInputValidation;I)V

    return-void
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 5
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

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {}, Ljava/io/ObjectInputStream;->latestUserDefinedLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v1

    sget-object v3, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    throw v1
.end method

.method protected resolveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p1
.end method

.method protected resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
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

    const/4 v8, 0x0

    invoke-static {}, Ljava/io/ObjectInputStream;->latestUserDefinedLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    array-length v7, p1

    new-array v1, v7, [Ljava/lang/Class;

    const/4 v4, 0x0

    :goto_0
    array-length v7, p1

    if-ge v4, v7, :cond_2

    aget-object v7, p1, v4

    invoke-static {v7, v8, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    if-eq v6, v7, :cond_1

    new-instance v7, Ljava/lang/IllegalAccessError;

    const-string/jumbo v8, "conflicting non-public interface class loaders"

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v3, 0x1

    :cond_1
    aput-object v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_1
    :try_start_0
    invoke-static {v6, v1}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :cond_3
    move-object v6, v5

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v7, Ljava/lang/ClassNotFoundException;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public skipBytes(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->skipBytes(I)I

    move-result v0

    return v0
.end method
