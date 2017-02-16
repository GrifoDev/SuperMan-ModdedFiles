.class public Lsun/security/x509/NetscapeCertTypeExtension;
.super Lsun/security/x509/Extension;
.source "NetscapeCertTypeExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CertType_data:[I

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.NetscapeCertType"

.field public static final NAME:Ljava/lang/String; = "NetscapeCertType"

.field public static NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier; = null

.field public static final OBJECT_SIGNING:Ljava/lang/String; = "object_signing"

.field public static final OBJECT_SIGNING_CA:Ljava/lang/String; = "object_signing_ca"

.field public static final SSL_CA:Ljava/lang/String; = "ssl_ca"

.field public static final SSL_CLIENT:Ljava/lang/String; = "ssl_client"

.field public static final SSL_SERVER:Ljava/lang/String; = "ssl_server"

.field public static final S_MIME:Ljava/lang/String; = "s_mime"

.field public static final S_MIME_CA:Ljava/lang/String; = "s_mime_ca"

.field private static final mAttributeNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;


# instance fields
.field private bitString:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x7

    const/4 v2, 0x0

    .line 72
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    sput-object v3, Lsun/security/x509/NetscapeCertTypeExtension;->CertType_data:[I

    .line 81
    :try_start_0
    new-instance v3, Lsun/security/util/ObjectIdentifier;

    sget-object v4, Lsun/security/x509/NetscapeCertTypeExtension;->CertType_data:[I

    invoke-direct {v3, v4}, Lsun/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v3, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .local v1, "ioe":Ljava/io/IOException;
    :goto_0
    new-array v3, v7, [Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    .line 100
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string/jumbo v5, "ssl_client"

    invoke-direct {v4, v5, v2}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v2

    .line 101
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string/jumbo v5, "ssl_server"

    invoke-direct {v4, v5, v6}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v6

    .line 102
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string/jumbo v5, "s_mime"

    invoke-direct {v4, v5, v8}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v8

    .line 103
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string/jumbo v5, "object_signing"

    invoke-direct {v4, v5, v9}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v9

    .line 105
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string/jumbo v5, "ssl_ca"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 106
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string/jumbo v5, "s_mime_ca"

    const/4 v6, 0x6

    invoke-direct {v4, v5, v6}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 107
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string/jumbo v5, "object_signing_ca"

    invoke-direct {v4, v5, v7}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 99
    sput-object v3, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    .line 110
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    sput-object v3, Lsun/security/x509/NetscapeCertTypeExtension;->mAttributeNames:Ljava/util/Vector;

    .line 112
    sget-object v3, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    array-length v4, v3

    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 113
    .local v0, "entry":Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;
    sget-object v5, Lsun/security/x509/NetscapeCertTypeExtension;->mAttributeNames:Ljava/util/Vector;

    iget-object v6, v0, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 51
    .end local v0    # "entry":Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;
    :cond_0
    return-void

    .line 82
    :catch_0
    move-exception v1

    .restart local v1    # "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 72
    nop

    :array_0
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 203
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    .line 205
    const/4 v0, 0x0

    new-array v0, v0, [Z

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 2
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 192
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 193
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    .line 194
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    .line 195
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 196
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    .line 191
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bitString"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 163
    new-instance v0, Lsun/security/util/BitArray;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    .line 162
    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    .line 164
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    .line 166
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    .line 161
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 1
    .param p1, "bitString"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 176
    iput-object p1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    .line 177
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    .line 179
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    .line 175
    return-void
.end method

.method private encodeThis()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 129
    .local v0, "os":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/BitArray;

    iget-object v2, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    invoke-direct {v1, v2}, Lsun/security/util/BitArray;-><init>([Z)V

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 130
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    .line 127
    return-void
.end method

.method private static getPosition(Ljava/lang/String;)I
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 119
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    aget-object v1, v1, v0

    iget-object v1, v1, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    aget-object v1, v1, v0

    iget v1, v1, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;->mPosition:I

    return v1

    .line 118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attribute name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 123
    const-string/jumbo v3, "] not recognized by CertAttrSet:NetscapeCertType."

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isSet(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method private set(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "val"    # Z

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 148
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [Z

    .line 149
    .local v0, "tmp":[Z
    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    iget-object v2, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 150
    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    .line 152
    .end local v0    # "tmp":[Z
    :cond_0
    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    aput-boolean p2, v1, p1

    .line 145
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {p1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->set(IZ)V

    .line 232
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    .line 230
    return-void
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 271
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 272
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 273
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    .line 274
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    .line 276
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 277
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 268
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {p1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->mAttributeNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getKeyUsageMappedBits()[Z
    .locals 4

    .prologue
    .line 302
    new-instance v1, Lsun/security/x509/KeyUsageExtension;

    invoke-direct {v1}, Lsun/security/x509/KeyUsageExtension;-><init>()V

    .line 303
    .local v1, "keyUsage":Lsun/security/x509/KeyUsageExtension;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 306
    .local v2, "val":Ljava/lang/Boolean;
    :try_start_0
    const-string/jumbo v3, "ssl_client"

    invoke-static {v3}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 307
    const-string/jumbo v3, "s_mime"

    invoke-static {v3}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v3

    .line 306
    if-nez v3, :cond_0

    .line 308
    const-string/jumbo v3, "object_signing"

    invoke-static {v3}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v3

    .line 306
    if-eqz v3, :cond_1

    .line 309
    :cond_0
    const-string/jumbo v3, "digital_signature"

    invoke-virtual {v1, v3, v2}, Lsun/security/x509/KeyUsageExtension;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    :cond_1
    const-string/jumbo v3, "ssl_server"

    invoke-static {v3}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    const-string/jumbo v3, "key_encipherment"

    invoke-virtual {v1, v3, v2}, Lsun/security/x509/KeyUsageExtension;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    :cond_2
    const-string/jumbo v3, "ssl_ca"

    invoke-static {v3}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 315
    const-string/jumbo v3, "s_mime_ca"

    invoke-static {v3}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v3

    .line 314
    if-nez v3, :cond_3

    .line 316
    const-string/jumbo v3, "object_signing_ca"

    invoke-static {v3}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v3

    .line 314
    if-eqz v3, :cond_4

    .line 317
    :cond_3
    const-string/jumbo v3, "key_certsign"

    invoke-virtual {v1, v3, v2}, Lsun/security/x509/KeyUsageExtension;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lsun/security/x509/KeyUsageExtension;->getBits()[Z

    move-result-object v3

    return-object v3

    .line 318
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    const-string/jumbo v0, "NetscapeCertType"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attribute must be of type Boolean."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 216
    .local v0, "val":Z
    invoke-static {p1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lsun/security/x509/NetscapeCertTypeExtension;->set(IZ)V

    .line 217
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    .line 211
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "NetscapeCertType [\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "s":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "ssl_client"

    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   SSL client\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    :cond_0
    const-string/jumbo v2, "ssl_server"

    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   SSL server\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    :cond_1
    const-string/jumbo v2, "s_mime"

    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   S/MIME\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    :cond_2
    const-string/jumbo v2, "object_signing"

    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   Object Signing\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    :cond_3
    const-string/jumbo v2, "ssl_ca"

    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   SSL CA\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    :cond_4
    const-string/jumbo v2, "s_mime_ca"

    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   S/MIME CA\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    :cond_5
    const-string/jumbo v2, "object_signing_ca"

    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   Object Signing CA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 258
    :cond_6
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    return-object v1

    .line 256
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
