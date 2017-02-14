.class public final Lsun/misc/Unsafe;
.super Ljava/lang/Object;
.source "Unsafe.java"


# static fields
.field public static final INVALID_FIELD_OFFSET:I = -0x1

.field private static final THE_ONE:Lsun/misc/Unsafe;

.field private static final theUnsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/misc/Unsafe;

    invoke-direct {v0}, Lsun/misc/Unsafe;-><init>()V

    sput-object v0, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    sget-object v0, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v0, Lsun/misc/Unsafe;->theUnsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getArrayBaseOffsetForComponentType(Ljava/lang/Class;)I
.end method

.method private static native getArrayIndexScaleForComponentType(Ljava/lang/Class;)I
.end method

.method public static getUnsafe()Lsun/misc/Unsafe;
    .locals 3

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Unsafe access denied"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    return-object v1
.end method


# virtual methods
.method public native addressSize()I
.end method

.method public native allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public native allocateMemory(J)J
.end method

.method public arrayBaseOffset(Ljava/lang/Class;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Valid for array classes only: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {v0}, Lsun/misc/Unsafe;->getArrayBaseOffsetForComponentType(Ljava/lang/Class;)I

    move-result v1

    return v1
.end method

.method public arrayIndexScale(Ljava/lang/Class;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Valid for array classes only: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {v0}, Lsun/misc/Unsafe;->getArrayIndexScaleForComponentType(Ljava/lang/Class;)I

    move-result v1

    return v1
.end method

.method public native compareAndSwapInt(Ljava/lang/Object;JII)Z
.end method

.method public native compareAndSwapLong(Ljava/lang/Object;JJJ)Z
.end method

.method public native compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public native copyMemory(JJJ)V
.end method

.method public native copyMemoryFromPrimitiveArray(Ljava/lang/Object;JJJ)V
.end method

.method public native copyMemoryToPrimitiveArray(JLjava/lang/Object;JJ)V
.end method

.method public native freeMemory(J)V
.end method

.method public native fullFence()V
.end method

.method public final getAndAddInt(Ljava/lang/Object;JI)I
    .locals 6

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    add-int v5, v4, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4
.end method

.method public final getAndAddLong(Ljava/lang/Object;JJ)J
    .locals 8

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    add-long v6, v4, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v4
.end method

.method public final getAndSetInt(Ljava/lang/Object;JI)I
    .locals 6

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4
.end method

.method public final getAndSetLong(Ljava/lang/Object;JJ)J
    .locals 8

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v4
.end method

.method public final getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v4
.end method

.method public native getBoolean(Ljava/lang/Object;J)Z
.end method

.method public native getByte(J)B
.end method

.method public native getByte(Ljava/lang/Object;J)B
.end method

.method public native getChar(J)C
.end method

.method public native getChar(Ljava/lang/Object;J)C
.end method

.method public native getDouble(J)D
.end method

.method public native getDouble(Ljava/lang/Object;J)D
.end method

.method public native getFloat(J)F
.end method

.method public native getFloat(Ljava/lang/Object;J)F
.end method

.method public native getInt(J)I
.end method

.method public native getInt(Ljava/lang/Object;J)I
.end method

.method public native getIntVolatile(Ljava/lang/Object;J)I
.end method

.method public native getLong(J)J
.end method

.method public native getLong(Ljava/lang/Object;J)J
.end method

.method public native getLongVolatile(Ljava/lang/Object;J)J
.end method

.method public native getObject(Ljava/lang/Object;J)Ljava/lang/Object;
.end method

.method public native getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
.end method

.method public native getShort(J)S
.end method

.method public native getShort(Ljava/lang/Object;J)S
.end method

.method public native loadFence()V
.end method

.method public objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valid for instance fields only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getOffset()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public native pageSize()I
.end method

.method public park(ZJ)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Thread;->parkUntil$(J)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Thread;->parkFor$(J)V

    goto :goto_0
.end method

.method public native putBoolean(Ljava/lang/Object;JZ)V
.end method

.method public native putByte(JB)V
.end method

.method public native putByte(Ljava/lang/Object;JB)V
.end method

.method public native putChar(JC)V
.end method

.method public native putChar(Ljava/lang/Object;JC)V
.end method

.method public native putDouble(JD)V
.end method

.method public native putDouble(Ljava/lang/Object;JD)V
.end method

.method public native putFloat(JF)V
.end method

.method public native putFloat(Ljava/lang/Object;JF)V
.end method

.method public native putInt(JI)V
.end method

.method public native putInt(Ljava/lang/Object;JI)V
.end method

.method public native putIntVolatile(Ljava/lang/Object;JI)V
.end method

.method public native putLong(JJ)V
.end method

.method public native putLong(Ljava/lang/Object;JJ)V
.end method

.method public native putLongVolatile(Ljava/lang/Object;JJ)V
.end method

.method public native putObject(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putOrderedInt(Ljava/lang/Object;JI)V
.end method

.method public native putOrderedLong(Ljava/lang/Object;JJ)V
.end method

.method public native putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putShort(JS)V
.end method

.method public native putShort(Ljava/lang/Object;JS)V
.end method

.method public native setMemory(JJB)V
.end method

.method public native storeFence()V
.end method

.method public unpark(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/Thread;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->unpark$()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valid for Threads only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
