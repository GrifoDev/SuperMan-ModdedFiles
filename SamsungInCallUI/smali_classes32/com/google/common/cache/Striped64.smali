.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/Striped64$Cell;
    }
.end annotation


# static fields
.field static final NCPU:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final baseOffset:J

.field private static final busyOffset:J

.field static final rng:Ljava/util/Random;

.field static final threadHashCode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[I>;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/Striped64$Cell;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v2, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sput-object v2, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    sput v2, Lcom/google/common/cache/Striped64;->NCPU:I

    :try_start_0
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, Lcom/google/common/cache/Striped64;

    sget-object v2, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "base"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    sget-object v2, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "busy"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .locals 1

    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 4

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v1, Lcom/google/common/cache/Striped64$1;

    invoke-direct {v1}, Lcom/google/common/cache/Striped64$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final casBase(JJ)Z
    .locals 9

    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final casBusy()Z
    .locals 6

    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
.end method

.method final internalReset(J)V
    .locals 5

    iget-object v1, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    iput-wide p1, p0, Lcom/google/common/cache/Striped64;->base:J

    if-eqz v1, :cond_1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    iput-wide p1, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final retryUpdate(J[IZ)V
    .locals 23

    if-nez p3, :cond_4

    sget-object v20, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 p3, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v20, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Random;->nextInt()I

    move-result v16

    const/16 v20, 0x0

    if-nez v16, :cond_3

    const/4 v10, 0x1

    :goto_0
    aput v10, p3, v20

    :goto_1
    const/4 v8, 0x0

    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz v7, :cond_e

    array-length v15, v7

    if-lez v15, :cond_e

    add-int/lit8 v20, v15, -0x1

    and-int v20, v20, v10

    aget-object v6, v7, v20

    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_5

    new-instance v16, Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v20

    if-eqz v20, :cond_5

    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    array-length v14, v0

    if-lez v14, :cond_1

    add-int/lit8 v20, v14, -0x1

    and-int v13, v20, v10

    aget-object v20, v17, v13

    if-nez v20, :cond_1

    aput-object v16, v17, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x1

    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-eqz v9, :cond_0

    :cond_2
    :goto_3
    return-void

    :cond_3
    move/from16 v10, v16

    goto :goto_0

    :cond_4
    const/16 v20, 0x0

    aget v10, p3, v20

    goto :goto_1

    :catchall_0
    move-exception v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v20

    :cond_5
    const/4 v8, 0x0

    :cond_6
    :goto_4
    shl-int/lit8 v20, v10, 0xd

    xor-int v10, v10, v20

    ushr-int/lit8 v20, v10, 0x11

    xor-int v10, v10, v20

    shl-int/lit8 v20, v10, 0x5

    xor-int v10, v10, v20

    const/16 v20, 0x0

    aput v10, p3, v20

    goto :goto_2

    :cond_7
    if-nez p4, :cond_8

    const/16 p4, 0x1

    goto :goto_4

    :cond_8
    iget-wide v0, v6, Lcom/google/common/cache/Striped64$Cell;->value:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v20

    if-nez v20, :cond_2

    sget v20, Lcom/google/common/cache/Striped64;->NCPU:I

    move/from16 v0, v20

    if-ge v15, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v0, v7, :cond_a

    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    :cond_a
    if-nez v8, :cond_b

    const/4 v8, 0x1

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v20

    if-eqz v20, :cond_6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_d

    shl-int/lit8 v20, v15, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v15, :cond_c

    aget-object v20, v7, v11

    aput-object v20, v17, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_c
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_d
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    const/4 v8, 0x0

    goto/16 :goto_2

    :catchall_1
    move-exception v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v20

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v20

    if-eqz v20, :cond_10

    const/4 v12, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_f

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    and-int/lit8 v20, v10, 0x1

    new-instance v21, Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    aput-object v21, v17, v20

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v12, 0x1

    :cond_f
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-eqz v12, :cond_0

    goto/16 :goto_3

    :catchall_2
    move-exception v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v20

    :cond_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/common/cache/Striped64;->base:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v20

    if-eqz v20, :cond_0

    goto/16 :goto_3
.end method
