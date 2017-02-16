.class Lsun/nio/ch/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Util$1;,
        Lsun/nio/ch/Util$BufferCache;,
        Lsun/nio/ch/Util$SelectorWrapper;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final TEMP_BUF_POOL_SIZE:I

.field private static bufferCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lsun/nio/ch/Util$BufferCache;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile bugLevel:Ljava/lang/String;

.field private static localSelector:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lsun/nio/ch/Util$SelectorWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private static localSelectorWrapper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lsun/nio/ch/Util$SelectorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static pageSize:I

.field private static unsafe:Lsun/misc/Unsafe;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lsun/nio/ch/Util;->TEMP_BUF_POOL_SIZE:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/nio/ch/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/Util;->-assertionsDisabled:Z

    .line 49
    sget v0, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    sput v0, Lsun/nio/ch/Util;->TEMP_BUF_POOL_SIZE:I

    .line 53
    new-instance v0, Lsun/nio/ch/Util$1;

    invoke-direct {v0}, Lsun/nio/ch/Util$1;-><init>()V

    .line 52
    sput-object v0, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    .line 249
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 248
    sput-object v0, Lsun/nio/ch/Util;->localSelector:Ljava/lang/ThreadLocal;

    .line 253
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 252
    sput-object v0, Lsun/nio/ch/Util;->localSelectorWrapper:Ljava/lang/ThreadLocal;

    .line 336
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    .line 354
    const/4 v0, -0x1

    sput v0, Lsun/nio/ch/Util;->pageSize:I

    .line 363
    const/4 v0, 0x0

    sput-object v0, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    .line 44
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _get(J)B
    .locals 2
    .param p0, "a"    # J

    .prologue
    .line 339
    sget-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method private static _put(JB)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # B

    .prologue
    .line 343
    sget-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 342
    return-void
.end method

.method static atBugLevel(Ljava/lang/String;)Z
    .locals 3
    .param p0, "bl"    # Ljava/lang/String;

    .prologue
    .line 366
    sget-object v1, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 367
    invoke-static {}, Lsun/misc/VM;->isBooted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    const/4 v1, 0x0

    return v1

    .line 370
    :cond_0
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "sun.nio.ch.bugLevel"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 371
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    sput-object v0, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    .line 373
    :cond_1
    sget-object v1, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 371
    .restart local v0    # "value":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static erase(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p0, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 347
    sget-object v1, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    move-object v0, p0

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v4, v0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->setMemory(JJB)V

    .line 346
    return-void
.end method

