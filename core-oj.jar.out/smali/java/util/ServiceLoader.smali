.class public final Ljava/util/ServiceLoader;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ServiceLoader$LazyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TS;>;"
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "META-INF/services/"


# instance fields
.field private loader:Ljava/lang/ClassLoader;

.field private lookupIterator:Ljava/util/ServiceLoader$LazyIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ServiceLoader",
            "<TS;>.",
            "LazyIterator;"
        }
    .end annotation
.end field

.field private providers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "TS;>;"
        }
    .end annotation
.end field

.field private service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/util/ServiceLoader;)Ljava/util/ServiceLoader$LazyIterator;
    .locals 1

    iget-object v0, p0, Ljava/util/ServiceLoader;->lookupIterator:Ljava/util/ServiceLoader$LazyIterator;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/ServiceLoader;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;
    .locals 1
    .param p1, "service"    # Ljava/lang/Class;
    .param p2, "u"    # Ljava/net/URL;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/ServiceLoader;->parse(Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0, p1, p2}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p1, "svc":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    .line 217
    iput-object p1, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    .line 218
    iput-object p2, p0, Ljava/util/ServiceLoader;->loader:Ljava/lang/ClassLoader;

    .line 219
    invoke-virtual {p0}, Ljava/util/ServiceLoader;->reload()V

    .line 216
    return-void
.end method

.method private static fail(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/util/ServiceConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Ljava/util/ServiceConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V
    .locals 2
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "line"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static load(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Ljava/util/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 502
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    return-object v1
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    new-instance v0, Ljava/util/ServiceLoader;

    invoke-direct {v0, p0, p1}, Ljava/util/ServiceLoader;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static loadFromSystemProperty(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)TS;"
        }
    .end annotation

    .prologue
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    const/4 v4, 0x0

    .line 547
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 549
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 550
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 552
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v4

    .line 553
    .end local v1    # "className":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 554
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static loadInstalled(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Ljava/util/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 531
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 532
    :goto_0
    if-eqz v0, :cond_0

    .line 533
    move-object v1, v0

    .line 534
    .local v1, "prev":Ljava/lang/ClassLoader;
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 536
    .end local v1    # "prev":Ljava/lang/ClassLoader;
    :cond_0
    invoke-static {p0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v2

    return-object v2
.end method

.method private parse(Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;
    .locals 10
    .param p1, "service"    # Ljava/lang/Class;
    .param p2, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    const/4 v6, 0x0

    .line 294
    .local v6, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 295
    .local v7, "r":Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 298
    .local v6, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local v7    # "r":Ljava/io/BufferedReader;
    .local v3, "r":Ljava/io/BufferedReader;
    const/4 v4, 0x1

    .local v4, "lc":I
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 300
    :try_start_1
    invoke-direct/range {v0 .. v5}, Ljava/util/ServiceLoader;->parseLine(Ljava/lang/Class;Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/List;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-gez v4, :cond_0

    .line 305
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 306
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 311
    .end local v4    # "lc":I
    .end local v6    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 307
    .restart local v4    # "lc":I
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    .line 308
    .local v9, "y":Ljava/io/IOException;
    const-string/jumbo v0, "Error closing configuration file"

    invoke-static {p1, v0, v9}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 301
    .end local v3    # "r":Ljava/io/BufferedReader;
    .end local v4    # "lc":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v9    # "y":Ljava/io/IOException;
    .restart local v7    # "r":Ljava/io/BufferedReader;
    :catch_1
    move-exception v8

    .local v8, "x":Ljava/io/IOException;
    move-object v3, v7

    .line 302
    .end local v7    # "r":Ljava/io/BufferedReader;
    .restart local v3    # "r":Ljava/io/BufferedReader;
    :goto_1
    :try_start_3
    const-string/jumbo v0, "Error reading configuration file"

    invoke-static {p1, v0, v8}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 305
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 306
    :cond_3
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 307
    :catch_2
    move-exception v9

    .line 308
    .restart local v9    # "y":Ljava/io/IOException;
    const-string/jumbo v0, "Error closing configuration file"

    invoke-static {p1, v0, v9}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 303
    .end local v3    # "r":Ljava/io/BufferedReader;
    .end local v8    # "x":Ljava/io/IOException;
    .end local v9    # "y":Ljava/io/IOException;
    .restart local v7    # "r":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    move-object v3, v7

    .line 305
    .end local v7    # "r":Ljava/io/BufferedReader;
    .restart local v3    # "r":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 306
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 303
    :cond_5
    :goto_3
    throw v0

    .line 307
    :catch_3
    move-exception v9

    .line 308
    .restart local v9    # "y":Ljava/io/IOException;
    const-string/jumbo v1, "Error closing configuration file"

    invoke-static {p1, v1, v9}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 303
    .end local v9    # "y":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 301
    .restart local v4    # "lc":I
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v8

    .restart local v8    # "x":Ljava/io/IOException;
    goto :goto_1
.end method

.method private parseLine(Ljava/lang/Class;Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/List;)I
    .locals 7
    .param p1, "service"    # Ljava/lang/Class;
    .param p2, "u"    # Ljava/net/URL;
    .param p3, "r"    # Ljava/io/BufferedReader;
    .param p4, "lc"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/net/URL;",
            "Ljava/io/BufferedReader;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p5, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 248
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "ln":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 250
    const/4 v5, -0x1

    return v5

    .line 252
    :cond_0
    const/16 v5, 0x23

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 253
    .local v0, "ci":I
    if-ltz v0, :cond_1

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 254
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 256
    .local v4, "n":I
    if-eqz v4, :cond_7

    .line 257
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_2

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_3

    .line 258
    :cond_2
    const-string/jumbo v5, "Illegal configuration-file syntax"

    invoke-static {p1, p2, p4, v5}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 259
    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 260
    .local v1, "cp":I
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal provider-class name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p2, p4, v5}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 262
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 263
    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 264
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v5

    if-nez v5, :cond_5

    const/16 v5, 0x2e

    if-eq v1, v5, :cond_5

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal provider-class name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p2, p4, v5}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 262
    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 267
    :cond_6
    iget-object v5, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {p5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 270
    .end local v1    # "cp":I
    .end local v2    # "i":I
    :cond_7
    :goto_1
    add-int/lit8 v5, p4, 0x1

    return v5

    .line 268
    .restart local v1    # "cp":I
    .restart local v2    # "i":I
    :cond_8
    invoke-interface {p5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    new-instance v0, Ljava/util/ServiceLoader$1;

    invoke-direct {v0, p0}, Ljava/util/ServiceLoader$1;-><init>(Ljava/util/ServiceLoader;)V

    return-object v0
.end method

.method public reload()V
    .locals 4

    .prologue
    .line 212
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    iget-object v0, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 213
    new-instance v0, Ljava/util/ServiceLoader$LazyIterator;

    iget-object v1, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/ServiceLoader;->loader:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/ServiceLoader$LazyIterator;-><init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/util/ServiceLoader$LazyIterator;)V

    iput-object v0, p0, Ljava/util/ServiceLoader;->lookupIterator:Ljava/util/ServiceLoader$LazyIterator;

    .line 211
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 564
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "java.util.ServiceLoader["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
