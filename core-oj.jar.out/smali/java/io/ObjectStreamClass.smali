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

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/Class;)Ljava/lang/Long;
    .locals 1

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDeclaredSUID(Ljava/lang/Class;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Ljava/io/ObjectStreamClass;->getMethodSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getExternalizableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getSerializableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Ljava/io/ObjectStreamClass;->getInheritableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Ljava/io/ObjectStreamClass;->getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Ljava/lang/Class;)J
    .locals 2

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

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    sput-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    sget-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    sput-object v0, Ljava/io/ObjectStreamClass;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

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

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v4

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    const-class v4, Ljava/lang/Enum;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    const-class v4, Ljava/io/Serializable;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    const-class v4, Ljava/io/Externalizable;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    iput-object p0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v3, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/io/ObjectStreamClass$2;

    invoke-direct {v3, p0, p1}, Ljava/io/ObjectStreamClass$2;-><init>(Ljava/io/ObjectStreamClass;Ljava/lang/Class;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    :goto_0
    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    invoke-static {v3, p0}, Ljava/io/ObjectStreamClass;->getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;

    move-result-object v3

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;
    :try_end_0
    .catch Ljava/io/InvalidClassException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-nez v3, :cond_1

    iget-boolean v3, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string/jumbo v5, "enum type"

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    :cond_1
    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string/jumbo v5, "unmatched serializable field(s) declared"

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    sget-object v3, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    :cond_4
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string/jumbo v5, "no valid constructor"

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static classNamesEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

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

    const-class v23, Ljava/io/Serializable;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-static/range {p0 .. p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_1

    :cond_0
    const-wide/16 v24, 0x0

    return-wide v24

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v4, v0, 0x611

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v20

    and-int/lit16 v0, v4, 0x200

    move/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_3

    or-int/lit16 v4, v4, 0x400

    :cond_2
    :goto_0
    invoke-virtual {v7, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isArray()Z

    move-result v23

    if-nez v23, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_4

    aget-object v23, v17, v15

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v16, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    and-int/lit16 v4, v4, -0x401

    goto :goto_0

    :cond_4
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_5

    aget-object v23, v16, v15

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v10, v0, [Ljava/io/ObjectStreamClass$MemberSignature;

    const/4 v15, 0x0

    :goto_3
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_6

    new-instance v23, Ljava/io/ObjectStreamClass$MemberSignature;

    aget-object v24, v11, v15

    invoke-direct/range {v23 .. v24}, Ljava/io/ObjectStreamClass$MemberSignature;-><init>(Ljava/lang/reflect/Field;)V

    aput-object v23, v10, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_6
    new-instance v23, Ljava/io/ObjectStreamClass$3;

    invoke-direct/range {v23 .. v23}, Ljava/io/ObjectStreamClass$3;-><init>()V

    move-object/from16 v0, v23

    invoke-static {v10, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v15, 0x0

    :goto_4
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_9

    aget-object v22, v10, v15

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xdf

    move/from16 v21, v0

    and-int/lit8 v23, v21, 0x2

    if-eqz v23, :cond_7

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x88

    move/from16 v23, v0

    if-nez v23, :cond_8

    :cond_7
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_9
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v23

    const/16 v24, 0x17

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Ljava/io/ObjectStreamClass;->hasStaticInitializer(Ljava/lang/Class;Z)Z

    move-result v23

    if-eqz v23, :cond_a

    const-string/jumbo v23, "<clinit>"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string/jumbo v23, "()V"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    array-length v0, v5

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v6, v0, [Ljava/io/ObjectStreamClass$MemberSignature;

    const/4 v15, 0x0

    :goto_6
    array-length v0, v5

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_c

    new-instance v23, Ljava/io/ObjectStreamClass$MemberSignature;

    aget-object v24, v5, v15

    invoke-direct/range {v23 .. v24}, Ljava/io/ObjectStreamClass$MemberSignature;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v23, v6, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    :cond_c
    new-instance v23, Ljava/io/ObjectStreamClass$4;

    invoke-direct/range {v23 .. v23}, Ljava/io/ObjectStreamClass$4;-><init>()V

    move-object/from16 v0, v23

    invoke-static {v6, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v15, 0x0

    :goto_7
    array-length v0, v6

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_e

    aget-object v22, v6, v15

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xd3f

    move/from16 v21, v0

    and-int/lit8 v23, v21, 0x2

    if-nez v23, :cond_d

    const-string/jumbo v23, "<init>"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x2f

    const/16 v25, 0x2e

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_e
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/io/ObjectStreamClass$MemberSignature;

    move-object/from16 v19, v0

    const/4 v15, 0x0

    :goto_8
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_f

    new-instance v23, Ljava/io/ObjectStreamClass$MemberSignature;

    aget-object v24, v20, v15

    invoke-direct/range {v23 .. v24}, Ljava/io/ObjectStreamClass$MemberSignature;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v23, v19, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_f
    new-instance v23, Ljava/io/ObjectStreamClass$5;

    invoke-direct/range {v23 .. v23}, Ljava/io/ObjectStreamClass$5;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v15, 0x0

    :goto_9
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_11

    aget-object v22, v19, v15

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xd3f

    move/from16 v21, v0

    and-int/lit8 v23, v21, 0x2

    if-nez v23, :cond_10

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x2f

    const/16 v25, 0x2e

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    const-string/jumbo v23, "SHA"

    invoke-static/range {v23 .. v23}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v18

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v14

    const-wide/16 v12, 0x0

    array-length v0, v14

    move/from16 v23, v0

    const/16 v24, 0x8

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    add-int/lit8 v15, v23, -0x1

    :goto_a
    if-ltz v15, :cond_12

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

    add-int/lit8 v15, v15, -0x1

    goto :goto_a

    :cond_12
    return-wide v12

    :catch_0
    move-exception v9

    new-instance v23, Ljava/lang/SecurityException;

    invoke-virtual {v9}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v23

    :catch_1
    move-exception v8

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

    const/4 v3, 0x0

    const/4 v5, -0x1

    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    iput v3, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    :sswitch_0
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_1
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    goto :goto_1

    :sswitch_2
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    goto :goto_1

    :sswitch_3
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    goto :goto_1

    :sswitch_4
    iget v3, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    if-ne v1, v5, :cond_0

    move v1, v2

    goto :goto_1

    :cond_1
    if-eq v1, v5, :cond_2

    iget v3, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    add-int/2addr v3, v1

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v4, v4

    if-eq v3, v4, :cond_2

    new-instance v3, Ljava/io/InvalidClassException;

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string/jumbo v5, "illegal field order"

    invoke-direct {v3, v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_2
    return-void

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

    const/4 v11, 0x0

    const/4 v10, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    iget-object v2, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    :goto_0
    if-eqz v2, :cond_0

    const-class v8, Ljava/io/Serializable;

    invoke-virtual {v8, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/HashSet;

    const/4 v8, 0x3

    invoke-direct {v4, v8}, Ljava/util/HashSet;-><init>(I)V

    move-object v1, p0

    :goto_1
    if-eqz v1, :cond_7

    iget-object v8, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/io/InvalidClassException;

    const-string/jumbo v9, "Circular reference."

    invoke-direct {v8, v9}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    iget-object v8, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    if-eqz v8, :cond_3

    iget-object v8, v1, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_2
    const/4 v3, 0x0

    move-object v0, v7

    :goto_3
    if-eq v0, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v3, v0

    :cond_2
    if-eqz v3, :cond_6

    move-object v0, v7

    :goto_4
    if-eq v0, v3, :cond_5

    new-instance v8, Ljava/io/ObjectStreamClass$ClassDataSlot;

    invoke-static {v0, v10}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v9

    invoke-direct {v8, v9, v11}, Ljava/io/ObjectStreamClass$ClassDataSlot;-><init>(Ljava/io/ObjectStreamClass;Z)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    :cond_3
    iget-object v5, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    :cond_6
    new-instance v8, Ljava/io/ObjectStreamClass$ClassDataSlot;

    invoke-direct {v1, v3}, Ljava/io/ObjectStreamClass;->getVariantFor(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v9

    invoke-direct {v8, v9, v10}, Ljava/io/ObjectStreamClass$ClassDataSlot;-><init>(Ljava/io/ObjectStreamClass;Z)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    goto :goto_1

    :cond_7
    move-object v0, v7

    :goto_5
    if-eq v0, v2, :cond_8

    new-instance v8, Ljava/io/ObjectStreamClass$ClassDataSlot;

    invoke-static {v0, v10}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v9

    invoke-direct {v8, v9, v11}, Ljava/io/ObjectStreamClass$ClassDataSlot;-><init>(Ljava/io/ObjectStreamClass;Z)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    :cond_8
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_1

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_2

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_3

    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_4

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_5

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_6

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_7

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_8

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_9

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

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

    const-string/jumbo v0, "WARNING: ObjectStreamClass.getConstructorId(Class<?>) is private API andwill be removed in a future Android release."

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

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

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v2, "serialVersionUID"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

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

    const/4 v12, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v10, "serialPersistentFields"

    invoke-virtual {p0, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    and-int/lit8 v10, v10, 0x1a

    const/16 v11, 0x1a

    if-ne v10, v11, :cond_0

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Ljava/io/ObjectStreamField;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    if-nez v8, :cond_1

    return-object v12

    :cond_1
    array-length v10, v8

    if-nez v10, :cond_2

    sget-object v10, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    return-object v10

    :cond_2
    array-length v10, v8

    new-array v1, v10, [Ljava/io/ObjectStreamField;

    new-instance v5, Ljava/util/HashSet;

    array-length v10, v8

    invoke-direct {v5, v10}, Ljava/util/HashSet;-><init>(I)V

    const/4 v7, 0x0

    :goto_1
    array-length v10, v8

    if-ge v7, v10, :cond_6

    aget-object v9, v8, v7

    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/io/InvalidClassException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "multiple serializable fields named "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_3
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :try_start_1
    invoke-virtual {p0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v11

    if-ne v10, v11, :cond_4

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    if-nez v10, :cond_4

    new-instance v10, Ljava/io/ObjectStreamField;

    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v11

    const/4 v12, 0x1

    invoke-direct {v10, v4, v11, v12}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/reflect/Field;ZZ)V

    aput-object v10, v1, v7
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    aget-object v10, v1, v7

    if-nez v10, :cond_5

    new-instance v10, Ljava/io/ObjectStreamField;

    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v12

    invoke-direct {v10, v6, v11, v12}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    aput-object v10, v1, v7

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v2

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

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit16 v4, v4, 0x88

    if-nez v4, :cond_0

    new-instance v4, Ljava/io/ObjectStreamField;

    aget-object v5, v0, v1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v7, v6}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/reflect/Field;ZZ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    sget-object v4, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    :goto_1
    return-object v4

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

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    return-object v3
.end method

.method private static getInheritableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
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

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    if-eq v5, p3, :cond_2

    :cond_1
    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    and-int/lit16 v5, v3, 0x408

    if-eqz v5, :cond_3

    return-object v4

    :cond_3
    and-int/lit8 v5, v3, 0x5

    if-eqz v5, :cond_4

    return-object v2

    :cond_4
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_6

    if-ne p0, v0, :cond_5

    :goto_1
    return-object v2

    :cond_5
    move-object v2, v4

    goto :goto_1

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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

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

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-ne v4, p3, :cond_0

    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_0

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_0

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    return-object v3
.end method

.method private static getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    const/4 v10, 0x0

    if-eqz p1, :cond_6

    array-length v8, p0

    if-lez v8, :cond_6

    iget-object v0, p1, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    :goto_0
    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-get1()Ljava/lang/ref/ReferenceQueue;

    move-result-object v8

    sget-object v9, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v8, v9}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    new-instance v3, Ljava/io/ObjectStreamClass$FieldReflectorKey;

    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-get1()Ljava/lang/ref/ReferenceQueue;

    move-result-object v8

    invoke-direct {v3, v0, p0, v8}, Ljava/io/ObjectStreamClass$FieldReflectorKey;-><init>(Ljava/lang/Class;[Ljava/io/ObjectStreamField;Ljava/lang/ref/ReferenceQueue;)V

    sget-object v8, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/Reference;

    const/4 v1, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_5

    new-instance v4, Ljava/io/ObjectStreamClass$EntryFuture;

    invoke-direct {v4, v10}, Ljava/io/ObjectStreamClass$EntryFuture;-><init>(Ljava/io/ObjectStreamClass$EntryFuture;)V

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :cond_1
    if-eqz v6, :cond_2

    sget-object v8, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v3, v6}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    sget-object v8, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v3, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/Reference;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    :cond_3
    if-eqz v6, :cond_4

    if-eqz v1, :cond_1

    :cond_4
    if-nez v1, :cond_5

    move-object v2, v4

    :cond_5
    instance-of v8, v1, Ljava/io/ObjectStreamClass$FieldReflector;

    if-eqz v8, :cond_7

    check-cast v1, Ljava/io/ObjectStreamClass$FieldReflector;

    return-object v1

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    instance-of v8, v1, Ljava/io/ObjectStreamClass$EntryFuture;

    if-eqz v8, :cond_9

    check-cast v1, Ljava/io/ObjectStreamClass$EntryFuture;

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;

    move-result-object v1

    :cond_8
    :goto_1
    instance-of v8, v1, Ljava/io/ObjectStreamClass$FieldReflector;

    if-eqz v8, :cond_a

    check-cast v1, Ljava/io/ObjectStreamClass$FieldReflector;

    return-object v1

    :cond_9
    if-nez v1, :cond_8

    :try_start_0
    new-instance v1, Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-static {p0, p1}, Ljava/io/ObjectStreamClass;->matchFields([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)[Ljava/io/ObjectStreamField;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/ObjectStreamClass$FieldReflector;-><init>([Ljava/io/ObjectStreamField;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v2, v1}, Ljava/io/ObjectStreamClass$EntryFuture;->set(Ljava/lang/Object;)Z

    sget-object v8, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    new-instance v9, Ljava/lang/ref/SoftReference;

    invoke-direct {v9, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v8, v3, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v7

    move-object v1, v7

    goto :goto_2

    :cond_a
    instance-of v8, v1, Ljava/io/InvalidClassException;

    if-eqz v8, :cond_b

    check-cast v1, Ljava/io/InvalidClassException;

    throw v1

    :cond_b
    instance-of v8, v1, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_c

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_c
    instance-of v8, v1, Ljava/lang/Error;

    if-eqz v8, :cond_d

    check-cast v1, Ljava/lang/Error;

    throw v1

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

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Ljava/io/Externalizable;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDeclaredSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDefaultSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v0

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

    const/4 v5, 0x0

    move-object v2, p0

    :cond_0
    const-class v4, Ljava/io/Serializable;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v5

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_4

    and-int/lit8 v4, v3, 0x5

    if-nez v4, :cond_2

    invoke-static {p0, v2}, Ljava/io/ObjectStreamClass;->packageEquals(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, p0, :cond_3

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Ljava/lang/reflect/Constructor;->serializationCopy(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    :cond_3
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_4
    return-object v5

    :catch_0
    move-exception v1

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

    const/4 v2, 0x0

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass;-><init>()V

    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ObjectStreamClass;->initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    :goto_0
    return-object v0

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

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0
.end method

.method static lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    const/4 v9, 0x0

    if-nez p1, :cond_0

    const-class v7, Ljava/io/Serializable;

    invoke-virtual {v7, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    :goto_0
    if-nez v7, :cond_1

    return-object v9

    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-get0()Ljava/lang/ref/ReferenceQueue;

    move-result-object v7

    sget-object v8, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v7, v8}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    new-instance v2, Ljava/io/ObjectStreamClass$WeakClassKey;

    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-get0()Ljava/lang/ref/ReferenceQueue;

    move-result-object v7

    invoke-direct {v2, p0, v7}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/Reference;

    const/4 v0, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    if-nez v0, :cond_7

    new-instance v3, Ljava/io/ObjectStreamClass$EntryFuture;

    invoke-direct {v3, v9}, Ljava/io/ObjectStreamClass$EntryFuture;-><init>(Ljava/io/ObjectStreamClass$EntryFuture;)V

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :cond_3
    if-eqz v5, :cond_4

    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v2, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_4
    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v2, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/Reference;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_5
    if-eqz v5, :cond_6

    if-eqz v0, :cond_3

    :cond_6
    if-nez v0, :cond_7

    move-object v1, v3

    :cond_7
    instance-of v7, v0, Ljava/io/ObjectStreamClass;

    if-eqz v7, :cond_8

    check-cast v0, Ljava/io/ObjectStreamClass;

    return-object v0

    :cond_8
    instance-of v7, v0, Ljava/io/ObjectStreamClass$EntryFuture;

    if-eqz v7, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/io/ObjectStreamClass$EntryFuture;

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass$EntryFuture;->getOwner()Ljava/lang/Thread;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    if-ne v7, v8, :cond_b

    const/4 v0, 0x0

    :cond_9
    :goto_1
    if-nez v0, :cond_a

    :try_start_0
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0, p0}, Ljava/io/ObjectStreamClass;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/io/ObjectStreamClass$EntryFuture;->set(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v2, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_3
    instance-of v7, v0, Ljava/io/ObjectStreamClass;

    if-eqz v7, :cond_d

    check-cast v0, Ljava/io/ObjectStreamClass;

    return-object v0

    :cond_b
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v6

    move-object v0, v6

    goto :goto_2

    :cond_c
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_d
    instance-of v7, v0, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_e

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_e
    instance-of v7, v0, Ljava/lang/Error;

    if-eqz v7, :cond_f

    check-cast v0, Ljava/lang/Error;

    throw v0

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

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0
.end method

.method private static matchFields([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)[Ljava/io/ObjectStreamField;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    const/4 v10, 0x0

    if-eqz p1, :cond_1

    iget-object v4, p1, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    :goto_0
    array-length v7, p0

    new-array v6, v7, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    :goto_1
    array-length v7, p0

    if-ge v1, v7, :cond_7

    aget-object v0, p0, v1

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_2
    array-length v7, v4

    if-ge v2, v7, :cond_5

    aget-object v3, v4, v2

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v7

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v8

    if-eq v7, v8, :cond_2

    new-instance v7, Ljava/io/InvalidClassException;

    iget-object v8, p1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

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

    invoke-direct {v7, v8, v9}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    :cond_1
    sget-object v4, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v5, Ljava/io/ObjectStreamField;

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v8

    invoke-direct {v5, v7, v8, v10}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/reflect/Field;ZZ)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/io/ObjectStreamField;

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v9

    invoke-direct {v5, v7, v8, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_5
    if-nez v5, :cond_6

    new-instance v5, Ljava/io/ObjectStreamField;

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8, v10}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/io/ObjectStreamField;->setOffset(I)V

    aput-object v5, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    return-object v6
.end method

.method private static newInstance(Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string/jumbo v0, "WARNING: ObjectStreamClass.newInstance(Class<?>, long) is private API andwill be removed in a future Android release."

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/io/ObjectStreamClass;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_0
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static throwMiscException(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v1, p0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :cond_0
    instance-of v1, p0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unexpected exception type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$ExceptionInfo;->newInvalidClassException()Ljava/io/InvalidClassException;

    move-result-object v0

    throw v0

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

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$ExceptionInfo;->newInvalidClassException()Ljava/io/InvalidClassException;

    move-result-object v0

    throw v0

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

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$ExceptionInfo;->newInvalidClassException()Ljava/io/InvalidClassException;

    move-result-object v0

    throw v0

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

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lsun/reflect/misc/ReflectUtil;->needsPackageAccessCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

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

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->getClassDataLayout0()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v0

    return-object v0
.end method

.method getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    const-class v3, Ljava/lang/Object;

    if-ne p2, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method public getFields()[Ljava/io/ObjectStreamField;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    return-object v0
.end method

.method getFields(Z)[Ljava/io/ObjectStreamField;
    .locals 1

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

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    return-object v0
.end method

.method getNumObjFields()I
    .locals 1

    iget v0, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    return v0
.end method

.method getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method getPrimDataSize()I
    .locals 1

    iget v0, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    return v0
.end method

.method getPrimFieldValues(Ljava/lang/Object;[B)V
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->getPrimFieldValues(Ljava/lang/Object;[B)V

    return-void
.end method

.method getResolveException()Ljava/lang/ClassNotFoundException;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->resolveEx:Ljava/lang/ClassNotFoundException;

    return-object v0
.end method

.method public getSerialVersionUID()J
    .locals 2

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ObjectStreamClass$1;

    invoke-direct {v0, p0}, Ljava/io/ObjectStreamClass$1;-><init>(Ljava/io/ObjectStreamClass;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method getSuperDesc()Ljava/io/ObjectStreamClass;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method hasBlockExternalData()Z
    .locals 1

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    return v0
.end method

.method hasReadObjectMethod()Z
    .locals 1

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

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    return v0
.end method

.method hasWriteObjectMethod()Z
    .locals 1

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

    iput-object p2, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    iput-object p3, p0, Ljava/io/ObjectStreamClass;->resolveEx:Ljava/lang/ClassNotFoundException;

    iput-object p4, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, p1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    iget-boolean v0, p1, Ljava/io/ObjectStreamClass;->isEnum:Z

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    iget-boolean v0, p1, Ljava/io/ObjectStreamClass;->serializable:Z

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    iget-boolean v0, p1, Ljava/io/ObjectStreamClass;->externalizable:Z

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    iget-boolean v0, p1, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    iget-boolean v0, p1, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    iget-object v0, p1, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    iget v0, p1, Ljava/io/ObjectStreamClass;->primDataSize:I

    iput v0, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    iget v0, p1, Ljava/io/ObjectStreamClass;->numObjFields:I

    iput v0, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v0, v0, Ljava/io/ObjectStreamClass;->isProxy:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/InvalidClassException;

    const-string/jumbo v1, "cannot bind non-proxy descriptor to a proxy class"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/io/InvalidClassException;

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "cannot bind enum descriptor to a non-enum class"

    :goto_0
    invoke-direct {v1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo v0, "cannot bind non-enum descriptor to an enum class"

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->serializable:Z

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v1, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->classNamesEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/InvalidClassException;

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v1, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "local class name incompatible with stream class name \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/InvalidClassException;

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v1, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "local class incompatible: stream classdesc serialVersionUID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", local class serialVersionUID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->serializable:Z

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-eq v0, v1, :cond_6

    new-instance v0, Ljava/io/InvalidClassException;

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v1, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string/jumbo v2, "Serializable incompatible with Externalizable"

    invoke-direct {v0, v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->serializable:Z

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-eq v0, v1, :cond_a

    :cond_7
    new-instance v0, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v1, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string/jumbo v2, "class invalid for deserialization"

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    :cond_8
    :goto_1
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-nez v0, :cond_9

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    :cond_9
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$FieldReflector;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    return-void

    :cond_a
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-eqz v0, :cond_7

    goto :goto_1
.end method

.method initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V
    .locals 3
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

    const/4 v2, 0x1

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    iput-object p2, p0, Ljava/io/ObjectStreamClass;->resolveEx:Ljava/lang/ClassNotFoundException;

    iput-object p3, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    iput-boolean v2, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    iput-boolean v2, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    sget-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    if-eqz p1, :cond_1

    invoke-static {p1, v2}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v0, v0, Ljava/io/ObjectStreamClass;->isProxy:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/InvalidClassException;

    const-string/jumbo v1, "cannot bind proxy descriptor to a non-proxy class"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v0, v0, Ljava/io/ObjectStreamClass;->externalizable:Z

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v0, v0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    :cond_1
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    return-void
.end method

.method invokeReadObject(Ljava/lang/Object;Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

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

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/ClassNotFoundException;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/ClassNotFoundException;

    throw v2

    :cond_0
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/io/IOException;

    throw v2

    :cond_1
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method invokeReadObjectNoData(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v3, v2, Ljava/io/ObjectStreamException;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/io/ObjectStreamException;

    throw v2

    :cond_0
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method invokeReadResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

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

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v3, v2, Ljava/io/ObjectStreamException;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/io/ObjectStreamException;

    throw v2

    :cond_0
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method invokeWriteObject(Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

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

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/io/IOException;

    throw v2

    :cond_0
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method invokeWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

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

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v3, v2, Ljava/io/ObjectStreamException;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/io/ObjectStreamException;

    throw v2

    :cond_0
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method isEnum()Z
    .locals 1

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    return v0
.end method

.method isExternalizable()Z
    .locals 1

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    return v0
.end method

.method isInstantiable()Z
    .locals 1

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

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    return v0
.end method

.method isSerializable()Z
    .locals 1

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

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method readNonProxy(Ljava/io/ObjectInputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    const/4 v8, 0x0

    iput-boolean v8, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v1

    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    and-int/lit8 v8, v1, 0x4

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    and-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_3

    const/4 v5, 0x1

    :goto_3
    iget-boolean v8, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-eqz v8, :cond_4

    if-eqz v5, :cond_4

    new-instance v8, Ljava/io/InvalidClassException;

    iget-object v9, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string/jumbo v10, "serializable and externalizable flags conflict"

    invoke-direct {v8, v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    iget-boolean v8, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-nez v8, :cond_5

    :goto_4
    iput-boolean v5, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    iget-boolean v8, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    new-instance v8, Ljava/io/InvalidClassException;

    iget-object v9, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

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

    invoke-direct {v8, v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    :cond_5
    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readShort()S

    move-result v4

    iget-boolean v8, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v8, :cond_8

    if-eqz v4, :cond_8

    new-instance v8, Ljava/io/InvalidClassException;

    iget-object v9, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "enum descriptor has non-zero field count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    :cond_8
    if-lez v4, :cond_a

    new-array v8, v4, [Ljava/io/ObjectStreamField;

    :goto_6
    iput-object v8, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v4, :cond_c

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v8

    int-to-char v7, v8

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x4c

    if-eq v7, v8, :cond_9

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_b

    :cond_9
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readTypeString()Ljava/lang/String;

    move-result-object v6

    :goto_8
    :try_start_0
    iget-object v8, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    new-instance v9, Ljava/io/ObjectStreamField;

    const/4 v10, 0x0

    invoke-direct {v9, v2, v6, v10}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v9, v8, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    sget-object v8, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    goto :goto_6

    :cond_b
    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [C

    const/4 v9, 0x0

    aput-char v7, v8, v9

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([C)V

    goto :goto_8

    :catch_0
    move-exception v0

    new-instance v8, Ljava/io/InvalidClassException;

    iget-object v9, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "invalid descriptor for field "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    check-cast v8, Ljava/io/IOException;

    throw v8

    :cond_c
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->computeFieldOffsets()V

    return-void
.end method

.method setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method setPrimFieldValues(Ljava/lang/Object;[B)V
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->setPrimFieldValues(Ljava/lang/Object;[B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": static final long serialVersionUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "L;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeNonProxy(Ljava/io/ObjectOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    const/4 v1, 0x0

    iget-boolean v4, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    int-to-byte v1, v4

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->getProtocolVersion()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    or-int/lit8 v4, v1, 0x8

    int-to-byte v1, v4

    :cond_0
    :goto_0
    iget-boolean v4, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    if-eqz v4, :cond_1

    or-int/lit8 v4, v1, 0x1

    int-to-byte v1, v4

    :cond_1
    iget-boolean v4, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v4, :cond_2

    or-int/lit8 v4, v1, 0x10

    int-to-byte v1, v4

    :cond_2
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeShort(I)V

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeTypeString(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v4, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    int-to-byte v1, v4

    goto :goto_0

    :cond_5
    return-void
.end method
