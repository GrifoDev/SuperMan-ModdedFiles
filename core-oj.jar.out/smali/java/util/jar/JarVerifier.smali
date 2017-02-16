.class Ljava/util/jar/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarVerifier$1;,
        Ljava/util/jar/JarVerifier$VerifierCodeSource;,
        Ljava/util/jar/JarVerifier$VerifierStream;
    }
.end annotation


# static fields
.field static final debug:Lsun/security/util/Debug;


# instance fields
.field private anyToVerify:Z

.field private baos:Ljava/io/ByteArrayOutputStream;

.field private csdomain:Ljava/lang/Object;

.field eagerValidation:Z

.field private emptyEnumeration:Ljava/util/Enumeration;

.field private emptySigner:[Ljava/security/CodeSigner;

.field private jarCodeSigners:Ljava/util/List;

.field private lastURL:Ljava/net/URL;

.field private lastURLMap:Ljava/util/Map;

.field private volatile manDig:Lsun/security/util/ManifestDigester;

.field private manifestDigests:Ljava/util/List;

.field manifestRawBytes:[B

.field private parsingBlockOrSF:Z

.field private parsingMeta:Z

.field private pendingBlocks:Ljava/util/ArrayList;

.field private sigFileData:Ljava/util/Hashtable;

.field private sigFileSigners:Ljava/util/Hashtable;

.field private signerCache:Ljava/util/ArrayList;

.field private signerMap:Ljava/util/Map;

.field private signerToCodeSource:Ljava/util/Map;

.field private urlToCodeSourceMap:Ljava/util/Map;

.field private verifiedSigners:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "jar"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    .line 45
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "rawBytes"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v1, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    .line 72
    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    .line 75
    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    .line 519
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signerToCodeSource:Ljava/util/Map;

    .line 560
    new-array v0, v1, [Ljava/security/CodeSigner;

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->emptySigner:[Ljava/security/CodeSigner;

    .line 789
    new-instance v0, Ljava/util/jar/JarVerifier$1;

    invoke-direct {v0, p0}, Ljava/util/jar/JarVerifier$1;-><init>(Ljava/util/jar/JarVerifier;)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->emptyEnumeration:Ljava/util/Enumeration;

    .line 97
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    .line 98
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    .line 99
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    .line 100
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    .line 96
    return-void
.end method

.method private findMatchingSigners(Ljava/security/CodeSource;)[Ljava/security/CodeSigner;
    .locals 10
    .param p1, "cs"    # Ljava/security/CodeSource;

    .prologue
    const/4 v9, 0x0

    .line 566
    instance-of v6, p1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    if-eqz v6, :cond_0

    move-object v5, p1

    .line 567
    check-cast v5, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    .line 568
    .local v5, "vcs":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    iget-object v6, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->isSameDomain(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 569
    check-cast p1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    .end local p1    # "cs":Ljava/security/CodeSource;
    invoke-static {p1}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->-wrap0(Ljava/util/jar/JarVerifier$VerifierCodeSource;)[Ljava/security/CodeSigner;

    move-result-object v6

    return-object v6

    .line 577
    .end local v5    # "vcs":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    .restart local p1    # "cs":Ljava/security/CodeSource;
    :cond_0
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v6

    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->getJarCodeSigners()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;

    move-result-object v4

    .line 578
    .local v4, "sources":[Ljava/security/CodeSource;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v3, "sourceList":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_1

    .line 580
    aget-object v6, v4, v0

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_1
    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 583
    .local v1, "j":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_3

    .line 585
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    invoke-static {v6}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->-wrap0(Ljava/util/jar/JarVerifier$VerifierCodeSource;)[Ljava/security/CodeSigner;

    move-result-object v2

    .line 586
    .local v2, "match":[Ljava/security/CodeSigner;
    if-nez v2, :cond_2

    .line 587
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->emptySigner:[Ljava/security/CodeSigner;

    .line 589
    :cond_2
    return-object v2

    .line 591
    .end local v2    # "match":[Ljava/security/CodeSigner;
    :cond_3
    return-object v9
.end method

.method private declared-synchronized getJarCodeSigners()Ljava/util/List;
    .locals 2

    .prologue
    monitor-enter p0

    .line 865
    :try_start_0
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 866
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 867
    .local v0, "set":Ljava/util/HashSet;
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 868
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    .line 869
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 871
    .end local v0    # "set":Ljava/util/HashSet;
    :cond_0
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static getUnsignedCS(Ljava/net/URL;)Ljava/security/CodeSource;
    .locals 3
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    const/4 v1, 0x0

    .line 902
    new-instance v2, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    move-object v0, v1

    check-cast v0, [Ljava/security/cert/Certificate;

    invoke-direct {v2, v1, p0, v0}, Ljava/util/jar/JarVerifier$VerifierCodeSource;-><init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    return-object v2
.end method

.method static isSigningRelated(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 802
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 803
    const-string/jumbo v0, "META-INF/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    return v2

    .line 806
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 807
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 808
    return v2

    .line 810
    :cond_1
    const-string/jumbo v0, ".DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 811
    const-string/jumbo v0, ".RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 810
    if-nez v0, :cond_2

    .line 812
    const-string/jumbo v0, ".SF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 810
    if-nez v0, :cond_2

    .line 813
    const-string/jumbo v0, ".EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 810
    if-nez v0, :cond_2

    .line 814
    const-string/jumbo v0, "SIG-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 810
    if-nez v0, :cond_2

    .line 815
    const-string/jumbo v0, "MANIFEST.MF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 810
    if-eqz v0, :cond_3

    .line 816
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 818
    :cond_3
    return v2
.end method

.method private static mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;
    .locals 3
    .param p0, "signers"    # [Ljava/security/CodeSigner;

    .prologue
    const/4 v2, 0x0

    .line 380
    if-eqz p0, :cond_1

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v0, "certChains":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 384
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/security/CodeSigner;->getSignerCertPath()Ljava/security/cert/CertPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 383
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    .line 389
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;

    .line 388
    return-object v2

    .line 392
    .end local v0    # "certChains":Ljava/util/ArrayList;
    .end local v1    # "i":I
    :cond_1
    return-object v2
.end method

.method private declared-synchronized mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "signers"    # [Ljava/security/CodeSigner;

    .prologue
    monitor-enter p0

    .line 530
    :try_start_0
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->lastURL:Ljava/net/URL;

    if-ne p1, v2, :cond_1

    .line 531
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->lastURLMap:Ljava/util/Map;

    .line 541
    .local v1, "map":Ljava/util/Map;
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/CodeSource;

    .line 542
    .local v0, "cs":Ljava/security/CodeSource;
    if-nez v0, :cond_0

    .line 543
    new-instance v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    .end local v0    # "cs":Ljava/security/CodeSource;
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    invoke-direct {v0, v2, p1, p2}, Ljava/util/jar/JarVerifier$VerifierCodeSource;-><init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/CodeSigner;)V

    .line 544
    .restart local v0    # "cs":Ljava/security/CodeSource;
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->signerToCodeSource:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 546
    return-object v0

    .line 533
    .end local v0    # "cs":Ljava/security/CodeSource;
    .end local v1    # "map":Ljava/util/Map;
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 534
    .restart local v1    # "map":Ljava/util/Map;
    if-nez v1, :cond_2

    .line 535
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 536
    .restart local v1    # "map":Ljava/util/Map;
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :cond_2
    iput-object v1, p0, Ljava/util/jar/JarVerifier;->lastURLMap:Ljava/util/Map;

    .line 539
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->lastURL:Ljava/net/URL;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "map":Ljava/util/Map;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "signers"    # Ljava/util/List;
    .param p3, "unsigned"    # Z

    .prologue
    .line 550
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v1, "sources":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 553
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/CodeSigner;

    invoke-direct {p0, p1, v2}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_0
    if-eqz p3, :cond_1

    .line 556
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/CodeSource;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/CodeSource;

    return-object v2
.end method

.method private processEntry(Lsun/security/util/ManifestEntryVerifier;)V
    .locals 13
    .param p1, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    iget-boolean v10, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    if-nez v10, :cond_1

    .line 228
    invoke-virtual {p1}, Lsun/security/util/ManifestEntryVerifier;->getEntry()Ljava/util/jar/JarEntry;

    move-result-object v4

    .line 229
    .local v4, "je":Ljava/util/jar/JarEntry;
    if-eqz v4, :cond_0

    iget-object v10, v4, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v10, :cond_0

    .line 230
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    iget-object v11, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {p1, v10, v11}, Lsun/security/util/ManifestEntryVerifier;->verify(Ljava/util/Hashtable;Ljava/util/Hashtable;)[Ljava/security/CodeSigner;

    move-result-object v10

    iput-object v10, v4, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    .line 231
    iget-object v10, v4, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    invoke-static {v10}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    move-result-object v10

    iput-object v10, v4, Ljava/util/jar/JarEntry;->certs:[Ljava/security/cert/Certificate;

    .line 225
    .end local v4    # "je":Ljava/util/jar/JarEntry;
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const/4 v10, 0x0

    :try_start_0
    iput-boolean v10, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    .line 238
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_2

    .line 239
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v11, "processEntry: processing block"

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 242
    :cond_2
    invoke-virtual {p1}, Lsun/security/util/ManifestEntryVerifier;->getEntry()Ljava/util/jar/JarEntry;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 243
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 242
    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, "uname":Ljava/lang/String;
    const-string/jumbo v10, ".SF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 246
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x3

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "key":Ljava/lang/String;
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 249
    .local v0, "bytes":[B
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    invoke-virtual {v10, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 253
    .local v3, "it":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 255
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/util/SignatureFileVerifier;

    .line 256
    .local v8, "sfv":Lsun/security/util/SignatureFileVerifier;
    invoke-virtual {v8, v5}, Lsun/security/util/SignatureFileVerifier;->needSignatureFile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 257
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_4

    .line 258
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    .line 259
    const-string/jumbo v11, "processEntry: processing pending block"

    .line 258
    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 262
    :cond_4
    invoke-virtual {v8, v0}, Lsun/security/util/SignatureFileVerifier;->setSignatureFile([B)V

    .line 263
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    invoke-virtual {v8, v10, v11}, Lsun/security/util/SignatureFileVerifier;->process(Ljava/util/Hashtable;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 308
    .end local v0    # "bytes":[B
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "sfv":Lsun/security/util/SignatureFileVerifier;
    .end local v9    # "uname":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 310
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_0

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processEntry caught: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "bytes":[B
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v9    # "uname":Ljava/lang/String;
    :cond_5
    return-void

    .line 271
    .end local v0    # "bytes":[B
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 273
    .restart local v5    # "key":Ljava/lang/String;
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    if-nez v10, :cond_7

    .line 274
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    .line 276
    :cond_7
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    if-nez v10, :cond_9

    .line 277
    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    monitor-enter v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 278
    :try_start_2
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    if-nez v10, :cond_8

    .line 279
    new-instance v10, Lsun/security/util/ManifestDigester;

    iget-object v12, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    invoke-direct {v10, v12}, Lsun/security/util/ManifestDigester;-><init>([B)V

    iput-object v10, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    .line 280
    const/4 v10, 0x0

    iput-object v10, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :try_start_3
    monitor-exit v11

    .line 286
    :cond_9
    new-instance v8, Lsun/security/util/SignatureFileVerifier;

    iget-object v10, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    .line 287
    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    iget-object v12, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 286
    invoke-direct {v8, v10, v11, v9, v12}, Lsun/security/util/SignatureFileVerifier;-><init>(Ljava/util/ArrayList;Lsun/security/util/ManifestDigester;Ljava/lang/String;[B)V

    .line 289
    .restart local v8    # "sfv":Lsun/security/util/SignatureFileVerifier;
    invoke-virtual {v8}, Lsun/security/util/SignatureFileVerifier;->needSignatureFileBytes()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 291
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    invoke-virtual {v10, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 293
    .restart local v0    # "bytes":[B
    if-nez v0, :cond_b

    .line 297
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_a

    .line 298
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v11, "adding pending block"

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 300
    :cond_a
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    return-void

    .line 277
    .end local v0    # "bytes":[B
    .end local v8    # "sfv":Lsun/security/util/SignatureFileVerifier;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 312
    .end local v5    # "key":Ljava/lang/String;
    .end local v9    # "uname":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 313
    .local v7, "se":Ljava/security/SignatureException;
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_0

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processEntry caught: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    .end local v7    # "se":Ljava/security/SignatureException;
    .restart local v0    # "bytes":[B
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v8    # "sfv":Lsun/security/util/SignatureFileVerifier;
    .restart local v9    # "uname":Ljava/lang/String;
    :cond_b
    :try_start_4
    invoke-virtual {v8, v0}, Lsun/security/util/SignatureFileVerifier;->setSignatureFile([B)V

    .line 306
    .end local v0    # "bytes":[B
    :cond_c
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    invoke-virtual {v8, v10, v11}, Lsun/security/util/SignatureFileVerifier;->process(Ljava/util/Hashtable;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 315
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "sfv":Lsun/security/util/SignatureFileVerifier;
    .end local v9    # "uname":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 316
    .local v6, "nsae":Ljava/security/NoSuchAlgorithmException;
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_0

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processEntry caught: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 318
    .end local v6    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v1

    .line 319
    .local v1, "ce":Ljava/security/cert/CertificateException;
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_0

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processEntry caught: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private declared-synchronized signerMap()Ljava/util/Map;
    .locals 3

    .prologue
    monitor-enter p0

    .line 669
    :try_start_0
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 675
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    .line 676
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 677
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 679
    :cond_0
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v1

    .line 823
    .local v1, "map":Ljava/util/Map;
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 824
    .local v0, "entries":Ljava/util/Enumeration;
    new-instance v2, Ljava/util/jar/JarVerifier$4;

    invoke-direct {v2, p0, v0, v1}, Ljava/util/jar/JarVerifier$4;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/Map;)V

    return-object v2
.end method


# virtual methods
.method public beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V
    .locals 7
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    if-nez p1, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    sget-object v2, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_1

    .line 118
    sget-object v2, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "beginEntry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 121
    :cond_1
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "name":Ljava/lang/String;
    iget-boolean v2, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    if-eqz v2, :cond_5

    .line 134
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "uname":Ljava/lang/String;
    const-string/jumbo v2, "META-INF/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 136
    const-string/jumbo v2, "/META-INF/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 135
    if-eqz v2, :cond_5

    .line 138
    :cond_2
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 140
    return-void

    .line 143
    :cond_3
    invoke-static {v1}, Lsun/security/util/SignatureFileVerifier;->isBlockOrSF(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 145
    iput-boolean v6, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    .line 146
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 147
    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 149
    :cond_4
    return-void

    .line 153
    .end local v1    # "uname":Ljava/lang/String;
    :cond_5
    iget-boolean v2, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    if-eqz v2, :cond_6

    .line 154
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier;->doneWithMeta()V

    .line 157
    :cond_6
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 158
    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 159
    return-void

    .line 164
    :cond_7
    const-string/jumbo v2, "./"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 165
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_8
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 170
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_9
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 174
    invoke-virtual {p2, v0, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 175
    return-void

    .line 179
    :cond_a
    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 181
    return-void
.end method

.method doneWithMeta()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 413
    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    .line 414
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    .line 415
    iput-object v2, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    .line 416
    iput-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    .line 417
    iput-object v2, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    .line 418
    iput-object v2, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    .line 419
    iput-object v2, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    .line 422
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    .line 424
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    const-string/jumbo v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 423
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_0
    return-void

    .line 414
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public entries2(Ljava/util/jar/JarFile;Ljava/util/Enumeration;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "e"    # Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/Enumeration;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 746
    .local v1, "map":Ljava/util/Map;
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 747
    move-object v0, p2

    .line 748
    .local v0, "enum_":Ljava/util/Enumeration;
    new-instance v2, Ljava/util/jar/JarVerifier$3;

    invoke-direct {v2, p0, p2, p1, v1}, Ljava/util/jar/JarVerifier$3;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/jar/JarFile;Ljava/util/Map;)V

    return-object v2
.end method

.method public declared-synchronized entryNames(Ljava/util/jar/JarFile;[Ljava/security/CodeSource;)Ljava/util/Enumeration;
    .locals 9
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "cs"    # [Ljava/security/CodeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "[",
            "Ljava/security/CodeSource;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 683
    :try_start_0
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v3

    .line 684
    .local v3, "map":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 685
    .local v2, "itor":Ljava/util/Iterator;
    const/4 v5, 0x0

    .line 691
    .local v5, "matchUnsigned":Z
    new-instance v6, Ljava/util/ArrayList;

    array-length v8, p2

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 692
    .local v6, "req":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, p2

    if-ge v1, v8, :cond_2

    .line 693
    aget-object v8, p2, v1

    invoke-direct {p0, v8}, Ljava/util/jar/JarVerifier;->findMatchingSigners(Ljava/security/CodeSource;)[Ljava/security/CodeSigner;

    move-result-object v4

    .line 694
    .local v4, "match":[Ljava/security/CodeSigner;
    if-eqz v4, :cond_0

    .line 695
    array-length v8, v4

    if-lez v8, :cond_1

    .line 696
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .line 703
    .end local v4    # "match":[Ljava/security/CodeSigner;
    :cond_2
    move-object v7, v6

    .line 704
    .local v7, "signersReq":Ljava/util/List;
    if-eqz v5, :cond_3

    invoke-direct {p0, p1}, Ljava/util/jar/JarVerifier;->unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;

    move-result-object v0

    .line 706
    .local v0, "enum2":Ljava/util/Enumeration;
    :goto_2
    new-instance v8, Ljava/util/jar/JarVerifier$2;

    invoke-direct {v8, p0, v2, v6, v0}, Ljava/util/jar/JarVerifier$2;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Iterator;Ljava/util/List;Ljava/util/Enumeration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v8

    .line 704
    .end local v0    # "enum2":Ljava/util/Enumeration;
    :cond_3
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->emptyEnumeration:Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "enum2":Ljava/util/Enumeration;
    goto :goto_2

    .end local v0    # "enum2":Ljava/util/Enumeration;
    .end local v1    # "i":I
    .end local v2    # "itor":Ljava/util/Iterator;
    .end local v3    # "map":Ljava/util/Map;
    .end local v5    # "matchUnsigned":Z
    .end local v6    # "req":Ljava/util/List;
    .end local v7    # "signersReq":Ljava/util/List;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public getCerts(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;

    move-result-object v0

    invoke-static {v0}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCerts(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "entry"    # Ljava/util/jar/JarEntry;

    .prologue
    .line 338
    invoke-virtual {p0, p1, p2}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    move-result-object v0

    invoke-static {v0}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    return-object v0
.end method

.method public getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;
    .locals 7
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "entry"    # Ljava/util/jar/JarEntry;

    .prologue
    .line 353
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "name":Ljava/lang/String;
    iget-boolean v5, p0, Ljava/util/jar/JarVerifier;->eagerValidation:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 360
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 361
    .local v4, "s":Ljava/io/InputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 362
    .local v0, "buffer":[B
    array-length v2, v0

    .line 363
    .local v2, "n":I
    :goto_0
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 364
    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v0    # "buffer":[B
    .end local v2    # "n":I
    .end local v4    # "s":Ljava/io/InputStream;
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;

    move-result-object v5

    return-object v5

    .line 367
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public getCodeSource(Ljava/net/URL;Ljava/lang/String;)Ljava/security/CodeSource;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 883
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    .line 884
    .local v0, "signers":[Ljava/security/CodeSigner;
    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v1

    return-object v1
.end method

.method public getCodeSource(Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)Ljava/security/CodeSource;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "jar"    # Ljava/util/jar/JarFile;
    .param p3, "je"    # Ljava/util/jar/JarEntry;

    .prologue
    .line 890
    invoke-virtual {p0, p2, p3}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCodeSources(Ljava/util/jar/JarFile;Ljava/net/URL;)[Ljava/security/CodeSource;
    .locals 2
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "url"    # Ljava/net/URL;

    .prologue
    monitor-enter p0

    .line 875
    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/jar/JarVerifier;->unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    .line 877
    .local v0, "hasUnsigned":Z
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->getJarCodeSigners()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .end local v0    # "hasUnsigned":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getManifestDigests()Ljava/util/List;
    .locals 1

    .prologue
    monitor-enter p0

    .line 898
    :try_start_0
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method nothingToVerify()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEagerValidation(Z)V
    .locals 0
    .param p1, "eager"    # Z

    .prologue
    .line 894
    iput-boolean p1, p0, Ljava/util/jar/JarVerifier;->eagerValidation:Z

    .line 893
    return-void
.end method

.method public update(ILsun/security/util/ManifestEntryVerifier;)V
    .locals 1
    .param p1, "b"    # I
    .param p2, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 192
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 189
    :goto_0
    return-void

    .line 195
    :cond_0
    int-to-byte v0, p1

    invoke-virtual {p2, v0}, Lsun/security/util/ManifestEntryVerifier;->update(B)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-direct {p0, p2}, Ljava/util/jar/JarVerifier;->processEntry(Lsun/security/util/ManifestEntryVerifier;)V

    goto :goto_0
.end method

.method public update(I[BIILsun/security/util/ManifestEntryVerifier;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 211
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p2, p3, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 208
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p5, p2, p3, p1}, Lsun/security/util/ManifestEntryVerifier;->update([BII)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-direct {p0, p5}, Ljava/util/jar/JarVerifier;->processEntry(Lsun/security/util/ManifestEntryVerifier;)V

    goto :goto_0
.end method
