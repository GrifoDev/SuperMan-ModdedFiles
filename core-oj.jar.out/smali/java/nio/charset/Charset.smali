.class public abstract Ljava/nio/charset/Charset;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/charset/Charset;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile bugLevel:Ljava/lang/String;

.field private static volatile cache1:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final cache2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultCharset:Ljava/nio/charset/Charset;

.field private static gate:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ThreadLocal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aliasSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aliases:[Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0()Ljava/util/Iterator;
    .locals 1

    invoke-static {}, Ljava/nio/charset/Charset;->providers()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 0
    .param p0, "i"    # Ljava/util/Iterator;
    .param p1, "m"    # Ljava/util/Map;

    .prologue
    invoke-static {p0, p1}, Ljava/nio/charset/Charset;->put(Ljava/util/Iterator;Ljava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 286
    sput-object v0, Ljava/nio/charset/Charset;->bugLevel:Ljava/lang/String;

    .line 337
    sput-object v0, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    .line 411
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    .line 280
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "canonicalName"    # Ljava/lang/String;
    .param p2, "aliases"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput-object v2, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    .line 696
    invoke-static {p1}, Ljava/nio/charset/Charset;->checkName(Ljava/lang/String;)V

    .line 697
    if-nez p2, :cond_0

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    .line 698
    .local v0, "as":[Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 699
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/nio/charset/Charset;->checkName(Ljava/lang/String;)V

    .line 698
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 697
    .end local v0    # "as":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    move-object v0, p2

    .restart local v0    # "as":[Ljava/lang/String;
    goto :goto_0

    .line 700
    .restart local v1    # "i":I
    :cond_1
    iput-object p1, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    .line 701
    iput-object v0, p0, Ljava/nio/charset/Charset;->aliases:[Ljava/lang/String;

    .line 695
    return-void
.end method

.method static atBugLevel(Ljava/lang/String;)Z
    .locals 4
    .param p0, "bl"    # Ljava/lang/String;

    .prologue
    .line 289
    sget-object v0, Ljava/nio/charset/Charset;->bugLevel:Ljava/lang/String;

    .line 290
    .local v0, "level":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 291
    invoke-static {}, Lsun/misc/VM;->isBooted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    const/4 v1, 0x0

    return v1

    .line 294
    :cond_0
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "sun.nio.cs.bugLevel"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "level":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "level":Ljava/lang/String;
    sput-object v0, Ljava/nio/charset/Charset;->bugLevel:Ljava/lang/String;

    .line 296
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static availableCharsets()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    new-instance v0, Ljava/nio/charset/Charset$3;

    invoke-direct {v0}, Ljava/nio/charset/Charset$3;-><init>()V

    .line 630
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private static cache(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 6
    .param p0, "charsetName"    # Ljava/lang/String;
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .prologue
    .line 341
    sget-object v5, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    monitor-enter v5

    .line 342
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "canonicalName":Ljava/lang/String;
    sget-object v4, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/Charset;

    .line 345
    .local v2, "canonicalCharset":Ljava/nio/charset/Charset;
    if-eqz v2, :cond_1

    .line 346
    move-object p1, v2

    .line 355
    :cond_0
    sget-object v4, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v4, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 358
    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v4, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v4, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    .line 340
    return-void

    .line 348
    :cond_1
    :try_start_1
    sget-object v4, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    .local v0, "alias":Ljava/lang/String;
    sget-object v4, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 341
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "alias$iterator":Ljava/util/Iterator;
    .end local v2    # "canonicalCharset":Ljava/nio/charset/Charset;
    .end local v3    # "canonicalName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static checkName(Ljava/lang/String;)V
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 310
    .local v2, "n":I
    const-string/jumbo v3, "1.4"

    invoke-static {v3}, Ljava/nio/charset/Charset;->atBugLevel(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 311
    if-nez v2, :cond_0

    .line 312
    new-instance v3, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {v3, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 314
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_a

    .line 315
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 316
    .local v0, "c":C
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_2

    .line 314
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_2
    const/16 v3, 0x61

    if-lt v0, v3, :cond_3

    const/16 v3, 0x7a

    if-le v0, v3, :cond_1

    .line 318
    :cond_3
    const/16 v3, 0x30

    if-lt v0, v3, :cond_4

    const/16 v3, 0x39

    if-le v0, v3, :cond_1

    .line 319
    :cond_4
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_5

    if-nez v1, :cond_1

    .line 320
    :cond_5
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_6

    if-nez v1, :cond_1

    .line 321
    :cond_6
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_7

    if-nez v1, :cond_1

    .line 322
    :cond_7
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_8

    if-nez v1, :cond_1

    .line 323
    :cond_8
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_9

    if-nez v1, :cond_1

    .line 324
    :cond_9
    new-instance v3, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {v3, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 308
    .end local v0    # "c":C
    :cond_a
    return-void
.end method

.method public static defaultCharset()Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 666
    const-class v1, Ljava/nio/charset/Charset;

    monitor-enter v1

    .line 667
    :try_start_0
    sget-object v0, Ljava/nio/charset/Charset;->defaultCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 668
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Ljava/nio/charset/Charset;->defaultCharset:Ljava/nio/charset/Charset;

    .line 671
    :cond_0
    sget-object v0, Ljava/nio/charset/Charset;->defaultCharset:Ljava/nio/charset/Charset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 568
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 569
    .local v0, "cs":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_0

    .line 570
    return-object v0

    .line 571
    :cond_0
    new-instance v1, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-direct {v1, p0}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 3
    .param p0, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 583
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "cause":Ljava/lang/Exception;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 586
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 587
    throw v1
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 495
    if-nez p0, :cond_0

    .line 496
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Null charset name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 499
    :cond_0
    sget-object v0, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    .line 500
    .local v0, "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    return-object v1

    .line 502
    :cond_1
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookup2(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    return-object v1
.end method

.method private static lookup2(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 4
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 507
    sget-object v2, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    monitor-enter v2

    .line 508
    :try_start_0
    sget-object v1, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .local v0, "cs":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_0

    .line 509
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, p0, v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v1, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 510
    return-object v0

    :cond_0
    monitor-exit v2

    .line 516
    invoke-static {p0}, Llibcore/icu/NativeConverter;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_1

    .line 517
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookupViaProviders(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 519
    :cond_1
    invoke-static {p0, v0}, Ljava/nio/charset/Charset;->cache(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 520
    return-object v0

    .line 507
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 524
    .restart local v0    # "cs":Ljava/nio/charset/Charset;
    :cond_2
    invoke-static {p0}, Ljava/nio/charset/Charset;->checkName(Ljava/lang/String;)V

    .line 525
    return-object v3
.end method

.method private static lookupViaProviders(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 423
    invoke-static {}, Lsun/misc/VM;->isBooted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    return-object v2

    .line 426
    :cond_0
    sget-object v0, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    return-object v2

    .line 430
    :cond_1
    :try_start_0
    sget-object v0, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 433
    new-instance v0, Ljava/nio/charset/Charset$2;

    invoke-direct {v0, p0}, Ljava/nio/charset/Charset$2;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    sget-object v1, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 432
    return-object v0

    .line 445
    :catchall_0
    move-exception v0

    .line 446
    sget-object v1, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 445
    throw v0
.end method

.method private static providers()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 366
    new-instance v0, Ljava/nio/charset/Charset$1;

    invoke-direct {v0}, Ljava/nio/charset/Charset$1;-><init>()V

    return-object v0
.end method

.method private static put(Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/charset/Charset;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 598
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 595
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    :cond_1
    return-void
.end method


# virtual methods
.method public final aliases()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 719
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    if-eqz v3, :cond_0

    .line 720
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    return-object v3

    .line 721
    :cond_0
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliases:[Ljava/lang/String;

    array-length v2, v3

    .line 722
    .local v2, "n":I
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 723
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 724
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliases:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 723
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    .line 726
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    return-object v3
.end method

.method public canEncode()Z
    .locals 1

    .prologue
    .line 827
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 931
    check-cast p1, Ljava/nio/charset/Charset;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->compareTo(Ljava/nio/charset/Charset;)I

    move-result v0

    return v0
.end method

.method public final compareTo(Ljava/nio/charset/Charset;)I
    .locals 2
    .param p1, "that"    # Ljava/nio/charset/Charset;

    .prologue
    .line 932
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract contains(Ljava/nio/charset/Charset;)Z
.end method

.method public final decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .locals 3
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 857
    :try_start_0
    invoke-static {p0}, Lsun/nio/cs/ThreadLocalCoders;->decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 858
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 857
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 859
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 857
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public displayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public displayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 767
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 916
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "cb"    # Ljava/nio/CharBuffer;

    .prologue
    .line 893
    :try_start_0
    invoke-static {p0}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 894
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 893
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 895
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 893
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    .line 954
    instance-of v0, p1, Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 955
    const/4 v0, 0x0

    return v0

    .line 956
    :cond_0
    if-ne p0, p1, :cond_1

    .line 957
    const/4 v0, 0x1

    return v0

    .line 958
    :cond_1
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    check-cast p1, Ljava/nio/charset/Charset;

    .end local p1    # "ob":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 941
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isRegistered()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 751
    iget-object v1, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    const-string/jumbo v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    const-string/jumbo v2, "x-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract newDecoder()Ljava/nio/charset/CharsetDecoder;
.end method

.method public abstract newEncoder()Ljava/nio/charset/CharsetEncoder;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 967
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
