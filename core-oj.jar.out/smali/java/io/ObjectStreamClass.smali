.class public Ljava/io/ObjectStreamClass;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectStreamClass$Caches;,
        Ljava/io/ObjectStreamClass$ClassDataSlot;,
        Ljava/io/ObjectStreamClass$EntryFuture;,
        Ljava/io/ObjectStreamClass$ExceptionInfo;,
        Ljava/io/ObjectStreamClass$FieldReflector;,
        Ljava/io/ObjectStreamClass$FieldReflectorKey;,
        Ljava/io/ObjectStreamClass$MemberSignature;,
        Ljava/io/ObjectStreamClass$WeakClassKey;
    }
.end annotation


# static fields
.field static final MAX_SDK_TARGET_FOR_CLINIT_UIDGEN_WORKAROUND:I = 0x17

.field public static final NO_FIELDS:[Ljava/io/ObjectStreamField;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x54f190e511018478L


# instance fields
.field private cl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private cons:Ljava/lang/reflect/Constructor;

.field private volatile dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

.field private defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

.field private deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

.field private externalizable:Z

.field private fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

.field private fields:[Ljava/io/ObjectStreamField;

.field private hasBlockExternalData:Z

.field private hasWriteObjectData:Z

.field private isEnum:Z

.field private isProxy:Z

.field private localDesc:Ljava/io/ObjectStreamClass;

.field private name:Ljava/lang/String;

.field private numObjFields:I

.field private primDataSize:I

.field private readObjectMethod:Ljava/lang/reflect/Method;

.field private readObjectNoDataMethod:Ljava/lang/reflect/Method;

.field private readResolveMethod:Ljava/lang/reflect/Method;

.field private resolveEx:Ljava/lang/ClassNotFoundException;

.field private serializable:Z

.field private serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

.field private volatile suid:Ljava/lang/Long;

.field private superDesc:Ljava/io/ObjectStreamClass;

.field private writeObjectMethod:Ljava/lang/reflect/Method;

.field private writeReplaceMethod:Ljava/lang/reflect/Method;


# direct methods
.method static synthetic -get0(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic -get1(Ljava/io/ObjectStreamClass;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    return v0
.end method

.method static synthetic -get2(Ljava/io/ObjectStreamClass;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    return v0
.end method

.method static synthetic -get3(Ljava/io/ObjectStreamClass;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -set0(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 0

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    return-object p1
.end method

.method static synthetic -set1(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)Ljava/io/ObjectStreamClass$ExceptionInfo;
    .locals 0

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    return-object p1
.end method

.method static synthetic -set10(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic -set2(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)[Ljava/io/ObjectStreamField;
    .locals 0

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    return-object p1
.end method

.method static synthetic -set3(Ljava/io/ObjectStreamClass;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    return p1
.end method

.method static synthetic -set4(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic -set5(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic -set6(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic -set7(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)Ljava/io/ObjectStreamClass$ExceptionInfo;
    .locals 0

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    return-object p1
.end method

.method static synthetic -set8(Ljava/io/ObjectStreamClass;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic -set9(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .locals 1
    .param p0, "cl"    # Ljava/lang/Class;

    .prologue
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/Class;)Ljava/lang/Long;
    .locals 1
    .param p0, "cl"    # Ljava/lang/Class;

    .prologue
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDeclaredSUID(Ljava/lang/Class;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "cl"    # Ljava/lang/Class;

    .prologue
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "paramTypes"    # [Ljava/lang/Class;
    .param p1, "retType"    # Ljava/lang/Class;

    .prologue
    invoke-static {p0, p1}, Ljava/io/ObjectStreamClass;->getMethodSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .param p0, "cl"    # Ljava/lang/Class;

    .prologue
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getExternalizableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .param p0, "cl"    # Ljava/lang/Class;

    .prologue
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getSerializableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "cl"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "argTypes"    # [Ljava/lang/Class;
    .param p3, "returnType"    # Ljava/lang/Class;

    .prologue
    invoke-static {p0, p1, p2, p3}, Ljava/io/ObjectStreamClass;->getInheritableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "cl"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "argTypes"    # [Ljava/lang/Class;
    .param p3, "returnType"    # Ljava/lang/Class;

    .prologue
    invoke-static {p0, p1, p2, p3}, Ljava/io/ObjectStreamClass;->getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Ljava/lang/Class;)J
    .locals 2
    .param p0, "cl"    # Ljava/lang/Class;

    .prologue
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->computeDefaultSUID(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap9(Ljava/io/ObjectStreamClass;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->computeFieldOffsets()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 75
    sput-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 80
    sget-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 79
    sput-object v0, Ljava/io/ObjectStreamClass;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 72
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    .line 531
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    .line 445
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .line 446
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 447
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v4

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    .line 448
    const-class v4, Ljava/lang/Enum;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    .line 449
    const-class v4, Ljava/io/Serializable;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    .line 450
    const-class v4, Ljava/io/Externalizable;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    .line 452
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 453
    .local v2, "superCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    .line 454
    iput-object p0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    .line 456
    iget-boolean v3, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    if-eqz v3, :cond_3

    .line 457
    new-instance v3, Ljava/io/ObjectStreamClass$2;

    invoke-direct {v3, p0, p1}, Ljava/io/ObjectStreamClass$2;-><init>(Ljava/io/ObjectStreamClass;Ljava/lang/Class;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 506
    :goto_0
    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    invoke-static {v3, p0}, Ljava/io/ObjectStreamClass;->getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;

    move-result-object v3

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;
    :try_end_0
    .catch Ljava/io/InvalidClassException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-nez v3, :cond_1

    .line 513
    iget-boolean v3, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v3, :cond_4

    .line 514
    new-instance v3, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string/jumbo v5, "enum type"

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 519
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 520
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_2

    .line 521
    new-instance v3, Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 522
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string/jumbo v5, "unmatched serializable field(s) declared"

    .line 521
    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 519
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 501
    .end local v1    # "i":I
    :cond_3
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 502
    sget-object v3, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    goto :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 509
    .local v0, "ex":Ljava/io/InvalidClassException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 515
    .end local v0    # "ex":Ljava/io/InvalidClassException;
    :cond_4
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    if-nez v3, :cond_1

    .line 516
    new-instance v3, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string/jumbo v5, "no valid constructor"

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    goto :goto_1

    .line 444
    .restart local v1    # "i":I
    :cond_5
    return-void
.end method

.method private static classNamesEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "name1"    # Ljava/lang/String;
    .param p1, "name2"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x2e

    .line 1460
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1461
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1462
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static computeDefaultSUID(Ljava/lang/Class;)J
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 1665
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v23, Ljava/io/Serializable;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-static/range {p0 .. p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1667
    :cond_0
    const-wide/16 v24, 0x0

    return-wide v24

    .line 1671
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1672
    .local v2, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1674
    .local v7, "dout":Ljava/io/DataOutputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1676
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v4, v0, 0x611

    .line 1684
    .local v4, "classMods":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v20

    .line 1685
    .local v20, "methods":[Ljava/lang/reflect/Method;
    and-int/lit16 v0, v4, 0x200

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1686
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_3

    .line 1687
    or-int/lit16 v4, v4, 0x400

    .line 1690
    :cond_2
    :goto_0
    invoke-virtual {v7, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1692
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isArray()Z

    move-result v23

    if-nez v23, :cond_5

    .line 1698
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v17

    .line 1699
    .local v17, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1700
    .local v16, "ifaceNames":[Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_4

    .line 1701
    aget-object v23, v17, v15

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v16, v15

    .line 1700
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1688
    .end local v15    # "i":I
    .end local v16    # "ifaceNames":[Ljava/lang/String;
    .end local v17    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    and-int/lit16 v4, v4, -0x401

    goto :goto_0

    .line 1703
    .restart local v15    # "i":I
    .restart local v16    # "ifaceNames":[Ljava/lang/String;
    .restart local v17    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1704
    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_5

    .line 1705
    aget-object v23, v16, v15

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1704
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1709
    .end local v15    # "i":I
    .end local v16    # "ifaceNames":[Ljava/lang/String;
    .end local v17    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 1710
    .local v11, "fields":[Ljava/lang/reflect/Field;
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v10, v0, [Ljava/io/ObjectStreamClass$MemberSignature;

    .line 1711
    .local v10, "fieldSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_3
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_6

    .line 1712
    new-instance v23, Ljava/io/ObjectStreamClass$MemberSignature;

    aget-object v24, v11, v15

    invoke-direct/range {v23 .. v24}, Ljava/io/ObjectStreamClass$MemberSignature;-><init>(Ljava/lang/reflect/Field;)V

    aput-object v23, v10, v15

    .line 1711
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1714
    :cond_6
    new-instance v23, Ljava/io/ObjectStreamClass$3;

    invoke-direct/range {v23 .. v23}, Ljava/io/ObjectStreamClass$3;-><init>()V

    move-object/from16 v0, v23

    invoke-static {v10, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1719
    const/4 v15, 0x0

    :goto_4
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_9

    .line 1720
    aget-object v22, v10, v15

    .line 1721
    .local v22, "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xdf

    move/from16 v21, v0

    .line 1725
    .local v21, "mods":I
    and-int/lit8 v23, v21, 0x2

    if-eqz v23, :cond_7

    .line 1726
    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x88

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 1728
    :cond_7
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1729
    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1730
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1719
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1734
    .end local v21    # "mods":I
    .end local v22    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    :cond_9
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v23

    .line 1735
    const/16 v24, 0x17

    .line 1734
    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    const/4 v3, 0x1

    .line 1736
    .local v3, "checkSuperclass":Z
    :goto_5
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Ljava/io/ObjectStreamClass;->hasStaticInitializer(Ljava/lang/Class;Z)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 1737
    const-string/jumbo v23, "<clinit>"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1738
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1739
    const-string/jumbo v23, "()V"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1742
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 1743
    .local v5, "cons":[Ljava/lang/reflect/Constructor;
    array-length v0, v5

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v6, v0, [Ljava/io/ObjectStreamClass$MemberSignature;

    .line 1744
    .local v6, "consSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    const/4 v15, 0x0

    :goto_6
    array-length v0, v5

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_c

    .line 1745
    new-instance v23, Ljava/io/ObjectStreamClass$MemberSignature;

    aget-object v24, v5, v15

    invoke-direct/range {v23 .. v24}, Ljava/io/ObjectStreamClass$MemberSignature;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v23, v6, v15

    .line 1744
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 1734
    .end local v3    # "checkSuperclass":Z
    .end local v5    # "cons":[Ljava/lang/reflect/Constructor;
    .end local v6    # "consSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    .line 1747
    .restart local v3    # "checkSuperclass":Z
    .restart local v5    # "cons":[Ljava/lang/reflect/Constructor;
    .restart local v6    # "consSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    :cond_c
    new-instance v23, Ljava/io/ObjectStreamClass$4;

    invoke-direct/range {v23 .. v23}, Ljava/io/ObjectStreamClass$4;-><init>()V

    move-object/from16 v0, v23

    invoke-static {v6, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1752
    const/4 v15, 0x0

    :goto_7
    array-length v0, v6

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_e

    .line 1753
    aget-object v22, v6, v15

    .line 1754
    .restart local v22    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xd3f

    move/from16 v21, v0

    .line 1759
    .restart local v21    # "mods":I
    and-int/lit8 v23, v21, 0x2

    if-nez v23, :cond_d

    .line 1760
    const-string/jumbo v23, "<init>"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1761
    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1762
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x2f

    const/16 v25, 0x2e

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1752
    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 1766
    .end local v21    # "mods":I
    .end local v22    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    :cond_e
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/io/ObjectStreamClass$MemberSignature;

    move-object/from16 v19, v0

    .line 1767
    .local v19, "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    const/4 v15, 0x0

    :goto_8
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_f

    .line 1768
    new-instance v23, Ljava/io/ObjectStreamClass$MemberSignature;

    aget-object v24, v20, v15

    invoke-direct/range {v23 .. v24}, Ljava/io/ObjectStreamClass$MemberSignature;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v23, v19, v15

    .line 1767
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 1770
    :cond_f
    new-instance v23, Ljava/io/ObjectStreamClass$5;

    invoke-direct/range {v23 .. v23}, Ljava/io/ObjectStreamClass$5;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1779
    const/4 v15, 0x0

    :goto_9
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_11

    .line 1780
    aget-object v22, v19, v15

    .line 1781
    .restart local v22    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xd3f

    move/from16 v21, v0

    .line 1786
    .restart local v21    # "mods":I
    and-int/lit8 v23, v21, 0x2

    if-nez v23, :cond_10

    .line 1787
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1788
    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1789
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x2f

    const/16 v25, 0x2e

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1779
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 1793
    .end local v21    # "mods":I
    .end local v22    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    :cond_11
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 1795
    const-string/jumbo v23, "SHA"

    invoke-static/range {v23 .. v23}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v18

    .line 1796
    .local v18, "md":Ljava/security/MessageDigest;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v14

    .line 1797
    .local v14, "hashBytes":[B
    const-wide/16 v12, 0x0

    .line 1798
    .local v12, "hash":J
    array-length v0, v14

    move/from16 v23, v0

    const/16 v24, 0x8

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    add-int/lit8 v15, v23, -0x1

    :goto_a
    if-ltz v15, :cond_12

    .line 1799
    const/16 v23, 0x8

    shl-long v24, v12, v23

    aget-byte v23, v14, v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    or-long v12, v24, v26

    .line 1798
    add-int/lit8 v15, v15, -0x1

    goto :goto_a

    .line 1801
    :cond_12
    return-wide v12

    .line 1804
    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "checkSuperclass":Z
    .end local v4    # "classMods":I
    .end local v5    # "cons":[Ljava/lang/reflect/Constructor;
    .end local v6    # "consSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v7    # "dout":Ljava/io/DataOutputStream;
    .end local v10    # "fieldSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v11    # "fields":[Ljava/lang/reflect/Field;
    .end local v12    # "hash":J
    .end local v14    # "hashBytes":[B
    .end local v15    # "i":I
    .end local v18    # "md":Ljava/security/MessageDigest;
    .end local v19    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v20    # "methods":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v9

    .line 1805
    .local v9, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v23, Ljava/lang/SecurityException;

    invoke-virtual {v9}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1802
    .end local v9    # "ex":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v8

    .line 1803
    .local v8, "ex":Ljava/io/IOException;
    new-instance v23, Ljava/lang/InternalError;

    invoke-direct/range {v23 .. v23}, Ljava/lang/InternalError;-><init>()V

    throw v23
.end method

.method private computeFieldOffsets()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 1259
    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    .line 1260
    iput v3, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    .line 1261
    const/4 v1, -0x1

    .line 1263
    .local v1, "firstObjIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1264
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v0, v3, v2

    .line 1265
    .local v0, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1298
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 1268
    :sswitch_0
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 1263
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1273
    :sswitch_1
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 1274
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    goto :goto_1

    .line 1279
    :sswitch_2
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 1280
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    goto :goto_1

    .line 1285
    :sswitch_3
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 1286
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    goto :goto_1

    .line 1291
    :sswitch_4
    iget v3, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 1292
    if-ne v1, v5, :cond_0

    .line 1293
    move v1, v2

    goto :goto_1

    .line 1301
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    :cond_1
    if-eq v1, v5, :cond_2

    .line 1302
    iget v3, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    add-int/2addr v3, v1

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v4, v4

    if-eq v3, v4, :cond_2

    .line 1304
    new-instance v3, Ljava/io/InvalidClassException;

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string/jumbo v5, "illegal field order"

    invoke-direct {v3, v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 1258
    :cond_2
    return-void

    .line 1265
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
        0x44 -> :sswitch_3
        0x46 -> :sswitch_2
        0x49 -> :sswitch_2
        0x4a -> :sswitch_3
        0x4c -> :sswitch_4
        0x53 -> :sswitch_1
        0x5a -> :sswitch_0
        0x5b -> :sswitch_4
    .end sparse-switch
.end method

.method private getClassDataLayout0()[Ljava/io/ObjectStreamClass$ClassDataSlot;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1148
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    .local v6, "slots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/ObjectStreamClass$ClassDataSlot;>;"
    iget-object v7, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .local v7, "start":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .line 1152
    .local v2, "end":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_0

    const-class v8, Ljava/io/Serializable;

    invoke-virtual {v8, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1153
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 1156
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    const/4 v8, 0x3

    invoke-direct {v4, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 1158
    .local v4, "oscNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v1, p0

    .local v1, "d":Ljava/io/ObjectStreamClass;
    :goto_1
    if-eqz v1, :cond_7

    .line 1159
    iget-object v8, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1160
    new-instance v8, Ljava/io/InvalidClassException;

    const-string/jumbo v9, "Circular reference."

    invoke-direct {v8, v9}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1162
    :cond_1
    iget-object v8, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1166
    iget-object v8, v1, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    if-eqz v8, :cond_3

    iget-object v8, v1, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1167
    .local v5, "searchName":Ljava/lang/String;
    :goto_2
    const/4 v3, 0x0

    .line 1168
    .local v3, "match":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, v7

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    if-eq v0, v2, :cond_2

    .line 1169
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1170
    move-object v3, v0

    .line 1176
    .end local v3    # "match":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    if-eqz v3, :cond_6

    .line 1177
    move-object v0, v7

    :goto_4
    if-eq v0, v3, :cond_5

    .line 1178
    new-instance v8, Ljava/io/ObjectStreamClass$ClassDataSlot;

    .line 1179
    invoke-static {v0, v10}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v9

    .line 1178
    invoke-direct {v8, v9, v11}, Ljava/io/ObjectStreamClass$ClassDataSlot;-><init>(Ljava/io/ObjectStreamClass;Z)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 1166
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "searchName":Ljava/lang/String;
    :cond_3
    iget-object v5, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .restart local v5    # "searchName":Ljava/lang/String;
    goto :goto_2

    .line 1168
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "match":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    .line 1181
    .end local v3    # "match":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    .line 1185
    :cond_6
    new-instance v8, Ljava/io/ObjectStreamClass$ClassDataSlot;

    invoke-direct {v1, v3}, Ljava/io/ObjectStreamClass;->getVariantFor(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v9

    invoke-direct {v8, v9, v10}, Ljava/io/ObjectStreamClass$ClassDataSlot;-><init>(Ljava/io/ObjectStreamClass;Z)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    iget-object v1, v1, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    goto :goto_1

    .line 1189
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "searchName":Ljava/lang/String;
    :cond_7
    move-object v0, v7

    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5
    if-eq v0, v2, :cond_8

    .line 1190
    new-instance v8, Ljava/io/ObjectStreamClass$ClassDataSlot;

    .line 1191
    invoke-static {v0, v10}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v9

    .line 1190
    invoke-direct {v8, v9, v11}, Ljava/io/ObjectStreamClass$ClassDataSlot;-><init>(Ljava/io/ObjectStreamClass;Z)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    .line 1195
    :cond_8
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1196
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/io/ObjectStreamClass$ClassDataSlot;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/io/ObjectStreamClass$ClassDataSlot;

    return-object v8
.end method

.method private static getClassSignature(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1469
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1470
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1471
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1472
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1474
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1475
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_1

    .line 1476
    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1499
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1477
    :cond_1
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_2

    .line 1478
    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1479
    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_3

    .line 1480
    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1481
    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_4

    .line 1482
    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1483
    :cond_4
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_5

    .line 1484
    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1485
    :cond_5
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_6

    .line 1486
    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1487
    :cond_6
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_7

    .line 1488
    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1489
    :cond_7
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_8

    .line 1490
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1491
    :cond_8
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_9

    .line 1492
    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1494
    :cond_9
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 1497
    :cond_a
    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static getConstructorId(Ljava/lang/Class;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 2281
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v0, "WARNING: ObjectStreamClass.getConstructorId(Class<?>) is private API andwill be removed in a future Android release."

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 2293
    const-wide v0, 0x1083b99f34b59645L    # 4.065670734428704E-229

    return-wide v0
.end method

.method private static getDeclaredSUID(Ljava/lang/Class;)Ljava/lang/Long;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 1650
    :try_start_0
    const-string/jumbo v2, "serialVersionUID"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1652
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x18

    .line 1651
    const/16 v3, 0x18

    .line 1652
    if-ne v2, v3, :cond_0

    .line 1653
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1654
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1656
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 1658
    :cond_0
    return-object v4
.end method

.method private static getDeclaredSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    .line 1575
    const/4 v8, 0x0

    .line 1577
    .local v8, "serialPersistentFields":[Ljava/io/ObjectStreamField;
    :try_start_0
    const-string/jumbo v10, "serialPersistentFields"

    invoke-virtual {p0, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1579
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    and-int/lit8 v10, v10, 0x1a

    .line 1578
    const/16 v11, 0x1a

    .line 1579
    if-ne v10, v11, :cond_0

    .line 1580
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1581
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Ljava/io/ObjectStreamField;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1585
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "serialPersistentFields":[Ljava/io/ObjectStreamField;
    :cond_0
    :goto_0
    if-nez v8, :cond_1

    .line 1586
    return-object v12

    .line 1587
    :cond_1
    array-length v10, v8

    if-nez v10, :cond_2

    .line 1588
    sget-object v10, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    return-object v10

    .line 1592
    :cond_2
    array-length v10, v8

    new-array v1, v10, [Ljava/io/ObjectStreamField;

    .line 1593
    .local v1, "boundFields":[Ljava/io/ObjectStreamField;
    new-instance v5, Ljava/util/HashSet;

    array-length v10, v8

    invoke-direct {v5, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 1595
    .local v5, "fieldNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v10, v8

    if-ge v7, v10, :cond_6

    .line 1596
    aget-object v9, v8, v7

    .line 1598
    .local v9, "spf":Ljava/io/ObjectStreamField;
    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1599
    .local v6, "fname":Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1600
    new-instance v10, Ljava/io/InvalidClassException;

    .line 1601
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "multiple serializable fields named "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1600
    invoke-direct {v10, v11}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1603
    :cond_3
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1606
    :try_start_1
    invoke-virtual {p0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1607
    .restart local v4    # "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v11

    if-ne v10, v11, :cond_4

    .line 1608
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    if-nez v10, :cond_4

    .line 1611
    new-instance v10, Ljava/io/ObjectStreamField;

    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v11

    const/4 v12, 0x1

    invoke-direct {v10, v4, v11, v12}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/reflect/Field;ZZ)V

    .line 1610
    aput-object v10, v1, v7
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1615
    .end local v4    # "f":Ljava/lang/reflect/Field;
    :cond_4
    :goto_2
    aget-object v10, v1, v7

    if-nez v10, :cond_5

    .line 1616
    new-instance v10, Ljava/io/ObjectStreamField;

    .line 1617
    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v12

    .line 1616
    invoke-direct {v10, v6, v11, v12}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    aput-object v10, v1, v7

    .line 1595
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1620
    .end local v6    # "fname":Ljava/lang/String;
    .end local v9    # "spf":Ljava/io/ObjectStreamField;
    :cond_6
    return-object v1

    .line 1613
    .restart local v6    # "fname":Ljava/lang/String;
    .restart local v9    # "spf":Ljava/io/ObjectStreamField;
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/NoSuchFieldException;
    goto :goto_2

    .line 1583
    .end local v1    # "boundFields":[Ljava/io/ObjectStreamField;
    .end local v3    # "ex":Ljava/lang/NoSuchFieldException;
    .end local v5    # "fieldNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "fname":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "spf":Ljava/io/ObjectStreamField;
    .restart local v8    # "serialPersistentFields":[Ljava/io/ObjectStreamField;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static getDefaultSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 1630
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1631
    .local v0, "clFields":[Ljava/lang/reflect/Field;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1634
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/ObjectStreamField;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 1635
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit16 v4, v4, 0x88

    if-nez v4, :cond_0

    .line 1636
    new-instance v4, Ljava/io/ObjectStreamField;

    aget-object v5, v0, v1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v7, v6}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/reflect/Field;ZZ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1634
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1639
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1640
    .local v3, "size":I
    if-nez v3, :cond_2

    sget-object v4, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    :goto_1
    return-object v4

    .line 1641
    :cond_2
    new-array v4, v3, [Ljava/io/ObjectStreamField;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/io/ObjectStreamField;

    goto :goto_1
.end method

.method private static getExternalizableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 1335
    const/4 v2, 0x0

    :try_start_0
    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1336
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1337
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v0

    .restart local v0    # "cons":Ljava/lang/reflect/Constructor;
    :cond_0
    move-object v0, v3

    .line 1338
    goto :goto_0

    .line 1339
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v1

    .line 1340
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    return-object v3
.end method

.method private static getInheritableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 1385
    const/4 v2, 0x0

    .line 1386
    .local v2, "meth":Ljava/lang/reflect/Method;
    move-object v0, p0

    .line 1387
    .local v0, "defCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 1389
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1396
    .end local v2    # "meth":Ljava/lang/reflect/Method;
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    if-eq v5, p3, :cond_2

    .line 1397
    :cond_1
    return-object v4

    .line 1391
    .restart local v2    # "meth":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1392
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1399
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    .end local v2    # "meth":Ljava/lang/reflect/Method;
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1400
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 1401
    .local v3, "mods":I
    and-int/lit16 v5, v3, 0x408

    if-eqz v5, :cond_3

    .line 1402
    return-object v4

    .line 1403
    :cond_3
    and-int/lit8 v5, v3, 0x5

    if-eqz v5, :cond_4

    .line 1404
    return-object v2

    .line 1405
    :cond_4
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_6

    .line 1406
    if-ne p0, v0, :cond_5

    :goto_1
    return-object v2

    :cond_5
    move-object v2, v4

    goto :goto_1

    .line 1408
    :cond_6
    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->packageEquals(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_2
    return-object v2

    :cond_7
    move-object v2, v4

    goto :goto_2
.end method

.method private static getMethodSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1508
    .local p0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1509
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1511
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1513
    :cond_0
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1514
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 1446
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1447
    .local v1, "s":Ljava/lang/String;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1448
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 1449
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1451
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1452
    if-ltz v0, :cond_1

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private static getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 1422
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1423
    .local v1, "meth":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1424
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    .line 1425
    .local v2, "mods":I
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-ne v4, p3, :cond_0

    .line 1426
    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_0

    .line 1427
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_0

    .line 1425
    .end local v1    # "meth":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .restart local v1    # "meth":Ljava/lang/reflect/Method;
    :cond_0
    move-object v1, v3

    .line 1427
    goto :goto_0

    .line 1428
    .end local v1    # "meth":Ljava/lang/reflect/Method;
    .end local v2    # "mods":I
    :catch_0
    move-exception v0

    .line 1429
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    return-object v3
.end method

.method private static getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;
    .locals 11
    .param p0, "fields"    # [Ljava/io/ObjectStreamField;
    .param p1, "localDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 2114
    if-eqz p1, :cond_6

    array-length v8, p0

    if-lez v8, :cond_6

    .line 2115
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .line 2116
    :goto_0
    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-get1()Ljava/lang/ref/ReferenceQueue;

    move-result-object v8

    sget-object v9, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v8, v9}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 2117
    new-instance v3, Ljava/io/ObjectStreamClass$FieldReflectorKey;

    .line 2118
    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-get1()Ljava/lang/ref/ReferenceQueue;

    move-result-object v8

    .line 2117
    invoke-direct {v3, v0, p0, v8}, Ljava/io/ObjectStreamClass$FieldReflectorKey;-><init>(Ljava/lang/Class;[Ljava/io/ObjectStreamField;Ljava/lang/ref/ReferenceQueue;)V

    .line 2119
    .local v3, "key":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    sget-object v8, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/Reference;

    .line 2120
    .local v6, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v1, 0x0

    .line 2121
    .local v1, "entry":Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 2122
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2124
    .end local v1    # "entry":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    .line 2125
    .local v2, "future":Ljava/io/ObjectStreamClass$EntryFuture;
    if-nez v1, :cond_5

    .line 2126
    new-instance v4, Ljava/io/ObjectStreamClass$EntryFuture;

    invoke-direct {v4, v10}, Ljava/io/ObjectStreamClass$EntryFuture;-><init>(Ljava/io/ObjectStreamClass$EntryFuture;)V

    .line 2127
    .local v4, "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 2129
    .local v5, "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_1
    if-eqz v6, :cond_2

    .line 2130
    sget-object v8, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v3, v6}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2132
    :cond_2
    sget-object v8, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v3, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    check-cast v6, Ljava/lang/ref/Reference;

    .line 2133
    .restart local v6    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    if-eqz v6, :cond_3

    .line 2134
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2136
    :cond_3
    if-eqz v6, :cond_4

    if-eqz v1, :cond_1

    .line 2137
    :cond_4
    if-nez v1, :cond_5

    .line 2138
    move-object v2, v4

    .line 2142
    .end local v2    # "future":Ljava/io/ObjectStreamClass$EntryFuture;
    .end local v4    # "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    .end local v5    # "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_5
    instance-of v8, v1, Ljava/io/ObjectStreamClass$FieldReflector;

    if-eqz v8, :cond_7

    .line 2143
    check-cast v1, Ljava/io/ObjectStreamClass$FieldReflector;

    return-object v1

    .line 2115
    .end local v3    # "key":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    .end local v6    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_6
    const/4 v0, 0x0

    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 2144
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "key":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    .restart local v6    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_7
    instance-of v8, v1, Ljava/io/ObjectStreamClass$EntryFuture;

    if-eqz v8, :cond_9

    .line 2145
    check-cast v1, Ljava/io/ObjectStreamClass$EntryFuture;

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2156
    :cond_8
    :goto_1
    instance-of v8, v1, Ljava/io/ObjectStreamClass$FieldReflector;

    if-eqz v8, :cond_a

    .line 2157
    check-cast v1, Ljava/io/ObjectStreamClass$FieldReflector;

    return-object v1

    .line 2146
    :cond_9
    if-nez v1, :cond_8

    .line 2148
    :try_start_0
    new-instance v1, Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-static {p0, p1}, Ljava/io/ObjectStreamClass;->matchFields([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)[Ljava/io/ObjectStreamField;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/ObjectStreamClass$FieldReflector;-><init>([Ljava/io/ObjectStreamField;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2152
    .restart local v1    # "entry":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v2, v1}, Ljava/io/ObjectStreamClass$EntryFuture;->set(Ljava/lang/Object;)Z

    .line 2153
    sget-object v8, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    new-instance v9, Ljava/lang/ref/SoftReference;

    invoke-direct {v9, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v8, v3, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2149
    .end local v1    # "entry":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 2150
    .local v7, "th":Ljava/lang/Throwable;
    move-object v1, v7

    .restart local v1    # "entry":Ljava/lang/Object;
    goto :goto_2

    .line 2158
    .end local v1    # "entry":Ljava/lang/Object;
    .end local v7    # "th":Ljava/lang/Throwable;
    :cond_a
    instance-of v8, v1, Ljava/io/InvalidClassException;

    if-eqz v8, :cond_b

    .line 2159
    check-cast v1, Ljava/io/InvalidClassException;

    throw v1

    .line 2160
    :cond_b
    instance-of v8, v1, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_c

    .line 2161
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 2162
    :cond_c
    instance-of v8, v1, Ljava/lang/Error;

    if-eqz v8, :cond_d

    .line 2163
    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 2165
    :cond_d
    new-instance v8, Ljava/lang/InternalError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unexpected entry: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private static getSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 1546
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1547
    const-class v1, Ljava/io/Externalizable;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1556
    :cond_0
    sget-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 1558
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    :goto_0
    return-object v0

    .line 1548
    .end local v0    # "fields":[Ljava/io/ObjectStreamField;
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1549
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1551
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDeclaredSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v0

    .restart local v0    # "fields":[Ljava/io/ObjectStreamField;
    if-nez v0, :cond_2

    .line 1552
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDefaultSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 1554
    :cond_2
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getSerializableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 1350
    move-object v2, p0

    .line 1351
    .local v2, "initCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v4, Ljava/io/Serializable;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1352
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1353
    return-object v5

    .line 1357
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1358
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    .line 1359
    .local v3, "mods":I
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_4

    .line 1360
    and-int/lit8 v4, v3, 0x5

    if-nez v4, :cond_2

    .line 1361
    invoke-static {p0, v2}, Ljava/io/ObjectStreamClass;->packageEquals(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1365
    :cond_2
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, p0, :cond_3

    .line 1366
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Ljava/lang/reflect/Constructor;->serializationCopy(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1368
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    return-object v0

    .line 1363
    :cond_4
    return-object v5

    .line 1370
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    .end local v3    # "mods":I
    :catch_0
    move-exception v1

    .line 1371
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    return-object v5
.end method

.method private getVariantFor(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 1316
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    if-ne v1, p1, :cond_0

    .line 1317
    return-object p0

    .line 1319
    :cond_0
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 1320
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    if-eqz v1, :cond_1

    .line 1321
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ObjectStreamClass;->initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    .line 1325
    :goto_0
    return-object v0

    .line 1323
    :cond_1
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, p0, p1, v2, v1}, Ljava/io/ObjectStreamClass;->initNonProxy(Ljava/io/ObjectStreamClass;Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    goto :goto_0
.end method

.method private static native hasStaticInitializer(Ljava/lang/Class;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation
.end method

.method public static lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0
.end method

.method static lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;
    .locals 10
    .param p1, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 307
    if-nez p1, :cond_0

    const-class v7, Ljava/io/Serializable;

    invoke-virtual {v7, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    :goto_0
    if-nez v7, :cond_1

    .line 308
    return-object v9

    .line 307
    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-get0()Ljava/lang/ref/ReferenceQueue;

    move-result-object v7

    sget-object v8, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v7, v8}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 311
    new-instance v2, Ljava/io/ObjectStreamClass$WeakClassKey;

    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-get0()Ljava/lang/ref/ReferenceQueue;

    move-result-object v7

    invoke-direct {v2, p0, v7}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    .line 312
    .local v2, "key":Ljava/io/ObjectStreamClass$WeakClassKey;
    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/Reference;

    .line 313
    .local v5, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v0, 0x0

    .line 314
    .local v0, "entry":Ljava/lang/Object;
    if-eqz v5, :cond_2

    .line 315
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 317
    .end local v0    # "entry":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    .line 318
    .local v1, "future":Ljava/io/ObjectStreamClass$EntryFuture;
    if-nez v0, :cond_7

    .line 319
    new-instance v3, Ljava/io/ObjectStreamClass$EntryFuture;

    invoke-direct {v3, v9}, Ljava/io/ObjectStreamClass$EntryFuture;-><init>(Ljava/io/ObjectStreamClass$EntryFuture;)V

    .line 320
    .local v3, "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 322
    .local v4, "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_3
    if-eqz v5, :cond_4

    .line 323
    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v2, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 325
    :cond_4
    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v2, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    check-cast v5, Ljava/lang/ref/Reference;

    .line 326
    .restart local v5    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    if-eqz v5, :cond_5

    .line 327
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 329
    :cond_5
    if-eqz v5, :cond_6

    if-eqz v0, :cond_3

    .line 330
    :cond_6
    if-nez v0, :cond_7

    .line 331
    move-object v1, v3

    .line 335
    .end local v1    # "future":Ljava/io/ObjectStreamClass$EntryFuture;
    .end local v3    # "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    .end local v4    # "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_7
    instance-of v7, v0, Ljava/io/ObjectStreamClass;

    if-eqz v7, :cond_8

    .line 336
    check-cast v0, Ljava/io/ObjectStreamClass;

    return-object v0

    .line 338
    :cond_8
    instance-of v7, v0, Ljava/io/ObjectStreamClass$EntryFuture;

    if-eqz v7, :cond_9

    move-object v1, v0

    .line 339
    check-cast v1, Ljava/io/ObjectStreamClass$EntryFuture;

    .line 340
    .local v1, "future":Ljava/io/ObjectStreamClass$EntryFuture;
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass$EntryFuture;->getOwner()Ljava/lang/Thread;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    if-ne v7, v8, :cond_b

    .line 347
    const/4 v0, 0x0

    .line 352
    .end local v1    # "future":Ljava/io/ObjectStreamClass$EntryFuture;
    :cond_9
    :goto_1
    if-nez v0, :cond_a

    .line 354
    :try_start_0
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0, p0}, Ljava/io/ObjectStreamClass;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .restart local v0    # "entry":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v1, v0}, Ljava/io/ObjectStreamClass$EntryFuture;->set(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 359
    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v2, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .end local v0    # "entry":Ljava/lang/Object;
    :cond_a
    :goto_3
    instance-of v7, v0, Ljava/io/ObjectStreamClass;

    if-eqz v7, :cond_d

    .line 367
    check-cast v0, Ljava/io/ObjectStreamClass;

    return-object v0

    .line 349
    .restart local v1    # "future":Ljava/io/ObjectStreamClass$EntryFuture;
    :cond_b
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "entry":Ljava/lang/Object;
    goto :goto_1

    .line 355
    .end local v0    # "entry":Ljava/lang/Object;
    .end local v1    # "future":Ljava/io/ObjectStreamClass$EntryFuture;
    :catch_0
    move-exception v6

    .line 356
    .local v6, "th":Ljava/lang/Throwable;
    move-object v0, v6

    .restart local v0    # "entry":Ljava/lang/Object;
    goto :goto_2

    .line 362
    .end local v6    # "th":Ljava/lang/Throwable;
    :cond_c
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 368
    .end local v0    # "entry":Ljava/lang/Object;
    :cond_d
    instance-of v7, v0, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_e

    .line 369
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 370
    :cond_e
    instance-of v7, v0, Ljava/lang/Error;

    if-eqz v7, :cond_f

    .line 371
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 373
    :cond_f
    new-instance v7, Ljava/lang/InternalError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unexpected entry: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static lookupAny(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0
.end method

.method private static matchFields([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)[Ljava/io/ObjectStreamField;
    .locals 11
    .param p0, "fields"    # [Ljava/io/ObjectStreamField;
    .param p1, "localDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 2230
    if-eqz p1, :cond_1

    .line 2231
    iget-object v4, p1, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 2244
    .local v4, "localFields":[Ljava/io/ObjectStreamField;
    :goto_0
    array-length v7, p0

    new-array v6, v7, [Ljava/io/ObjectStreamField;

    .line 2245
    .local v6, "matches":[Ljava/io/ObjectStreamField;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, p0

    if-ge v1, v7, :cond_7

    .line 2246
    aget-object v0, p0, v1

    .local v0, "f":Ljava/io/ObjectStreamField;
    const/4 v5, 0x0

    .line 2247
    .local v5, "m":Ljava/io/ObjectStreamField;
    const/4 v2, 0x0

    .end local v5    # "m":Ljava/io/ObjectStreamField;
    .local v2, "j":I
    :goto_2
    array-length v7, v4

    if-ge v2, v7, :cond_5

    .line 2248
    aget-object v3, v4, v2

    .line 2249
    .local v3, "lf":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2250
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2251
    :cond_0
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v7

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v8

    if-eq v7, v8, :cond_2

    .line 2253
    new-instance v7, Ljava/io/InvalidClassException;

    iget-object v8, p1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 2254
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "incompatible types for field "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2253
    invoke-direct {v7, v8, v9}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 2231
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "lf":Ljava/io/ObjectStreamField;
    .end local v4    # "localFields":[Ljava/io/ObjectStreamField;
    .end local v6    # "matches":[Ljava/io/ObjectStreamField;
    :cond_1
    sget-object v4, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .restart local v4    # "localFields":[Ljava/io/ObjectStreamField;
    goto :goto_0

    .line 2256
    .restart local v0    # "f":Ljava/io/ObjectStreamField;
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "lf":Ljava/io/ObjectStreamField;
    .restart local v6    # "matches":[Ljava/io/ObjectStreamField;
    :cond_2
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 2257
    new-instance v5, Ljava/io/ObjectStreamField;

    .line 2258
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v8

    .line 2257
    invoke-direct {v5, v7, v8, v10}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/reflect/Field;ZZ)V

    .line 2247
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2260
    :cond_4
    new-instance v5, Ljava/io/ObjectStreamField;

    .line 2261
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v9

    .line 2260
    invoke-direct {v5, v7, v8, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .local v5, "m":Ljava/io/ObjectStreamField;
    goto :goto_3

    .line 2265
    .end local v3    # "lf":Ljava/io/ObjectStreamField;
    .end local v5    # "m":Ljava/io/ObjectStreamField;
    :cond_5
    if-nez v5, :cond_6

    .line 2266
    new-instance v5, Ljava/io/ObjectStreamField;

    .line 2267
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v8

    .line 2266
    invoke-direct {v5, v7, v8, v10}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2269
    :cond_6
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 2270
    aput-object v5, v6, v1

    .line 2245
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2272
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    .end local v2    # "j":I
    :cond_7
    return-object v6
.end method

.method private static newInstance(Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 1
    .param p1, "constructorId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 2296
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v0, "WARNING: ObjectStreamClass.newInstance(Class<?>, long) is private API andwill be removed in a future Android release."

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 2298
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static packageEquals(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1438
    .local p0, "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1439
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/io/ObjectStreamClass;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1438
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<+",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;*>;)V"
        }
    .end annotation

    .prologue
    .line 2310
    .local p0, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<+Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;*>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .local v0, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Ljava/lang/Class<*>;>;"
    if-eqz v0, :cond_0

    .line 2311
    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2307
    :cond_0
    return-void
.end method

.method private static throwMiscException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "th"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1524
    instance-of v1, p0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 1525
    check-cast p0, Ljava/lang/RuntimeException;

    .end local p0    # "th":Ljava/lang/Throwable;
    throw p0

    .line 1526
    .restart local p0    # "th":Ljava/lang/Throwable;
    :cond_0
    instance-of v1, p0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 1527
    check-cast p0, Ljava/lang/Error;

    .end local p0    # "th":Ljava/lang/Throwable;
    throw p0

    .line 1529
    .restart local p0    # "th":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unexpected exception type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1530
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1531
    throw v0
.end method


# virtual methods
.method checkDefaultSerialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 780
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$ExceptionInfo;->newInvalidClassException()Ljava/io/InvalidClassException;

    move-result-object v0

    throw v0

    .line 779
    :cond_0
    return-void
.end method

.method checkDeserialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 756
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$ExceptionInfo;->newInvalidClassException()Ljava/io/InvalidClassException;

    move-result-object v0

    throw v0

    .line 755
    :cond_0
    return-void
.end method

.method checkSerialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 767
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$ExceptionInfo;->newInvalidClassException()Ljava/io/InvalidClassException;

    move-result-object v0

    throw v0

    .line 766
    :cond_0
    return-void
.end method

.method public forClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 256
    return-object v1

    .line 258
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 260
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 259
    invoke-static {v0, v1}, Lsun/reflect/misc/ReflectUtil;->needsPackageAccessCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 264
    :cond_1
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    return-object v0
.end method

.method getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 1139
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

    if-nez v0, :cond_0

    .line 1140
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->getClassDataLayout0()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

    .line 1142
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v0

    return-object v0
.end method

.method getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 821
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 822
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v0, v3, v2

    .line 823
    .local v0, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 824
    if-eqz p2, :cond_1

    .line 825
    const-class v3, Ljava/lang/Object;

    if-ne p2, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 829
    :cond_0
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 830
    .local v1, "ftype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 831
    return-object v0

    .line 827
    .end local v1    # "ftype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-object v0

    .line 821
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 835
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    :cond_3
    return-object v4
.end method

.method public getFields()[Ljava/io/ObjectStreamField;
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    return-object v0
.end method

.method getFields(Z)[Ljava/io/ObjectStreamField;
    .locals 1
    .param p1, "copy"    # Z

    .prologue
    .line 811
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/ObjectStreamField;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    goto :goto_0
.end method

.method getLocalDesc()Ljava/io/ObjectStreamClass;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    return-object v0
.end method

.method getNumObjFields()I
    .locals 1

    .prologue
    .line 1212
    iget v0, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    return v0
.end method

.method getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    .prologue
    .line 1241
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1240
    return-void
.end method

.method getPrimDataSize()I
    .locals 1

    .prologue
    .line 1204
    iget v0, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    return v0
.end method

.method getPrimFieldValues(Ljava/lang/Object;[B)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    .prologue
    .line 1222
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->getPrimFieldValues(Ljava/lang/Object;[B)V

    .line 1221
    return-void
.end method

.method getResolveException()Ljava/lang/ClassNotFoundException;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->resolveEx:Ljava/lang/ClassNotFoundException;

    return-object v0
.end method

.method public getSerialVersionUID()J
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/io/ObjectStreamClass$1;

    invoke-direct {v0, p0}, Ljava/io/ObjectStreamClass$1;-><init>(Ljava/io/ObjectStreamClass;)V

    .line 236
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 244
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method getSuperDesc()Ljava/io/ObjectStreamClass;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method hasBlockExternalData()Z
    .locals 1

    .prologue
    .line 875
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    return v0
.end method

.method hasReadObjectMethod()Z
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasReadObjectNoDataMethod()Z
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasReadResolveMethod()Z
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasWriteObjectData()Z
    .locals 1

    .prologue
    .line 884
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    return v0
.end method

.method hasWriteObjectMethod()Z
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasWriteReplaceMethod()Z
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initNonProxy(Ljava/io/ObjectStreamClass;Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V
    .locals 6
    .param p1, "model"    # Ljava/io/ObjectStreamClass;
    .param p3, "resolveEx"    # Ljava/lang/ClassNotFoundException;
    .param p4, "superDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassNotFoundException;",
            "Ljava/io/ObjectStreamClass;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 575
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p2, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .line 576
    iput-object p3, p0, Ljava/io/ObjectStreamClass;->resolveEx:Ljava/lang/ClassNotFoundException;

    .line 577
    iput-object p4, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    .line 578
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 579
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    .line 581
    iget-boolean v0, p1, Ljava/io/ObjectStreamClass;->isEnum:Z

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    .line 582
    iget-boolean v0, p1, Ljava/io/ObjectStreamClass;->serializable:Z

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    .line 583
    iget-boolean v0, p1, Ljava/io/ObjectStreamClass;->externalizable:Z

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    .line 584
    iget-boolean v0, p1, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    .line 585
    iget-boolean v0, p1, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    .line 586
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 587
    iget v0, p1, Ljava/io/ObjectStreamClass;->primDataSize:I

    iput v0, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    .line 588
    iget v0, p1, Ljava/io/ObjectStreamClass;->numObjFields:I

    iput v0, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    .line 590
    if-eqz p2, :cond_9

    .line 591
    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    .line 592
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v0, v0, Ljava/io/ObjectStreamClass;->isProxy:Z

    if-eqz v0, :cond_0

    .line 593
    new-instance v0, Ljava/io/InvalidClassException;

    .line 594
    const-string/jumbo v1, "cannot bind non-proxy descriptor to a proxy class"

    .line 593
    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_0
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eq v0, v1, :cond_2

    .line 597
    new-instance v1, Ljava/io/InvalidClassException;

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v0, :cond_1

    .line 598
    const-string/jumbo v0, "cannot bind enum descriptor to a non-enum class"

    .line 597
    :goto_0
    invoke-direct {v1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 599
    :cond_1
    const-string/jumbo v0, "cannot bind non-enum descriptor to an enum class"

    goto :goto_0

    .line 602
    :cond_2
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->serializable:Z

    if-ne v0, v1, :cond_3

    .line 603
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 613
    :cond_3
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v1, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->classNamesEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 614
    new-instance v0, Ljava/io/InvalidClassException;

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v1, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "local class name incompatible with stream class name \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 616
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 615
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 616
    const-string/jumbo v3, "\""

    .line 615
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-direct {v0, v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_4
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 606
    new-instance v0, Ljava/io/InvalidClassException;

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v1, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "local class incompatible: stream classdesc serialVersionUID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 608
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 609
    const-string/jumbo v3, ", local class serialVersionUID = "

    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 610
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    .line 607
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 606
    invoke-direct {v0, v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_5
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-nez v0, :cond_8

    .line 620
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->serializable:Z

    if-ne v0, v1, :cond_6

    .line 621
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-eq v0, v1, :cond_6

    .line 623
    new-instance v0, Ljava/io/InvalidClassException;

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v1, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 624
    const-string/jumbo v2, "Serializable incompatible with Externalizable"

    .line 623
    invoke-direct {v0, v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_6
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->serializable:Z

    if-ne v0, v1, :cond_7

    .line 628
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-eq v0, v1, :cond_a

    .line 631
    :cond_7
    new-instance v0, Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 632
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v1, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string/jumbo v2, "class invalid for deserialization"

    .line 631
    invoke-direct {v0, v1, v2}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 636
    :cond_8
    :goto_1
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    .line 637
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    .line 638
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    .line 639
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    .line 640
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    .line 641
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    .line 642
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-nez v0, :cond_9

    .line 643
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 646
    :cond_9
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    .line 648
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$FieldReflector;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 573
    return-void

    .line 629
    :cond_a
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-eqz v0, :cond_7

    goto :goto_1
.end method

.method initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V
    .locals 3
    .param p2, "resolveEx"    # Ljava/lang/ClassNotFoundException;
    .param p3, "superDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassNotFoundException;",
            "Ljava/io/ObjectStreamClass;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 542
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .line 543
    iput-object p2, p0, Ljava/io/ObjectStreamClass;->resolveEx:Ljava/lang/ClassNotFoundException;

    .line 544
    iput-object p3, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    .line 545
    iput-boolean v2, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    .line 546
    iput-boolean v2, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    .line 547
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 548
    sget-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 550
    if-eqz p1, :cond_1

    .line 551
    invoke-static {p1, v2}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    .line 552
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v0, v0, Ljava/io/ObjectStreamClass;->isProxy:Z

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Ljava/io/InvalidClassException;

    .line 554
    const-string/jumbo v1, "cannot bind proxy descriptor to a non-proxy class"

    .line 553
    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v0, v0, Ljava/io/ObjectStreamClass;->externalizable:Z

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    .line 558
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    .line 559
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    .line 560
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    .line 561
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 563
    :cond_1
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    .line 540
    return-void
.end method

.method invokeReadObject(Ljava/lang/Object;Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1004
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    .line 1006
    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    :goto_0
    return-void

    .line 1016
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 1007
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 1008
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 1009
    .local v2, "th":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/ClassNotFoundException;

    if-eqz v3, :cond_0

    .line 1010
    check-cast v2, Ljava/lang/ClassNotFoundException;

    .end local v2    # "th":Ljava/lang/Throwable;
    throw v2

    .line 1011
    .restart local v2    # "th":Ljava/lang/Throwable;
    :cond_0
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_1

    .line 1012
    check-cast v2, Ljava/io/IOException;

    .end local v2    # "th":Ljava/lang/Throwable;
    throw v2

    .line 1014
    .restart local v2    # "th":Ljava/lang/Throwable;
    :cond_1
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1021
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "th":Ljava/lang/Throwable;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method invokeReadObjectNoData(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1034
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 1036
    :try_start_0
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    :goto_0
    return-void

    .line 1044
    :catch_0
    move-exception v0

    .line 1046
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 1037
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 1038
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 1039
    .local v2, "th":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/ObjectStreamException;

    if-eqz v3, :cond_0

    .line 1040
    check-cast v2, Ljava/io/ObjectStreamException;

    .end local v2    # "th":Ljava/lang/Throwable;
    throw v2

    .line 1042
    .restart local v2    # "th":Ljava/lang/Throwable;
    :cond_0
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1049
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "th":Ljava/lang/Throwable;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method invokeReadResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1091
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 1093
    :try_start_0
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1102
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 1094
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 1095
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 1096
    .local v2, "th":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/ObjectStreamException;

    if-eqz v3, :cond_0

    .line 1097
    check-cast v2, Ljava/io/ObjectStreamException;

    .end local v2    # "th":Ljava/lang/Throwable;
    throw v2

    .line 1099
    .restart local v2    # "th":Ljava/lang/Throwable;
    :cond_0
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    .line 1100
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 1107
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "th":Ljava/lang/Throwable;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method invokeWriteObject(Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 975
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 977
    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :goto_0
    return-void

    .line 985
    :catch_0
    move-exception v0

    .line 987
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 978
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 979
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 980
    .local v2, "th":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_0

    .line 981
    check-cast v2, Ljava/io/IOException;

    .end local v2    # "th":Ljava/lang/Throwable;
    throw v2

    .line 983
    .restart local v2    # "th":Ljava/lang/Throwable;
    :cond_0
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 990
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "th":Ljava/lang/Throwable;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method invokeWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1062
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 1064
    :try_start_0
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1073
    :catch_0
    move-exception v0

    .line 1075
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 1065
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 1066
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 1067
    .local v2, "th":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/ObjectStreamException;

    if-eqz v3, :cond_0

    .line 1068
    check-cast v2, Ljava/io/ObjectStreamException;

    .end local v2    # "th":Ljava/lang/Throwable;
    throw v2

    .line 1070
    .restart local v2    # "th":Ljava/lang/Throwable;
    :cond_0
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    .line 1071
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 1078
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "th":Ljava/lang/Throwable;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method isEnum()Z
    .locals 1

    .prologue
    .line 851
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    return v0
.end method

.method isExternalizable()Z
    .locals 1

    .prologue
    .line 859
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    return v0
.end method

.method isInstantiable()Z
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isProxy()Z
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    return v0
.end method

.method isSerializable()Z
    .locals 1

    .prologue
    .line 867
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    return v0
.end method

.method newInstance()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 954
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    .line 956
    :try_start_0
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 957
    :catch_0
    move-exception v0

    .line 959
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 962
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method readNonProxy(Ljava/io/ObjectInputStream;)V
    .locals 12
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 660
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 661
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 662
    const/4 v8, 0x0

    iput-boolean v8, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    .line 664
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v1

    .line 666
    .local v1, "flags":B
    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    .line 665
    :goto_0
    iput-boolean v8, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    .line 668
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    .line 667
    :goto_1
    iput-boolean v8, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    .line 670
    and-int/lit8 v8, v1, 0x4

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    .line 669
    :goto_2
    iput-boolean v8, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    .line 672
    and-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_3

    const/4 v5, 0x1

    .line 673
    .local v5, "sflag":Z
    :goto_3
    iget-boolean v8, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-eqz v8, :cond_4

    if-eqz v5, :cond_4

    .line 674
    new-instance v8, Ljava/io/InvalidClassException;

    .line 675
    iget-object v9, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string/jumbo v10, "serializable and externalizable flags conflict"

    .line 674
    invoke-direct {v8, v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    .line 666
    .end local v5    # "sflag":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 668
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 670
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 672
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "sflag":Z
    goto :goto_3

    .line 677
    :cond_4
    iget-boolean v8, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-nez v8, :cond_5

    .end local v5    # "sflag":Z
    :goto_4
    iput-boolean v5, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    .line 678
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    .line 679
    iget-boolean v8, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    .line 680
    new-instance v8, Ljava/io/InvalidClassException;

    iget-object v9, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 681
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "enum descriptor has non-zero serialVersionUID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 680
    invoke-direct {v8, v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    .line 677
    .restart local v5    # "sflag":Z
    :cond_5
    const/4 v5, 0x1

    goto :goto_4

    .line 678
    .end local v5    # "sflag":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    .line 684
    :cond_7
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readShort()S

    move-result v4

    .line 685
    .local v4, "numFields":I
    iget-boolean v8, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v8, :cond_8

    if-eqz v4, :cond_8

    .line 686
    new-instance v8, Ljava/io/InvalidClassException;

    iget-object v9, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 687
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "enum descriptor has non-zero field count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 686
    invoke-direct {v8, v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    .line 689
    :cond_8
    if-lez v4, :cond_a

    .line 690
    new-array v8, v4, [Ljava/io/ObjectStreamField;

    .line 689
    :goto_6
    iput-object v8, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 691
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v4, :cond_c

    .line 692
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v8

    int-to-char v7, v8

    .line 693
    .local v7, "tcode":C
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, "fname":Ljava/lang/String;
    const/16 v8, 0x4c

    if-eq v7, v8, :cond_9

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_b

    .line 695
    :cond_9
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readTypeString()Ljava/lang/String;

    move-result-object v6

    .line 697
    .local v6, "signature":Ljava/lang/String;
    :goto_8
    :try_start_0
    iget-object v8, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    new-instance v9, Ljava/io/ObjectStreamField;

    const/4 v10, 0x0

    invoke-direct {v9, v2, v6, v10}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v9, v8, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 690
    .end local v2    # "fname":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v6    # "signature":Ljava/lang/String;
    .end local v7    # "tcode":C
    :cond_a
    sget-object v8, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    goto :goto_6

    .line 695
    .restart local v2    # "fname":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v7    # "tcode":C
    :cond_b
    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [C

    const/4 v9, 0x0

    aput-char v7, v8, v9

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([C)V

    .restart local v6    # "signature":Ljava/lang/String;
    goto :goto_8

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/io/InvalidClassException;

    iget-object v9, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 700
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "invalid descriptor for field "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 699
    invoke-direct {v8, v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    check-cast v8, Ljava/io/IOException;

    throw v8

    .line 703
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "fname":Ljava/lang/String;
    .end local v6    # "signature":Ljava/lang/String;
    .end local v7    # "tcode":C
    :cond_c
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->computeFieldOffsets()V

    .line 658
    return-void
.end method

.method setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    .prologue
    .line 1250
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1249
    return-void
.end method

.method setPrimFieldValues(Ljava/lang/Object;[B)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    .prologue
    .line 1232
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->setPrimFieldValues(Ljava/lang/Object;[B)V

    .line 1231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": static final long serialVersionUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v2

    .line 294
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    const-string/jumbo v1, "L;"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeNonProxy(Ljava/io/ObjectOutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 713
    const/4 v1, 0x0

    .line 714
    .local v1, "flags":B
    iget-boolean v4, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-eqz v4, :cond_4

    .line 715
    const/4 v4, 0x4

    int-to-byte v1, v4

    .line 716
    .local v1, "flags":B
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->getProtocolVersion()I

    move-result v3

    .line 717
    .local v3, "protocol":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 718
    or-int/lit8 v4, v1, 0x8

    int-to-byte v1, v4

    .line 723
    .end local v1    # "flags":B
    .end local v3    # "protocol":I
    :cond_0
    :goto_0
    iget-boolean v4, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    if-eqz v4, :cond_1

    .line 724
    or-int/lit8 v4, v1, 0x1

    int-to-byte v1, v4

    .line 726
    :cond_1
    iget-boolean v4, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v4, :cond_2

    .line 727
    or-int/lit8 v4, v1, 0x10

    int-to-byte v1, v4

    .line 729
    :cond_2
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 731
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeShort(I)V

    .line 732
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 733
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v0, v4, v2

    .line 734
    .local v0, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 735
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_3

    .line 737
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeTypeString(Ljava/lang/String;)V

    .line 732
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 720
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    .end local v2    # "i":I
    .local v1, "flags":B
    :cond_4
    iget-boolean v4, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    if-eqz v4, :cond_0

    .line 721
    const/4 v4, 0x2

    int-to-byte v1, v4

    .local v1, "flags":B
    goto :goto_0

    .line 709
    .end local v1    # "flags":B
    .restart local v2    # "i":I
    :cond_5
    return-void
.end method
