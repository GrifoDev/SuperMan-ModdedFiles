.class public Ljava/util/jar/JarFile;
.super Ljava/util/zip/ZipFile;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarFile$JarFileEntry;
    }
.end annotation


# static fields
.field public static final MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field static final META_DIR:Ljava/lang/String; = "META-INF/"

.field private static jarNames:[Ljava/lang/String;

.field private static javaHome:Ljava/lang/String;

.field private static lastOcc:[I

.field private static optoSft:[I

.field private static src:[C


# instance fields
.field private computedHasClassPathAttribute:Z

.field private hasClassPathAttribute:Z

.field private jv:Ljava/util/jar/JarVerifier;

.field private jvInitialized:Z

.field private manEntry:Ljava/util/jar/JarEntry;

.field private manRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/jar/Manifest;",
            ">;"
        }
    .end annotation
.end field

.field private verify:Z


# direct methods
.method static synthetic -get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;
    .locals 1

    iget-object v0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/jar/JarFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/jar/JarFile;->maybeInstantiateVerifier()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x9

    const/16 v4, 0xa

    .line 444
    new-array v1, v4, [C

    fill-array-data v1, :array_0

    sput-object v1, Ljava/util/jar/JarFile;->src:[C

    .line 446
    const/16 v1, 0x80

    new-array v1, v1, [I

    sput-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    .line 447
    new-array v1, v4, [I

    sput-object v1, Ljava/util/jar/JarFile;->optoSft:[I

    .line 448
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    const/16 v2, 0x63

    aput v6, v1, v2

    .line 449
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    const/4 v2, 0x2

    const/16 v3, 0x6c

    aput v2, v1, v3

    .line 450
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    const/4 v2, 0x5

    const/16 v3, 0x73

    aput v2, v1, v3

    .line 451
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    const/4 v2, 0x6

    const/16 v3, 0x2d

    aput v2, v1, v3

    .line 452
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    const/4 v2, 0x7

    const/16 v3, 0x70

    aput v2, v1, v3

    .line 453
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    const/16 v2, 0x8

    const/16 v3, 0x61

    aput v2, v1, v3

    .line 454
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    const/16 v2, 0x74

    aput v5, v1, v2

    .line 455
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    const/16 v2, 0x68

    aput v4, v1, v2

    .line 456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 457
    sget-object v1, Ljava/util/jar/JarFile;->optoSft:[I

    aput v4, v1, v0

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_0
    sget-object v1, Ljava/util/jar/JarFile;->optoSft:[I

    aput v6, v1, v5

    .line 64
    return-void

    .line 444
    nop

    :array_0
    .array-data 2
        0x63s
        0x6cs
        0x61s
        0x73s
        0x73s
        0x2ds
        0x70s
        0x61s
        0x74s
        0x68s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 125
    invoke-direct {p0, p1, v0, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZI)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "verify"    # Z
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0, p1, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 162
    iput-boolean p2, p0, Ljava/util/jar/JarFile;->verify:Z

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 98
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 111
    return-void
.end method

.method private declared-synchronized ensureInitialization()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 564
    :try_start_0
    invoke-direct {p0}, Ljava/util/jar/JarFile;->maybeInstantiateVerifier()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :try_start_1
    iget-object v1, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljava/util/jar/JarFile;->jvInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 562
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 569
    :cond_1
    :try_start_3
    invoke-direct {p0}, Ljava/util/jar/JarFile;->initializeVerifier()V

    .line 570
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/jar/JarFile;->jvInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private getBytes(Ljava/util/zip/ZipEntry;)[B
    .locals 7
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 394
    const/4 v0, 0x0

    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 395
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    long-to-int v1, v4

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lsun/misc/IOUtils;->readFully(Ljava/io/InputStream;IZ)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 396
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    .line 395
    :cond_1
    return-object v1

    .line 396
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v2, :cond_4

    throw v2

    :catch_2
    move-exception v3

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_3
    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method private declared-synchronized getManEntry()Ljava/util/jar/JarEntry;
    .locals 5

    .prologue
    monitor-enter p0

    .line 462
    :try_start_0
    iget-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    if-nez v2, :cond_0

    .line 464
    const-string/jumbo v2, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    .line 465
    iget-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    if-nez v2, :cond_0

    .line 468
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getMetaInfEntryNames()[Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "names":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 470
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 471
    const-string/jumbo v2, "META-INF/MANIFEST.MF"

    .line 472
    aget-object v3, v1, v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 471
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    .line 480
    .end local v0    # "i":I
    .end local v1    # "names":[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 470
    .restart local v0    # "i":I
    .restart local v1    # "names":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "names":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized getManifestFromReference()Ljava/util/jar/Manifest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v3, p0, Ljava/util/jar/JarFile;->manRef:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/util/jar/JarFile;->manRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/Manifest;

    .line 180
    :goto_0
    if-nez v1, :cond_1

    .line 182
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManEntry()Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 185
    .local v2, "manEntry":Ljava/util/jar/JarEntry;
    if-eqz v2, :cond_1

    .line 186
    iget-boolean v3, p0, Ljava/util/jar/JarFile;->verify:Z

    if-eqz v3, :cond_3

    .line 187
    invoke-direct {p0, v2}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    move-result-object v0

    .line 188
    .local v0, "b":[B
    new-instance v1, Ljava/util/jar/Manifest;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 189
    .local v1, "man":Ljava/util/jar/Manifest;
    iget-boolean v3, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    if-nez v3, :cond_0

    .line 190
    new-instance v3, Ljava/util/jar/JarVerifier;

    invoke-direct {v3, v0}, Ljava/util/jar/JarVerifier;-><init>([B)V

    iput-object v3, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    .line 195
    .end local v0    # "b":[B
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Ljava/util/jar/JarFile;->manRef:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "man":Ljava/util/jar/Manifest;
    .end local v2    # "manEntry":Ljava/util/jar/JarEntry;
    :cond_1
    monitor-exit p0

    .line 198
    return-object v1

    .line 178
    :cond_2
    const/4 v1, 0x0

    .local v1, "man":Ljava/util/jar/Manifest;
    goto :goto_0

    .line 193
    .end local v1    # "man":Ljava/util/jar/Manifest;
    .restart local v2    # "manEntry":Ljava/util/jar/JarEntry;
    :cond_3
    :try_start_1
    new-instance v1, Ljava/util/jar/Manifest;

    invoke-super {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, "man":Ljava/util/jar/Manifest;
    goto :goto_1

    .end local v1    # "man":Ljava/util/jar/Manifest;
    .end local v2    # "manEntry":Ljava/util/jar/JarEntry;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private native getMetaInfEntryNames()[Ljava/lang/String;
.end method

.method private initializeVerifier()V
    .locals 18

    .prologue
    .line 333
    const/4 v6, 0x0

    .line 337
    .local v6, "mev":Lsun/security/util/ManifestEntryVerifier;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Ljava/util/jar/JarFile;->getMetaInfEntryNames()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    .line 338
    .local v17, "names":[Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 339
    const/4 v15, 0x0

    .local v15, "i":I
    move-object/from16 v16, v6

    .end local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .local v16, "mev":Lsun/security/util/ManifestEntryVerifier;
    :goto_0
    :try_start_1
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v15, v1, :cond_8

    .line 340
    aget-object v1, v17, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v13

    .line 341
    .local v13, "e":Ljava/util/jar/JarEntry;
    if-nez v13, :cond_4

    .line 342
    new-instance v1, Ljava/util/jar/JarException;

    const-string/jumbo v2, "corrupted jar file"

    invoke-direct {v1, v2}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 358
    .end local v13    # "e":Ljava/util/jar/JarEntry;
    :catch_0
    move-exception v14

    .local v14, "ex":Ljava/io/IOException;
    move-object/from16 v6, v16

    .line 361
    .end local v15    # "i":I
    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .end local v17    # "names":[Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    .line 362
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljava/util/jar/JarFile;->verify:Z

    .line 363
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_0

    .line 364
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "jarfile parsing error!"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    .line 372
    .end local v14    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v1, :cond_3

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1}, Ljava/util/jar/JarVerifier;->doneWithMeta()V

    .line 375
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1

    .line 376
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "done with meta!"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 379
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1}, Ljava/util/jar/JarVerifier;->nothingToVerify()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 380
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_2

    .line 381
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "nothing to verify!"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 383
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    .line 384
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljava/util/jar/JarFile;->verify:Z

    .line 332
    :cond_3
    return-void

    .line 344
    .restart local v13    # "e":Ljava/util/jar/JarEntry;
    .restart local v15    # "i":I
    .restart local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v17    # "names":[Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_7

    .line 345
    if-nez v16, :cond_6

    .line 346
    new-instance v6, Lsun/security/util/ManifestEntryVerifier;

    .line 347
    invoke-direct/range {p0 .. p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    move-result-object v1

    .line 346
    invoke-direct {v6, v1}, Lsun/security/util/ManifestEntryVerifier;-><init>(Ljava/util/jar/Manifest;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 349
    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .local v6, "mev":Lsun/security/util/ManifestEntryVerifier;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    move-result-object v3

    .line 350
    .local v3, "b":[B
    if-eqz v3, :cond_5

    array-length v1, v3

    if-lez v1, :cond_5

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1, v13, v6}, Ljava/util/jar/JarVerifier;->beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    array-length v2, v3

    array-length v5, v3

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 339
    .end local v3    # "b":[B
    :cond_5
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v16, v6

    .end local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    goto/16 :goto_0

    .line 358
    .end local v13    # "e":Ljava/util/jar/JarEntry;
    .end local v15    # "i":I
    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .end local v17    # "names":[Ljava/lang/String;
    :catch_1
    move-exception v14

    .restart local v14    # "ex":Ljava/io/IOException;
    goto/16 :goto_1

    .end local v14    # "ex":Ljava/io/IOException;
    .restart local v13    # "e":Ljava/util/jar/JarEntry;
    .restart local v15    # "i":I
    .restart local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v17    # "names":[Ljava/lang/String;
    :cond_6
    move-object/from16 v6, v16

    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    goto :goto_3

    .end local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    :cond_7
    move-object/from16 v6, v16

    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    goto :goto_4

    .end local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .end local v13    # "e":Ljava/util/jar/JarEntry;
    .restart local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    :cond_8
    move-object/from16 v6, v16

    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    goto/16 :goto_2
.end method

.method private isKnownToNotHaveClassPathAttribute()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 528
    sget-object v6, Ljava/util/jar/JarFile;->javaHome:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 530
    new-instance v6, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v7, "java.home"

    invoke-direct {v6, v7}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sput-object v6, Ljava/util/jar/JarFile;->javaHome:Ljava/lang/String;

    .line 532
    :cond_0
    sget-object v6, Ljava/util/jar/JarFile;->jarNames:[Ljava/lang/String;

    if-nez v6, :cond_1

    .line 533
    const/16 v6, 0xa

    new-array v5, v6, [Ljava/lang/String;

    .line 534
    .local v5, "names":[Ljava/lang/String;
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 536
    .local v0, "fileSep":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "rt.jar"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 537
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "sunrsasign.jar"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 538
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "jsse.jar"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 539
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "jce.jar"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 540
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "charsets.jar"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 541
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "dnsns.jar"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 542
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ldapsec.jar"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 543
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "localedata.jar"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 544
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "sunjce_provider.jar"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 545
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "sunpkcs11.jar"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 546
    sput-object v5, Ljava/util/jar/JarFile;->jarNames:[Ljava/lang/String;

    .line 549
    .end local v0    # "fileSep":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "names":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, "name":Ljava/lang/String;
    sget-object v3, Ljava/util/jar/JarFile;->javaHome:Ljava/lang/String;

    .line 551
    .local v3, "localJavaHome":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 552
    sget-object v5, Ljava/util/jar/JarFile;->jarNames:[Ljava/lang/String;

    .line 553
    .restart local v5    # "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_3

    .line 554
    aget-object v6, v5, v1

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 555
    const/4 v6, 0x1

    return v6

    .line 553
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 559
    .end local v1    # "i":I
    .end local v5    # "names":[Ljava/lang/String;
    :cond_3
    return v8
.end method

.method private maybeInstantiateVerifier()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v3, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v3, :cond_0

    .line 301
    return-void

    .line 304
    :cond_0
    iget-boolean v3, p0, Ljava/util/jar/JarFile;->verify:Z

    if-eqz v3, :cond_4

    .line 305
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getMetaInfEntryNames()[Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "names":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 308
    aget-object v3, v2, v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v3, ".DSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 310
    const-string/jumbo v3, ".RSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 309
    if-nez v3, :cond_1

    .line 311
    const-string/jumbo v3, ".EC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 309
    if-nez v3, :cond_1

    .line 312
    const-string/jumbo v3, ".SF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 309
    if-eqz v3, :cond_2

    .line 316
    :cond_1
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    .line 317
    return-void

    .line 307
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/util/jar/JarFile;->verify:Z

    .line 299
    .end local v2    # "names":[Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private unsignedEntryNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 580
    .local v0, "entries":Ljava/util/Enumeration;
    new-instance v1, Ljava/util/jar/JarFile$2;

    invoke-direct {v1, p0, v0}, Ljava/util/jar/JarFile$2;-><init>(Ljava/util/jar/JarFile;Ljava/util/Enumeration;)V

    return-object v1
.end method


# virtual methods
.method public entries()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    invoke-super {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 246
    .local v0, "enum_":Ljava/util/Enumeration;
    new-instance v1, Ljava/util/jar/JarFile$1;

    invoke-direct {v1, p0, v0}, Ljava/util/jar/JarFile$1;-><init>(Ljava/util/jar/JarFile;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 235
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_0

    .line 236
    new-instance v1, Ljava/util/jar/JarFile$JarFileEntry;

    invoke-direct {v1, p0, v0}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V

    return-object v1

    .line 238
    :cond_0
    return-object v1
.end method

.method public declared-synchronized getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 6
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 415
    :try_start_0
    invoke-direct {p0}, Ljava/util/jar/JarFile;->maybeInstantiateVerifier()V

    .line 416
    iget-object v1, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-nez v1, :cond_0

    .line 417
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 419
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    if-nez v1, :cond_1

    .line 420
    invoke-direct {p0}, Ljava/util/jar/JarFile;->initializeVerifier()V

    .line 421
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    .line 425
    iget-object v1, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-nez v1, :cond_1

    .line 426
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 430
    :cond_1
    :try_start_2
    new-instance v2, Ljava/util/jar/JarVerifier$VerifierStream;

    .line 431
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    move-result-object v3

    .line 432
    instance-of v1, p1, Ljava/util/jar/JarFile$JarFileEntry;

    if-eqz v1, :cond_2

    .line 433
    move-object v0, p1

    check-cast v0, Ljava/util/jar/JarEntry;

    move-object v1, v0

    .line 434
    :goto_0
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 435
    iget-object v5, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    .line 430
    invoke-direct {v2, v3, v1, v4, v5}, Ljava/util/jar/JarVerifier$VerifierStream;-><init>(Ljava/util/jar/Manifest;Ljava/util/jar/JarEntry;Ljava/io/InputStream;Ljava/util/jar/JarVerifier;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 433
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    move-result-object v0

    return-object v0
.end method

.method public hasClassPathAttribute()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 491
    iget-boolean v6, p0, Ljava/util/jar/JarFile;->computedHasClassPathAttribute:Z

    if-eqz v6, :cond_0

    .line 492
    iget-boolean v6, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    return v6

    .line 495
    :cond_0
    iput-boolean v7, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    .line 496
    invoke-direct {p0}, Ljava/util/jar/JarFile;->isKnownToNotHaveClassPathAttribute()Z

    move-result v6

    if-nez v6, :cond_4

    .line 497
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManEntry()Ljava/util/jar/JarEntry;

    move-result-object v5

    .line 498
    .local v5, "manEntry":Ljava/util/jar/JarEntry;
    if-eqz v5, :cond_4

    .line 499
    invoke-direct {p0, v5}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    move-result-object v0

    .line 500
    .local v0, "b":[B
    array-length v6, v0

    sget-object v7, Ljava/util/jar/JarFile;->src:[C

    array-length v7, v7

    sub-int v4, v6, v7

    .line 501
    .local v4, "last":I
    const/4 v2, 0x0

    .line 503
    .local v2, "i":I
    :goto_0
    if-gt v2, v4, :cond_4

    .line 504
    const/16 v3, 0x9

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_3

    .line 505
    add-int v6, v2, v3

    aget-byte v6, v0, v6

    int-to-char v1, v6

    .line 506
    .local v1, "c":C
    add-int/lit8 v6, v1, -0x41

    rsub-int/lit8 v7, v1, 0x5a

    or-int/2addr v6, v7

    if-ltz v6, :cond_1

    add-int/lit8 v6, v1, 0x20

    int-to-char v1, v6

    .line 507
    :cond_1
    sget-object v6, Ljava/util/jar/JarFile;->src:[C

    aget-char v6, v6, v3

    if-eq v1, v6, :cond_2

    .line 508
    add-int/lit8 v6, v3, 0x1

    sget-object v7, Ljava/util/jar/JarFile;->lastOcc:[I

    and-int/lit8 v8, v1, 0x7f

    aget v7, v7, v8

    sub-int/2addr v6, v7

    sget-object v7, Ljava/util/jar/JarFile;->optoSft:[I

    aget v7, v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v2, v6

    .line 509
    goto :goto_0

    .line 504
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 512
    .end local v1    # "c":C
    :cond_3
    iput-boolean v9, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    .line 517
    .end local v0    # "b":[B
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "last":I
    .end local v5    # "manEntry":Ljava/util/jar/JarEntry;
    :cond_4
    iput-boolean v9, p0, Ljava/util/jar/JarFile;->computedHasClassPathAttribute:Z

    .line 518
    iget-boolean v6, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    return v6
.end method

.method newEntry(Ljava/util/zip/ZipEntry;)Ljava/util/jar/JarEntry;
    .locals 1
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 575
    new-instance v0, Ljava/util/jar/JarFile$JarFileEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V

    return-object v0
.end method
