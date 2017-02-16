.class public Lsun/security/x509/CertificateExtensions;
.super Ljava/lang/Object;
.source "CertificateExtensions.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Lsun/security/x509/Extension;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions"

.field public static final NAME:Ljava/lang/String; = "extensions"

.field private static PARAMS:[Ljava/lang/Class;

.field private static final debug:Lsun/security/util/Debug;


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

.field private unparseableExtensions:Ljava/util/Map;
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
    .line 58
    const-string/jumbo v0, "x509"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/x509/CertificateExtensions;->debug:Lsun/security/util/Debug;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/x509/CertificateExtensions;->PARAMS:[Ljava/lang/Class;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 60
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 60
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    .line 78
    invoke-direct {p0, p1}, Lsun/security/x509/CertificateExtensions;->init(Lsun/security/util/DerInputStream;)V

    .line 77
    return-void
.end method

.method private init(Lsun/security/util/DerInputStream;)V
    .locals 4
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 86
    .local v1, "exts":[Lsun/security/util/DerValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 87
    new-instance v0, Lsun/security/x509/Extension;

    aget-object v3, v1, v2

    invoke-direct {v0, v3}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    .line 88
    .local v0, "ext":Lsun/security/x509/Extension;
    invoke-direct {p0, v0}, Lsun/security/x509/CertificateExtensions;->parseExtension(Lsun/security/x509/Extension;)V

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "ext":Lsun/security/x509/Extension;
    :cond_0
    return-void
.end method

.method private parseExtension(Lsun/security/x509/Extension;)V
    .locals 12
    .param p1, "ext"    # Lsun/security/x509/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v9

    invoke-static {v9}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v5

    .line 98
    .local v5, "extClass":Ljava/lang/Class;
    if-nez v5, :cond_4

    .line 99
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 100
    const/4 v9, 0x1

    iput-boolean v9, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    .line 102
    :cond_0
    iget-object v9, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    .line 103
    return-void

    .line 105
    :cond_1
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "Duplicate extensions not allowed"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 116
    .end local v5    # "extClass":Ljava/lang/Class;
    :catch_0
    move-exception v7

    .line 117
    .local v7, "invk":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    .line 118
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v9

    if-nez v9, :cond_5

    .line 120
    iget-object v9, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    if-nez v9, :cond_2

    .line 121
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    iput-object v9, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    .line 123
    :cond_2
    iget-object v9, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v10

    .line 124
    new-instance v11, Lsun/security/x509/UnparseableExtension;

    invoke-direct {v11, p1, v4}, Lsun/security/x509/UnparseableExtension;-><init>(Lsun/security/x509/Extension;Ljava/lang/Throwable;)V

    .line 123
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v9, Lsun/security/x509/CertificateExtensions;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_3

    .line 126
    sget-object v9, Lsun/security/x509/CertificateExtensions;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error parsing extension: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    new-instance v6, Lsun/misc/HexDumpEncoder;

    invoke-direct {v6}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 129
    .local v6, "h":Lsun/misc/HexDumpEncoder;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    .end local v6    # "h":Lsun/misc/HexDumpEncoder;
    :cond_3
    return-void

    .line 108
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v7    # "invk":Ljava/lang/reflect/InvocationTargetException;
    .restart local v5    # "extClass":Ljava/lang/Class;
    :cond_4
    :try_start_1
    sget-object v9, Lsun/security/x509/CertificateExtensions;->PARAMS:[Ljava/lang/Class;

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 110
    .local v1, "cons":Ljava/lang/reflect/Constructor;
    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 111
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 112
    .local v8, "passed":[Ljava/lang/Object;
    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/CertAttrSet;

    .line 113
    .local v0, "certExt":Lsun/security/x509/CertAttrSet;
    iget-object v9, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v0}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    move-result-object v10

    check-cast v0, Lsun/security/x509/Extension;

    .end local v0    # "certExt":Lsun/security/x509/CertAttrSet;
    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 114
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "Duplicate extensions not allowed"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 138
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;
    .end local v5    # "extClass":Ljava/lang/Class;
    .end local v8    # "passed":[Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 139
    .local v2, "e":Ljava/io/IOException;
    throw v2

    .line 140
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 141
    .local v3, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v9

    check-cast v9, Ljava/io/IOException;

    throw v9

    .line 133
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "e":Ljava/lang/Throwable;
    .restart local v7    # "invk":Ljava/lang/reflect/InvocationTargetException;
    :cond_5
    instance-of v9, v4, Ljava/io/IOException;

    if-eqz v9, :cond_6

    .line 134
    check-cast v4, Ljava/io/IOException;

    .end local v4    # "e":Ljava/lang/Throwable;
    throw v4

    .line 136
    .restart local v4    # "e":Ljava/lang/Throwable;
    :cond_6
    new-instance v9, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v9

    check-cast v9, Ljava/io/IOException;

    throw v9

    .line 95
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v7    # "invk":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "cons":Ljava/lang/reflect/Constructor;
    .restart local v5    # "extClass":Ljava/lang/Class;
    .restart local v8    # "passed":[Ljava/lang/Object;
    :cond_7
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v1, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 236
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No extension found with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_0
    iget-object v1, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;Z)V

    .line 154
    return-void
.end method

.method public encode(Ljava/io/OutputStream;Z)V
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "isCertReq"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 169
    .local v1, "extOut":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 170
    .local v0, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 172
    .local v3, "objs":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_2

    .line 173
    aget-object v6, v3, v2

    instance-of v6, v6, Lsun/security/x509/CertAttrSet;

    if-eqz v6, :cond_0

    .line 174
    aget-object v6, v3, v2

    check-cast v6, Lsun/security/x509/CertAttrSet;

    invoke-interface {v6, v1}, Lsun/security/x509/CertAttrSet;->encode(Ljava/io/OutputStream;)V

    .line 172
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_0
    aget-object v6, v3, v2

    instance-of v6, v6, Lsun/security/x509/Extension;

    if-eqz v6, :cond_1

    .line 176
    aget-object v6, v3, v2

    check-cast v6, Lsun/security/x509/Extension;

    invoke-virtual {v6, v1}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    goto :goto_1

    .line 178
    :cond_1
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string/jumbo v7, "Illegal extension object"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 181
    :cond_2
    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 182
    .local v4, "seq":Lsun/security/util/DerOutputStream;
    const/16 v6, 0x30

    invoke-virtual {v4, v6, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 185
    if-nez p2, :cond_3

    .line 186
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 187
    .local v5, "tmp":Lsun/security/util/DerOutputStream;
    const/16 v6, -0x80

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    invoke-virtual {v5, v6, v4}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 192
    :goto_2
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 167
    return-void

    .line 190
    .end local v5    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_3
    move-object v5, v4

    .restart local v5    # "tmp":Lsun/security/util/DerOutputStream;
    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 301
    if-ne p0, p1, :cond_0

    .line 302
    const/4 v7, 0x1

    return v7

    .line 303
    :cond_0
    instance-of v7, p1, Lsun/security/x509/CertificateExtensions;

    if-nez v7, :cond_1

    .line 304
    return v8

    :cond_1
    move-object v7, p1

    .line 306
    check-cast v7, Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v7}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v4

    .line 307
    .local v4, "otherC":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 309
    .local v3, "objs":[Ljava/lang/Object;
    array-length v2, v3

    .line 310
    .local v2, "len":I
    iget-object v7, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-eq v2, v7, :cond_2

    .line 311
    return v8

    .line 314
    :cond_2
    const/4 v1, 0x0

    .line 315
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .end local v1    # "key":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_7

    .line 316
    aget-object v7, v3, v0

    instance-of v7, v7, Lsun/security/x509/CertAttrSet;

    if-eqz v7, :cond_3

    .line 317
    aget-object v7, v3, v0

    check-cast v7, Lsun/security/x509/CertAttrSet;

    invoke-interface {v7}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 318
    :cond_3
    aget-object v5, v3, v0

    check-cast v5, Lsun/security/x509/Extension;

    .line 319
    .local v5, "otherExt":Lsun/security/x509/Extension;
    if-nez v1, :cond_4

    .line 320
    invoke-virtual {v5}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    :cond_4
    iget-object v7, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/x509/Extension;

    .line 322
    .local v6, "thisExt":Lsun/security/x509/Extension;
    if-nez v6, :cond_5

    .line 323
    return v8

    .line 324
    :cond_5
    invoke-virtual {v6, v5}, Lsun/security/x509/Extension;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 325
    return v8

    .line 315
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    .end local v5    # "otherExt":Lsun/security/x509/Extension;
    .end local v6    # "thisExt":Lsun/security/x509/Extension;
    :cond_7
    invoke-virtual {p0}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v7

    .line 328
    check-cast p1, Lsun/security/x509/CertificateExtensions;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v8

    .line 327
    invoke-interface {v7, v8}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v7

    return v7
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v1, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 217
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No extension found with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    return-object v0
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
    .line 263
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

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
    .line 255
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method getExtension(Ljava/lang/String;)Lsun/security/x509/Extension;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/Extension;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    const-string/jumbo v0, "extensions"

    return-object v0
.end method

.method public getNameByOid(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;
    .locals 3
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v2, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "name$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/Extension;

    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2, p1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    return-object v0

    .line 247
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getUnparseableExtensions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 270
    :cond_0
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    return-object v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    instance-of v0, p2, Lsun/security/x509/Extension;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    check-cast p2, Lsun/security/x509/Extension;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void

    .line 205
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unknown extension type."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
