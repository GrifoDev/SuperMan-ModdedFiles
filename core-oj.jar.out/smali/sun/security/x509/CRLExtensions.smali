.class public Lsun/security/x509/CRLExtensions;
.super Ljava/lang/Object;
.source "CRLExtensions.java"


# static fields
.field private static final PARAMS:[Ljava/lang/Class;


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private unsupportedCritExt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/x509/CRLExtensions;->PARAMS:[Ljava/lang/Class;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 67
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 67
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    .line 84
    invoke-direct {p0, p1}, Lsun/security/x509/CRLExtensions;->init(Lsun/security/util/DerInputStream;)V

    .line 83
    return-void
.end method

.method private init(Lsun/security/util/DerInputStream;)V
    .locals 10
    .param p1, "derStrm"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 90
    move-object v5, p1

    .line 92
    .local v5, "str":Lsun/security/util/DerInputStream;
    :try_start_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v7

    int-to-byte v4, v7

    .line 94
    .local v4, "nextByte":B
    and-int/lit16 v7, v4, 0xc0

    const/16 v8, 0x80

    if-ne v7, v8, :cond_0

    .line 95
    and-int/lit8 v7, v4, 0x1f

    if-nez v7, :cond_0

    .line 96
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v6

    .line 97
    .local v6, "val":Lsun/security/util/DerValue;
    iget-object v5, v6, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 100
    .end local v6    # "val":Lsun/security/util/DerValue;
    :cond_0
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 101
    .local v2, "exts":[Lsun/security/util/DerValue;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_1

    .line 102
    new-instance v1, Lsun/security/x509/Extension;

    aget-object v7, v2, v3

    invoke-direct {v1, v7}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    .line 103
    .local v1, "ext":Lsun/security/x509/Extension;
    invoke-direct {p0, v1}, Lsun/security/x509/CRLExtensions;->parseExtension(Lsun/security/x509/Extension;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "ext":Lsun/security/x509/Extension;
    .end local v2    # "exts":[Lsun/security/util/DerValue;
    .end local v3    # "i":I
    .end local v4    # "nextByte":B
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/security/cert/CRLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Parsing error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "exts":[Lsun/security/util/DerValue;
    .restart local v3    # "i":I
    .restart local v4    # "nextByte":B
    :cond_1
    return-void
.end method

.method private parseExtension(Lsun/security/x509/Extension;)V
    .locals 8
    .param p1, "ext"    # Lsun/security/x509/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v3

    .line 116
    .local v3, "extClass":Ljava/lang/Class;
    if-nez v3, :cond_2

    .line 117
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 118
    const/4 v6, 0x1

    iput-boolean v6, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    .line 119
    :cond_0
    iget-object v6, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 120
    new-instance v6, Ljava/security/cert/CRLException;

    const-string/jumbo v7, "Duplicate extensions not allowed"

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    .end local v3    # "extClass":Ljava/lang/Class;
    :catch_0
    move-exception v4

    .line 131
    .local v4, "invk":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/security/cert/CRLException;

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 121
    .end local v4    # "invk":Ljava/lang/reflect/InvocationTargetException;
    .restart local v3    # "extClass":Ljava/lang/Class;
    :cond_1
    return-void

    .line 123
    :cond_2
    :try_start_1
    sget-object v6, Lsun/security/x509/CRLExtensions;->PARAMS:[Ljava/lang/Class;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 124
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 125
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 126
    .local v5, "passed":[Ljava/lang/Object;
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/CertAttrSet;

    .line 127
    .local v1, "crlExt":Lsun/security/x509/CertAttrSet;
    iget-object v6, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v1}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    move-result-object v7

    check-cast v1, Lsun/security/x509/Extension;

    .end local v1    # "crlExt":Lsun/security/x509/CertAttrSet;
    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 128
    new-instance v6, Ljava/security/cert/CRLException;

    const-string/jumbo v7, "Duplicate extensions not allowed"

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    .end local v3    # "extClass":Ljava/lang/Class;
    .end local v5    # "passed":[Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/cert/CRLException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cons":Ljava/lang/reflect/Constructor;
    .restart local v3    # "extClass":Ljava/lang/Class;
    .restart local v5    # "passed":[Ljava/lang/Object;
    :cond_3
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public encode(Ljava/io/OutputStream;Z)V
    .locals 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 149
    .local v3, "extOut":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 150
    .local v0, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 152
    .local v5, "objs":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v5

    if-ge v4, v8, :cond_2

    .line 153
    aget-object v8, v5, v4

    instance-of v8, v8, Lsun/security/x509/CertAttrSet;

    if-eqz v8, :cond_0

    .line 154
    aget-object v8, v5, v4

    check-cast v8, Lsun/security/x509/CertAttrSet;

    invoke-interface {v8, v3}, Lsun/security/x509/CertAttrSet;->encode(Ljava/io/OutputStream;)V

    .line 152
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    :cond_0
    aget-object v8, v5, v4

    instance-of v8, v8, Lsun/security/x509/Extension;

    if-eqz v8, :cond_1

    .line 156
    aget-object v8, v5, v4

    check-cast v8, Lsun/security/x509/Extension;

    invoke-virtual {v8, v3}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 172
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v3    # "extOut":Lsun/security/util/DerOutputStream;
    .end local v4    # "i":I
    .end local v5    # "objs":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/io/IOException;
    new-instance v8, Ljava/security/cert/CRLException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Encoding error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 158
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .restart local v3    # "extOut":Lsun/security/util/DerOutputStream;
    .restart local v4    # "i":I
    .restart local v5    # "objs":[Ljava/lang/Object;
    :cond_1
    :try_start_1
    new-instance v8, Ljava/security/cert/CRLException;

    const-string/jumbo v9, "Illegal extension object"

    invoke-direct {v8, v9}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v3    # "extOut":Lsun/security/util/DerOutputStream;
    .end local v4    # "i":I
    .end local v5    # "objs":[Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 175
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v8, Ljava/security/cert/CRLException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Encoding error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 161
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .restart local v3    # "extOut":Lsun/security/util/DerOutputStream;
    .restart local v4    # "i":I
    .restart local v5    # "objs":[Ljava/lang/Object;
    :cond_2
    :try_start_2
    new-instance v6, Lsun/security/util/DerOutputStream;

    invoke-direct {v6}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 162
    .local v6, "seq":Lsun/security/util/DerOutputStream;
    const/16 v8, 0x30

    invoke-virtual {v6, v8, v3}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 164
    new-instance v7, Lsun/security/util/DerOutputStream;

    invoke-direct {v7}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 165
    .local v7, "tmp":Lsun/security/util/DerOutputStream;
    if-eqz p2, :cond_3

    .line 166
    const/16 v8, -0x80

    .line 167
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 166
    invoke-static {v8, v9, v10}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v8

    invoke-virtual {v7, v8, v6}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 171
    :goto_2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    return-void

    .line 169
    :cond_3
    move-object v7, v6

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 251
    if-ne p0, p1, :cond_0

    .line 252
    return v9

    .line 253
    :cond_0
    instance-of v7, p1, Lsun/security/x509/CRLExtensions;

    if-nez v7, :cond_1

    .line 254
    return v8

    .line 256
    :cond_1
    nop

    nop

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v4

    .line 257
    .local v4, "otherC":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 259
    .local v3, "objs":[Ljava/lang/Object;
    array-length v2, v3

    .line 260
    .local v2, "len":I
    iget-object v7, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-eq v2, v7, :cond_2

    .line 261
    return v8

    .line 264
    :cond_2
    const/4 v1, 0x0

    .line 265
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .end local v1    # "key":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_7

    .line 266
    aget-object v7, v3, v0

    instance-of v7, v7, Lsun/security/x509/CertAttrSet;

    if-eqz v7, :cond_3

    .line 267
    aget-object v7, v3, v0

    check-cast v7, Lsun/security/x509/CertAttrSet;

    invoke-interface {v7}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 268
    :cond_3
    aget-object v5, v3, v0

    check-cast v5, Lsun/security/x509/Extension;

    .line 269
    .local v5, "otherExt":Lsun/security/x509/Extension;
    if-nez v1, :cond_4

    .line 270
    invoke-virtual {v5}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    :cond_4
    iget-object v7, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/x509/Extension;

    .line 272
    .local v6, "thisExt":Lsun/security/x509/Extension;
    if-nez v6, :cond_5

    .line 273
    return v8

    .line 274
    :cond_5
    invoke-virtual {v6, v5}, Lsun/security/x509/Extension;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 275
    return v8

    .line 265
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    .end local v5    # "otherExt":Lsun/security/x509/Extension;
    .end local v6    # "thisExt":Lsun/security/x509/Extension;
    :cond_7
    return v9
.end method

.method public get(Ljava/lang/String;)Lsun/security/x509/Extension;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "id":Ljava/lang/String;
    const-string/jumbo v4, "x509"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    const-string/jumbo v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 190
    .local v2, "index":I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 193
    .end local v2    # "index":I
    .local v3, "name":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/Extension;

    return-object v4

    .line 192
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    move-object v3, p1

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public getAllExtensions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 204
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    check-cast p2, Lsun/security/x509/Extension;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
