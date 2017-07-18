.class Ljava/io/ObjectStreamClass$FieldReflector;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldReflector"
.end annotation


# static fields
.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final fields:[Ljava/io/ObjectStreamField;

.field private final numPrimFields:I

.field private final offsets:[I

.field private final readKeys:[J

.field private final typeCodes:[C

.field private final types:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final writeKeys:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method constructor <init>([Ljava/io/ObjectStreamField;)V
    .locals 11

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    array-length v4, p1

    new-array v8, v4, [J

    iput-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    new-array v8, v4, [J

    iput-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    new-array v8, v4, [I

    iput-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    new-array v8, v4, [C

    iput-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_4

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_1

    sget-object v8, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v8, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    :goto_1
    iget-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    aput-wide v2, v8, v1

    iget-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :goto_2
    aput-wide v2, v8, v1

    iget-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v10

    aput v10, v8, v1

    iget-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v10

    aput-char v10, v8, v1

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    :goto_3
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1

    :cond_2
    const-wide/16 v2, -0x1

    goto :goto_2

    :cond_3
    move-object v8, v9

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Class;

    iput-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->types:[Ljava/lang/Class;

    iget-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->types:[Ljava/lang/Class;

    array-length v8, v8

    sub-int v8, v4, v8

    iput v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    return-void
.end method


# virtual methods
.method getFields()[Ljava/io/ObjectStreamField;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    return-object v0
.end method

.method getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    :goto_0
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v1, v1, v0

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    :sswitch_0
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v1, v1, v0

    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    iget-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    aget-wide v4, v3, v0

    invoke-virtual {v2, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_0
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method getPrimFieldValues(Ljava/lang/Object;[B)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    aget-wide v2, v4, v0

    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v1, v4, v0

    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v4, v4, v0

    sparse-switch v4, :sswitch_data_0

    new-instance v4, Ljava/lang/InternalError;

    invoke-direct {v4}, Ljava/lang/InternalError;-><init>()V

    throw v4

    :sswitch_0
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v1, v4}, Ljava/io/Bits;->putBoolean([BIZ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_1
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v4

    aput-byte v4, p2, v1

    goto :goto_1

    :sswitch_2
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v4

    invoke-static {p2, v1, v4}, Ljava/io/Bits;->putChar([BIC)V

    goto :goto_1

    :sswitch_3
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v4

    invoke-static {p2, v1, v4}, Ljava/io/Bits;->putShort([BIS)V

    goto :goto_1

    :sswitch_4
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v1, v4}, Ljava/io/Bits;->putInt([BII)V

    goto :goto_1

    :sswitch_5
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {p2, v1, v4}, Ljava/io/Bits;->putFloat([BIF)V

    goto :goto_1

    :sswitch_6
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v1, v4, v5}, Ljava/io/Bits;->putLong([BIJ)V

    goto :goto_1

    :sswitch_7
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p2, v1, v4, v5}, Ljava/io/Bits;->putDouble([BID)V

    goto :goto_1

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
        0x44 -> :sswitch_7
        0x46 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4a -> :sswitch_6
        0x53 -> :sswitch_3
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 8

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    iget v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    :goto_0
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    aget-wide v2, v5, v1

    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v5, v5, v1

    sparse-switch v5, :sswitch_data_0

    new-instance v5, Ljava/lang/InternalError;

    invoke-direct {v5}, Ljava/lang/InternalError;-><init>()V

    throw v5

    :sswitch_0
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v5, v5, v1

    aget-object v4, p2, v5

    if-eqz v4, :cond_2

    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->types:[Ljava/lang/Class;

    iget v6, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    sub-int v6, v1, v6

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    sget-object v5, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v5, Ljava/lang/ClassCastException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cannot assign instance of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in instance of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_0
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method setPrimFieldValues(Ljava/lang/Object;[B)V
    .locals 8

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    if-ge v6, v0, :cond_2

    iget-object v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    aget-wide v2, v0, v6

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v7, v0, v6

    iget-object v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v0, v0, v6

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    :sswitch_0
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v7}, Ljava/io/Bits;->getBoolean([BI)Z

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    goto :goto_1

    :sswitch_1
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    aget-byte v1, p2, v7

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    goto :goto_1

    :sswitch_2
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v7}, Ljava/io/Bits;->getChar([BI)C

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    goto :goto_1

    :sswitch_3
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v7}, Ljava/io/Bits;->getShort([BI)S

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    goto :goto_1

    :sswitch_4
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v7}, Ljava/io/Bits;->getInt([BI)I

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1

    :sswitch_5
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v7}, Ljava/io/Bits;->getFloat([BI)F

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    goto :goto_1

    :sswitch_6
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v7}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_1

    :sswitch_7
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v7}, Ljava/io/Bits;->getDouble([BI)D

    move-result-wide v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    goto :goto_1

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
        0x44 -> :sswitch_7
        0x46 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4a -> :sswitch_6
        0x53 -> :sswitch_3
        0x5a -> :sswitch_0
    .end sparse-switch
.end method
