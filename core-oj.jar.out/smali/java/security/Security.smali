.class public final Ljava/security/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Security$ProviderProperty;
    }
.end annotation


# static fields
.field private static final props:Ljava/util/Properties;

.field private static final spiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final version:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 48
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v6, Ljava/security/Security;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    sput-object v6, Ljava/security/Security;->props:Ljava/util/Properties;

    .line 61
    const/4 v4, 0x0

    .line 62
    .local v4, "loadedProps":Z
    const/4 v2, 0x0

    .line 67
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    const-class v6, Ljava/security/Security;

    const-string/jumbo v7, "security.properties"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 68
    .local v5, "propStream":Ljava/io/InputStream;
    if-nez v5, :cond_2

    .line 69
    const-string/jumbo v6, "Could not find \'security.properties\'."

    invoke-static {v6}, Ljava/lang/System;->logE(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v2, :cond_0

    .line 80
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    .end local v5    # "propStream":Ljava/io/InputStream;
    :cond_0
    :goto_1
    if-nez v4, :cond_1

    .line 86
    invoke-static {}, Ljava/security/Security;->initializeStatic()V

    .line 555
    :cond_1
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v6, Ljava/security/Security;->spiMap:Ljava/util/Map;

    .line 46
    return-void

    .line 71
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "propStream":Ljava/io/InputStream;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_3
    sget-object v6, Ljava/security/Security;->props:Ljava/util/Properties;

    invoke-virtual {v6, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    goto :goto_0

    .line 81
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .local v1, "ignored":Ljava/io/IOException;
    goto :goto_1

    .line 75
    .end local v1    # "ignored":Ljava/io/IOException;
    .end local v5    # "propStream":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 76
    .end local v2    # "is":Ljava/io/InputStream;
    .local v0, "ex":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string/jumbo v6, "Could not load \'security.properties\'"

    invoke-static {v6, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    if-eqz v2, :cond_0

    .line 80
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 81
    :catch_2
    move-exception v1

    .restart local v1    # "ignored":Ljava/io/IOException;
    goto :goto_1

    .line 77
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 78
    :goto_3
    if-eqz v2, :cond_3

    .line 80
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 77
    :cond_3
    :goto_4
    throw v6

    .line 81
    :catch_3
    move-exception v1

    .restart local v1    # "ignored":Ljava/io/IOException;
    goto :goto_4

    .line 77
    .end local v1    # "ignored":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "propStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    goto :goto_3

    .line 75
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProvider(Ljava/security/Provider;)I
    .locals 1
    .param p0, "provider"    # Ljava/security/Provider;

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v0

    return v0
.end method

.method private static check(Ljava/lang/String;)V
    .locals 1
    .param p0, "directive"    # Ljava/lang/String;

    .prologue
    .line 746
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 747
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 745
    :cond_0
    return-void
.end method

.method public static getAlgorithmProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "algName"    # Ljava/lang/String;
    .param p1, "propName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Alg."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    const-string/jumbo v2, "."

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;)Ljava/security/Security$ProviderProperty;

    move-result-object v0

    .line 197
    .local v0, "entry":Ljava/security/Security$ProviderProperty;
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, v0, Ljava/security/Security$ProviderProperty;->className:Ljava/lang/String;

    return-object v1

    .line 200
    :cond_0
    return-object v3
.end method

.method public static getAlgorithms(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 972
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 974
    :cond_0
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v5

    .line 973
    :cond_1
    const-string/jumbo v5, "."

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 972
    if-nez v5, :cond_0

    .line 977
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 978
    .local v4, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    .line 980
    .local v3, "providers":[Ljava/security/Provider;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_4

    .line 982
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 983
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    .line 982
    if-eqz v5, :cond_3

    .line 984
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "currentKey":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 992
    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2

    .line 993
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 980
    .end local v0    # "currentKey":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 998
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_4
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    return-object v5
.end method

.method private static getAllQualifyingCandidates(Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;
    .locals 5
    .param p0, "filterKey"    # Ljava/lang/String;
    .param p1, "filterValue"    # Ljava/lang/String;
    .param p2, "allProviders"    # [Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/Provider;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 760
    invoke-static {p0, p1}, Ljava/security/Security;->getFilterComponents(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 766
    .local v2, "filterComponents":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 767
    .local v3, "serviceName":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v0, v2, v4

    .line 768
    .local v0, "algName":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v1, v2, v4

    .line 770
    .local v1, "attrName":Ljava/lang/String;
    invoke-static {v3, v0, v1, p1, p2}, Ljava/security/Security;->getProvidersNotUsingCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;

    move-result-object v4

    return-object v4
.end method

.method static getFilterComponents(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "filterKey"    # Ljava/lang/String;
    .param p1, "filterValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 895
    const/16 v6, 0x2e

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 897
    .local v0, "algIndex":I
    if-gez v0, :cond_0

    .line 900
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string/jumbo v7, "Invalid filter"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 903
    :cond_0
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 904
    .local v5, "serviceName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 905
    .local v1, "algName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 907
    .local v3, "attrName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 910
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 911
    .local v1, "algName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    .line 913
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string/jumbo v7, "Invalid filter"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 919
    .local v1, "algName":Ljava/lang/String;
    :cond_1
    const/16 v6, 0x20

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 921
    .local v2, "attrIndex":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    .line 923
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string/jumbo v7, "Invalid filter"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 925
    :cond_2
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 926
    .local v3, "attrName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 928
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string/jumbo v7, "Invalid filter"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 933
    :cond_3
    if-lt v2, v0, :cond_4

    .line 934
    add-int/lit8 v6, v2, -0x1

    if-ne v0, v6, :cond_5

    .line 935
    :cond_4
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string/jumbo v7, "Invalid filter"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 937
    :cond_5
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 941
    .end local v2    # "attrIndex":I
    .end local v3    # "attrName":Ljava/lang/String;
    .local v1, "algName":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    .line 942
    .local v4, "result":[Ljava/lang/String;
    aput-object v5, v4, v7

    .line 943
    const/4 v6, 0x1

    aput-object v1, v4, v6

    .line 944
    const/4 v6, 0x2

    aput-object v3, v4, v6

    .line 946
    return-object v4
.end method

.method static getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 586
    if-nez p2, :cond_0

    .line 588
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 587
    invoke-static {p1, v0, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 591
    :cond_0
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 590
    invoke-static {p1, v0, p0, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 598
    if-nez p2, :cond_0

    .line 600
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 599
    invoke-static {p1, v0, p0, p3}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 603
    :cond_0
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 602
    invoke-static {p1, v0, p0, p3, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 617
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 616
    invoke-static {p1, v0, p0, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "params"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 623
    invoke-static {p1, v0, p0, p3, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 651
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 652
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    .line 653
    new-instance v2, Ljava/security/SecurityPermission;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProperty."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 656
    :cond_0
    sget-object v2, Ljava/security/Security;->props:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 658
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 659
    :cond_1
    return-object v0
.end method

.method public static getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method private static getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;

    .prologue
    .line 152
    invoke-virtual {p1, p0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "prop":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 156
    invoke-virtual {p1}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 157
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    .line 158
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    .local v1, "matchKey":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {p1, v1}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .end local v1    # "matchKey":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private static getProviderProperty(Ljava/lang/String;)Ljava/security/Security$ProviderProperty;
    .locals 10
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "entry":Ljava/security/Security$ProviderProperty;
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/jca/ProviderList;->providers()Ljava/util/List;

    move-result-object v7

    .line 118
    .local v7, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 120
    const/4 v3, 0x0

    .line 121
    .local v3, "matchKey":Ljava/lang/String;
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    .line 122
    .local v6, "prov":Ljava/security/Provider;
    invoke-virtual {v6, p0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "prop":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 127
    invoke-virtual {v6}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 128
    .end local v3    # "matchKey":Ljava/lang/String;
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v5, :cond_1

    .line 129
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 130
    .local v3, "matchKey":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 131
    invoke-virtual {v6, v3}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .end local v3    # "matchKey":Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 138
    new-instance v4, Ljava/security/Security$ProviderProperty;

    invoke-direct {v4, v9}, Ljava/security/Security$ProviderProperty;-><init>(Ljava/security/Security$ProviderProperty;)V

    .line 139
    .local v4, "newEntry":Ljava/security/Security$ProviderProperty;
    iput-object v5, v4, Ljava/security/Security$ProviderProperty;->className:Ljava/lang/String;

    .line 140
    iput-object v6, v4, Ljava/security/Security$ProviderProperty;->provider:Ljava/security/Provider;

    .line 141
    return-object v4

    .line 118
    .end local v4    # "newEntry":Ljava/security/Security$ProviderProperty;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v5    # "prop":Ljava/lang/String;
    .end local v6    # "prov":Ljava/security/Provider;
    :cond_3
    return-object v1
.end method

.method public static getProviders()[Ljava/security/Provider;
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lsun/security/jca/Providers;->getFullProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->toArray()[Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public static getProviders(Ljava/lang/String;)[Ljava/security/Provider;
    .locals 5
    .param p0, "filter"    # Ljava/lang/String;

    .prologue
    .line 429
    const/4 v2, 0x0

    .line 430
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 431
    .local v3, "value":Ljava/lang/String;
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 433
    .local v1, "index":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 434
    move-object v2, p0

    .line 435
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 441
    .local v3, "value":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/util/Hashtable;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/Hashtable;-><init>(I)V

    .line 442
    .local v0, "hashtableFilter":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/util/Map;)[Ljava/security/Provider;

    move-result-object v4

    return-object v4

    .line 437
    .end local v0    # "hashtableFilter":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, "key":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getProviders(Ljava/util/Map;)[Ljava/security/Provider;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/security/Provider;"
        }
    .end annotation

    .prologue
    .local p0, "filter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 499
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    .line 500
    .local v0, "allProviders":[Ljava/security/Provider;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 501
    .local v8, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    const/4 v13, 0x5

    invoke-direct {v1, v13}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 505
    .local v1, "candidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    if-eqz v8, :cond_0

    if-nez v0, :cond_1

    .line 506
    :cond_0
    return-object v0

    .line 509
    :cond_1
    const/4 v4, 0x1

    .line 513
    .local v4, "firstSearch":Z
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "ite":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 514
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 515
    .local v7, "key":Ljava/lang/String;
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 517
    .local v12, "value":Ljava/lang/String;
    invoke-static {v7, v12, v0}, Ljava/security/Security;->getAllQualifyingCandidates(Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;

    move-result-object v9

    .line 519
    .local v9, "newCandidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    if-eqz v4, :cond_3

    .line 520
    move-object v1, v9

    .line 521
    const/4 v4, 0x0

    .line 524
    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 536
    :cond_4
    const/4 v1, 0x0

    .line 541
    .end local v1    # "candidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "newCandidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    .end local v12    # "value":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 542
    :cond_6
    return-object v14

    .line 528
    .restart local v1    # "candidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v9    # "newCandidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    .restart local v12    # "value":Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 529
    .local v3, "cansIte":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider;>;"
    :cond_8
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    .line 528
    if-eqz v13, :cond_2

    .line 530
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/Provider;

    .line 531
    .local v10, "prov":Ljava/security/Provider;
    invoke-virtual {v9, v10}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 532
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 544
    .end local v1    # "candidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    .end local v3    # "cansIte":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "newCandidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    .end local v10    # "prov":Ljava/security/Provider;
    .end local v12    # "value":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 545
    .local v2, "candidatesArray":[Ljava/lang/Object;
    array-length v13, v2

    new-array v11, v13, [Ljava/security/Provider;

    .line 547
    .local v11, "result":[Ljava/security/Provider;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v13, v11

    if-ge v5, v13, :cond_a

    .line 548
    aget-object v13, v2, v5

    check-cast v13, Ljava/security/Provider;

    aput-object v13, v11, v5

    .line 547
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 551
    :cond_a
    return-object v11
.end method

.method private static getProvidersNotUsingCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;
    .locals 3
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "filterValue"    # Ljava/lang/String;
    .param p4, "allProviders"    # [Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/Provider;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 780
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 781
    .local v0, "candidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_1

    .line 782
    aget-object v2, p4, v1

    invoke-static {v2, p0, p1, p2, p3}, Ljava/security/Security;->isCriterionSatisfied(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 785
    aget-object v2, p4, v1

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 788
    :cond_1
    return-object v0
.end method

.method private static getSpiClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 563
    sget-object v2, Ljava/security/Security;->spiMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 564
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 565
    return-object v0

    .line 568
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "java.security."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Spi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 569
    sget-object v2, Ljava/security/Security;->spiMap:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    return-object v0

    .line 571
    :catch_0
    move-exception v1

    .line 572
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Spi class not found"

    invoke-direct {v2, v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getVersion()I
    .locals 1

    .prologue
    .line 1011
    sget-object v0, Ljava/security/Security;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static increaseVersion()V
    .locals 1

    .prologue
    .line 1005
    sget-object v0, Ljava/security/Security;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1004
    return-void
.end method

.method private static initializeStatic()V
    .locals 3

    .prologue
    .line 95
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    const-string/jumbo v1, "security.provider.1"

    const-string/jumbo v2, "com.android.org.conscrypt.OpenSSLProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    const-string/jumbo v1, "security.provider.2"

    const-string/jumbo v2, "sun.security.provider.CertPathProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    const-string/jumbo v1, "security.provider.3"

    const-string/jumbo v2, "com.android.org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    const-string/jumbo v1, "security.provider.4"

    const-string/jumbo v2, "com.android.org.conscrypt.JSSEProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public static declared-synchronized insertProviderAt(Ljava/security/Provider;I)I
    .locals 6
    .param p0, "provider"    # Ljava/security/Provider;
    .param p1, "position"    # I

    .prologue
    const-class v4, Ljava/security/Security;

    monitor-enter v4

    .line 250
    :try_start_0
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "providerName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "insertProvider."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/Security;->check(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lsun/security/jca/Providers;->getFullProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 253
    .local v0, "list":Lsun/security/jca/ProviderList;
    add-int/lit8 v3, p1, -0x1

    invoke-static {v0, p0, v3}, Lsun/security/jca/ProviderList;->insertAt(Lsun/security/jca/ProviderList;Ljava/security/Provider;I)Lsun/security/jca/ProviderList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 254
    .local v1, "newList":Lsun/security/jca/ProviderList;
    if-ne v0, v1, :cond_0

    .line 255
    const/4 v3, -0x1

    monitor-exit v4

    return v3

    .line 257
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 258
    invoke-static {v1}, Lsun/security/jca/Providers;->setProviderList(Lsun/security/jca/ProviderList;)V

    .line 259
    invoke-virtual {v1, v2}, Lsun/security/jca/ProviderList;->getIndex(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    add-int/lit8 v3, v3, 0x1

    monitor-exit v4

    return v3

    .end local v0    # "list":Lsun/security/jca/ProviderList;
    .end local v1    # "newList":Lsun/security/jca/ProviderList;
    .end local v2    # "providerName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static invalidateSMCache(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 703
    const-string/jumbo v2, "package.access"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 704
    .local v0, "pa":Z
    const-string/jumbo v2, "package.definition"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 706
    .local v1, "pd":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 707
    :cond_0
    new-instance v2, Ljava/security/Security$1;

    invoke-direct {v2, v0}, Ljava/security/Security$1;-><init>(Z)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 701
    :cond_1
    return-void
.end method

.method private static isConstraintSatisfied(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "attribute"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "prop"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 875
    const-string/jumbo v2, "KeySize"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 876
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 877
    .local v1, "requestedSize":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 878
    .local v0, "maxSize":I
    if-gt v1, v0, :cond_0

    .line 879
    const/4 v2, 0x1

    return v2

    .line 881
    :cond_0
    return v3

    .line 887
    .end local v0    # "maxSize":I
    .end local v1    # "requestedSize":I
    :cond_1
    const-string/jumbo v2, "ImplementedIn"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 888
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 891
    :cond_2
    return v3
.end method

.method private static isCriterionSatisfied(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "prov"    # Ljava/security/Provider;
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "algName"    # Ljava/lang/String;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "filterValue"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x20

    .line 800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "key":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 807
    :cond_0
    invoke-static {v0, p0}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, "propValue":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Alg.Alias."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 813
    const-string/jumbo v4, "."

    .line 812
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, "standardName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    if-eqz p3, :cond_1

    .line 820
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 823
    :cond_1
    invoke-static {v0, p0}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;

    move-result-object v1

    .line 826
    :cond_2
    if-nez v1, :cond_3

    .line 829
    const/4 v3, 0x0

    return v3

    .line 837
    .end local v2    # "standardName":Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_4

    .line 838
    const/4 v3, 0x1

    return v3

    .line 843
    :cond_4
    invoke-static {p3}, Ljava/security/Security;->isStandardAttr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 844
    invoke-static {p3, p4, v1}, Ljava/security/Security;->isConstraintSatisfied(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 846
    :cond_5
    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method private static isStandardAttr(Ljava/lang/String;)Z
    .locals 2
    .param p0, "attribute"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 857
    const-string/jumbo v0, "KeySize"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    return v1

    .line 860
    :cond_0
    const-string/jumbo v0, "ImplementedIn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    return v1

    .line 863
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized removeProvider(Ljava/lang/String;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v3, Ljava/security/Security;

    monitor-enter v3

    .line 336
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeProvider."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Security;->check(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lsun/security/jca/Providers;->getFullProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 338
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-static {v0, p0}, Lsun/security/jca/ProviderList;->remove(Lsun/security/jca/ProviderList;Ljava/lang/String;)Lsun/security/jca/ProviderList;

    move-result-object v1

    .line 339
    .local v1, "newList":Lsun/security/jca/ProviderList;
    invoke-static {v1}, Lsun/security/jca/Providers;->setProviderList(Lsun/security/jca/ProviderList;)V

    .line 340
    invoke-static {}, Ljava/security/Security;->increaseVersion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 335
    return-void

    .end local v0    # "list":Lsun/security/jca/ProviderList;
    .end local v1    # "newList":Lsun/security/jca/ProviderList;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "datum"    # Ljava/lang/String;

    .prologue
    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Security;->check(Ljava/lang/String;)V

    .line 686
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 688
    invoke-static {p0}, Ljava/security/Security;->invalidateSMCache(Ljava/lang/String;)V

    .line 684
    return-void
.end method
