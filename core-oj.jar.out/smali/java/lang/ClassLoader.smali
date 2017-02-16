.class public abstract Ljava/lang/ClassLoader;
.super Ljava/lang/Object;
.source "ClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ClassLoader$SystemClassLoader;
    }
.end annotation


# instance fields
.field private transient allocator:J

.field private transient classTable:J

.field private final packages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Package;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Ljava/lang/ClassLoader;

.field public final proxyCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0()Ljava/lang/ClassLoader;
    .locals 1

    invoke-static {}, Ljava/lang/ClassLoader;->createSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 290
    invoke-static {}, Ljava/lang/ClassLoader;->checkCreateClassLoader()Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/Void;Ljava/lang/ClassLoader;)V

    .line 289
    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 271
    invoke-static {}, Ljava/lang/ClassLoader;->checkCreateClassLoader()Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/Void;Ljava/lang/ClassLoader;)V

    .line 270
    return-void
.end method

.method private constructor <init>(Ljava/lang/Void;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "unused"    # Ljava/lang/Void;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    iput-object v0, p0, Ljava/lang/ClassLoader;->proxyCache:Ljava/util/Map;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    .line 248
    iput-object p2, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    .line 247
    return-void
.end method

.method private static checkCreateClassLoader()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 4

    .prologue
    .line 207
    const-string/jumbo v2, "java.class.path"

    const-string/jumbo v3, "."

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "classPath":Ljava/lang/String;
    const-string/jumbo v2, "java.library.path"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "librarySearchPath":Ljava/lang/String;
    new-instance v2, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v2
.end method

.method private findBootstrapClassOrNull(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 719
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getBootstrapResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 948
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getBootstrapResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 957
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 1097
    sget-object v0, Ljava/lang/ClassLoader$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getSystemResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 907
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 908
    .local v0, "system":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 909
    invoke-static {p0}, Ljava/lang/ClassLoader;->getBootstrapResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1

    .line 911
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method public static getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 999
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 1001
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    return-object v2

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public static getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 937
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 938
    .local v0, "system":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 939
    invoke-static {p0}, Ljava/lang/ClassLoader;->getBootstrapResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1

    .line 941
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method protected static registerAsParallelCapable()Z
    .locals 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 890
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public clearAssertionStatus()V
    .locals 0

    .prologue
    .line 1318
    return-void
.end method

.method protected final defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/nio/ByteBuffer;
    .param p3, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .prologue
    .line 663
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "can\'t load this type of class file"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .prologue
    .line 520
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "can\'t load this type of class file"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .prologue
    .line 594
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "can\'t load this type of class file"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final defineClass([BII)Ljava/lang/Class;
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "can\'t load this type of class file"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "specTitle"    # Ljava/lang/String;
    .param p3, "specVersion"    # Ljava/lang/String;
    .param p4, "specVendor"    # Ljava/lang/String;
    .param p5, "implTitle"    # Ljava/lang/String;
    .param p6, "implVersion"    # Ljava/lang/String;
    .param p7, "implVendor"    # Ljava/lang/String;
    .param p8, "sealBase"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1149
    iget-object v10, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    monitor-enter v10

    .line 1150
    :try_start_0
    iget-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Package;

    .line 1151
    .local v0, "pkg":Ljava/lang/Package;
    if-eqz v0, :cond_0

    .line 1152
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    .end local v0    # "pkg":Ljava/lang/Package;
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .line 1154
    .restart local v0    # "pkg":Ljava/lang/Package;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Package;

    .end local v0    # "pkg":Ljava/lang/Package;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .line 1157
    .restart local v0    # "pkg":Ljava/lang/Package;
    iget-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    .line 1158
    return-object v0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "libname"    # Ljava/lang/String;

    .prologue
    .line 1221
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 738
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 739
    const/4 v0, 0x0

    .line 742
    :goto_0
    invoke-static {v0, p1}, Ljava/lang/VMClassLoader;->findLoadedClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 741
    :cond_0
    move-object v0, p0

    .local v0, "loader":Ljava/lang/ClassLoader;
    goto :goto_0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 849
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    invoke-static {}, Ljava/util/Collections;->emptyEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected final findSystemClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 710
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1176
    iget-object v2, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1177
    :try_start_0
    iget-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "pkg":Ljava/lang/Package;
    monitor-exit v2

    .line 1179
    return-object v0

    .line 1176
    .end local v0    # "pkg":Ljava/lang/Package;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected getPackages()[Ljava/lang/Package;
    .locals 3

    .prologue
    .line 1193
    iget-object v2, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1194
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Package;>;"
    monitor-exit v2

    .line 1197
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Package;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Package;

    return-object v1

    .line 1193
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Package;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getParent()Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 1037
    iget-object v0, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 787
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_1

    .line 788
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 792
    .local v0, "url":Ljava/net/URL;
    :goto_0
    if-nez v0, :cond_0

    .line 793
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 795
    :cond_0
    return-object v0

    .line 790
    .end local v0    # "url":Ljava/net/URL;
    :cond_1
    invoke-static {p1}, Ljava/lang/ClassLoader;->getBootstrapResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .restart local v0    # "url":Ljava/net/URL;
    goto :goto_0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 977
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 979
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    return-object v2

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 825
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/util/Enumeration;

    .line 826
    .local v0, "tmp":[Ljava/util/Enumeration;
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    .line 827
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    aput-object v1, v0, v2

    .line 831
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 833
    new-instance v1, Lsun/misc/CompoundEnumeration;

    invoke-direct {v1, v0}, Lsun/misc/CompoundEnumeration;-><init>([Ljava/util/Enumeration;)V

    return-object v1

    .line 829
    :cond_0
    invoke-static {p1}, Ljava/lang/ClassLoader;->getBootstrapResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 363
    .local v0, "c":Ljava/lang/Class;
    if-nez v0, :cond_0

    .line 364
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 366
    .local v2, "t0":J
    :try_start_0
    iget-object v6, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    if-eqz v6, :cond_1

    .line 367
    iget-object v6, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 376
    :goto_0
    if-nez v0, :cond_0

    .line 379
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 380
    .local v4, "t1":J
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 385
    .end local v2    # "t0":J
    .end local v4    # "t1":J
    :cond_0
    return-object v0

    .line 369
    .restart local v2    # "t0":J
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;->findBootstrapClassOrNull(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method

.method protected final resolveClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 682
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public setClassAssertionStatus(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1305
    return-void
.end method

.method public setDefaultAssertionStatus(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1239
    return-void
.end method

.method public setPackageAssertionStatus(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1280
    return-void
.end method

.method protected final setSigners(Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "signers"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 757
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method