.method private static free(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 219
    check-cast p0, Lsun/nio/ch/DirectBuffer;

    .end local p0    # "buf":Ljava/nio/ByteBuffer;
    invoke-interface {p0}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v0

    .line 220
    .local v0, "cleaner":Lsun/misc/Cleaner;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 218
    :cond_0
    return-void
.end method

.method static getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 163
    sget-object v2, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/nio/ch/Util$BufferCache;

    .line 164
    .local v1, "cache":Lsun/nio/ch/Util$BufferCache;
    invoke-virtual {v1, p0}, Lsun/nio/ch/Util$BufferCache;->get(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 165
    .local v0, "buf":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 166
    return-object v0

    .line 171
    :cond_0
    invoke-virtual {v1}, Lsun/nio/ch/Util$BufferCache;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    invoke-virtual {v1}, Lsun/nio/ch/Util$BufferCache;->removeFirst()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    .line 175
    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method static getTemporarySelector(Ljava/nio/channels/SelectableChannel;)Ljava/nio/channels/Selector;
    .locals 6
    .param p0, "sc"    # Ljava/nio/channels/SelectableChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 261
    sget-object v3, Lsun/nio/ch/Util;->localSelector:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 262
    .local v0, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lsun/nio/ch/Util$SelectorWrapper;>;"
    const/4 v2, 0x0

    .line 263
    .local v2, "selWrapper":Lsun/nio/ch/Util$SelectorWrapper;
    const/4 v1, 0x0

    .line 264
    .local v1, "sel":Ljava/nio/channels/Selector;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "selWrapper":Lsun/nio/ch/Util$SelectorWrapper;
    check-cast v2, Lsun/nio/ch/Util$SelectorWrapper;

    .local v2, "selWrapper":Lsun/nio/ch/Util$SelectorWrapper;
    if-nez v2, :cond_2

    .line 268
    .end local v1    # "sel":Ljava/nio/channels/Selector;
    .end local v2    # "selWrapper":Lsun/nio/ch/Util$SelectorWrapper;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/nio/channels/SelectableChannel;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v1

    .line 269
    .local v1, "sel":Ljava/nio/channels/Selector;
    new-instance v2, Lsun/nio/ch/Util$SelectorWrapper;

    invoke-direct {v2, v1, v5}, Lsun/nio/ch/Util$SelectorWrapper;-><init>(Ljava/nio/channels/Selector;Lsun/nio/ch/Util$SelectorWrapper;)V

    .line 270
    .restart local v2    # "selWrapper":Lsun/nio/ch/Util$SelectorWrapper;
    sget-object v3, Lsun/nio/ch/Util;->localSelector:Ljava/lang/ThreadLocal;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 272
    :cond_1
    sget-object v3, Lsun/nio/ch/Util;->localSelectorWrapper:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 273
    return-object v1

    .line 266
    .local v1, "sel":Ljava/nio/channels/Selector;
    :cond_2
    invoke-virtual {v2}, Lsun/nio/ch/Util$SelectorWrapper;->get()Ljava/nio/channels/Selector;

    move-result-object v1

    .local v1, "sel":Ljava/nio/channels/Selector;
    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v3

    invoke-virtual {p0}, Ljava/nio/channels/SelectableChannel;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v4

    if-eq v3, v4, :cond_1

    goto :goto_0
.end method

.method static offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 192
    sget-boolean v1, Lsun/nio/ch/Util;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 193
    :cond_1
    sget-object v1, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Util$BufferCache;

    .line 194
    .local v0, "cache":Lsun/nio/ch/Util$BufferCache;
    invoke-virtual {v0, p0}, Lsun/nio/ch/Util$BufferCache;->offerFirst(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    invoke-static {p0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    .line 191
    :cond_2
    return-void
.end method

.method static offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 207
    sget-boolean v1, Lsun/nio/ch/Util;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 208
    :cond_1
    sget-object v1, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Util$BufferCache;

    .line 209
    .local v0, "cache":Lsun/nio/ch/Util$BufferCache;
    invoke-virtual {v0, p0}, Lsun/nio/ch/Util$BufferCache;->offerLast(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    invoke-static {p0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    .line 206
    :cond_2
    return-void
.end method

.method static pageSize()I
    .locals 2

    .prologue
    .line 357
    sget v0, Lsun/nio/ch/Util;->pageSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 358
    invoke-static {}, Lsun/nio/ch/Util;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    invoke-virtual {v0}, Lsun/misc/Unsafe;->pageSize()I

    move-result v0

    sput v0, Lsun/nio/ch/Util;->pageSize:I

    .line 359
    :cond_0
    sget v0, Lsun/nio/ch/Util;->pageSize:I

    return v0
.end method

.method static releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 183
    invoke-static {p0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 182
    return-void
.end method

.method static releaseTemporarySelector(Ljava/nio/channels/Selector;)V
    .locals 2
    .param p0, "sel"    # Ljava/nio/channels/Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->selectNow()I

    .line 281
    sget-boolean v0, Lsun/nio/ch/Util;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Temporary selector not empty"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 282
    :cond_0
    sget-object v0, Lsun/nio/ch/Util;->localSelectorWrapper:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method static subsequence([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "bs"    # [Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 289
    if-nez p1, :cond_0

    array-length v3, p0

    if-ne p2, v3, :cond_0

    .line 290
    return-object p0

    .line 291
    :cond_0
    move v2, p2

    .line 292
    .local v2, "n":I
    new-array v0, p2, [Ljava/nio/ByteBuffer;

    .line 293
    .local v0, "bs2":[Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 294
    add-int v3, p1, v1

    aget-object v3, p0, v3

    aput-object v3, v0, v1

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_1
    return-object v0
.end method

.method static ungrowableSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lsun/nio/ch/Util$2;

    invoke-direct {v0, p0}, Lsun/nio/ch/Util$2;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static unsafe()Lsun/misc/Unsafe;
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    return-object v0
.end method
