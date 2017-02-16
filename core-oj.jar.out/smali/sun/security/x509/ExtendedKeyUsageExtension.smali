.class public Lsun/security/x509/ExtendedKeyUsageExtension;
.super Lsun/security/x509/Extension;
.source "ExtendedKeyUsageExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.ExtendedKeyUsage"

.field public static final NAME:Ljava/lang/String; = "ExtendedKeyUsage"

.field private static final OCSPSigningOidData:[I

.field public static final USAGES:Ljava/lang/String; = "usages"

.field private static final anyExtendedKeyUsageOidData:[I

.field private static final clientAuthOidData:[I

.field private static final codeSigningOidData:[I

.field private static final emailProtectionOidData:[I

.field private static final ipsecEndSystemOidData:[I

.field private static final ipsecTunnelOidData:[I

.field private static final ipsecUserOidData:[I

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serverAuthOidData:[I

.field private static final timeStampingOidData:[I


# instance fields
.field private keyUsages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    .line 102
    const/4 v0, 0x2

    const/4 v1, 0x5

    const/16 v2, 0x1d

    const/16 v3, 0x25

    const/4 v4, 0x0

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->anyExtendedKeyUsageOidData:[I

    .line 103
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->serverAuthOidData:[I

    .line 104
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->clientAuthOidData:[I

    .line 105
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->codeSigningOidData:[I

    .line 106
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->emailProtectionOidData:[I

    .line 107
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecEndSystemOidData:[I

    .line 108
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecTunnelOidData:[I

    .line 109
    new-array v0, v5, [I

    fill-array-data v0, :array_6

    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecUserOidData:[I

    .line 110
    new-array v0, v5, [I

    fill-array-data v0, :array_7

    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->timeStampingOidData:[I

    .line 111
    new-array v0, v5, [I

    fill-array-data v0, :array_8

    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->OCSPSigningOidData:[I

    .line 114
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->anyExtendedKeyUsageOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string/jumbo v2, "anyExtendedKeyUsage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->serverAuthOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string/jumbo v2, "serverAuth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->clientAuthOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string/jumbo v2, "clientAuth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->codeSigningOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string/jumbo v2, "codeSigning"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->emailProtectionOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string/jumbo v2, "emailProtection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecEndSystemOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string/jumbo v2, "ipsecEndSystem"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecTunnelOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string/jumbo v2, "ipsecTunnel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecUserOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string/jumbo v2, "ipsecUser"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->timeStampingOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string/jumbo v2, "timeStamping"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->OCSPSigningOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string/jumbo v2, "OCSPSigning"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void

    .line 103
    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x1
    .end array-data

    .line 104
    :array_1
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x2
    .end array-data

    .line 105
    :array_2
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x3
    .end array-data

    .line 106
    :array_3
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x4
    .end array-data

    .line 107
    :array_4
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x5
    .end array-data

    .line 108
    :array_5
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x6
    .end array-data

    .line 109
    :array_6
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x7
    .end array-data

    .line 110
    :array_7
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x8
    .end array-data

    .line 111
    :array_8
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x9
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 5
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 184
    sget-object v3, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 185
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->critical:Z

    .line 186
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    .line 187
    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    .line 188
    .local v2, "val":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 189
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Invalid encoding for ExtendedKeyUsageExtension."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 192
    :cond_0
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    .line 193
    :goto_0
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 195
    .local v0, "seq":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    .line 196
    .local v1, "usage":Lsun/security/util/ObjectIdentifier;
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 183
    .end local v0    # "seq":Lsun/security/util/DerValue;
    .end local v1    # "usage":Lsun/security/util/ObjectIdentifier;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/util/Vector;)V
    .locals 1
    .param p1, "critical"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/Vector",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    .local p2, "keyUsages":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 168
    iput-object p2, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    .line 169
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 170
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->critical:Z

    .line 171
    invoke-direct {p0}, Lsun/security/x509/ExtendedKeyUsageExtension;->encodeThis()V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "keyUsages":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Lsun/security/x509/ExtendedKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/util/Vector;)V

    .line 155
    return-void
.end method

.method private encodeThis()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    :cond_0
    iput-object v4, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    .line 135
    return-void

    .line 137
    :cond_1
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 138
    .local v1, "os":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 140
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 141
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_2
    const/16 v3, 0x30

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 145
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    .line 132
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    const-string/jumbo v0, "usages"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    .line 283
    invoke-direct {p0}, Lsun/security/x509/ExtendedKeyUsageExtension;->encodeThis()V

    .line 275
    return-void

    .line 279
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    const-string/jumbo v2, "] not recognized by "

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 281
    const-string/jumbo v2, "CertAttrSet:ExtendedKeyUsageExtension."

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 231
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 232
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 233
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->critical:Z

    .line 235
    invoke-direct {p0}, Lsun/security/x509/ExtendedKeyUsageExtension;->encodeThis()V

    .line 237
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 238
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 230
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    const-string/jumbo v0, "usages"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    return-object v0

    .line 266
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 267
    const-string/jumbo v2, "] not recognized by "

    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    const-string/jumbo v2, "CertAttrSet:ExtendedKeyUsageExtension."

    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getElements()Ljava/util/Enumeration;
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
    .line 291
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 292
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "usages"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 306
    .local v0, "al":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "oid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/ObjectIdentifier;

    .line 307
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    const-string/jumbo v0, "ExtendedKeyUsage"

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
    .line 245
    const-string/jumbo v0, "usages"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    instance-of v0, p2, Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type Vector."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    check-cast p2, Ljava/util/Vector;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    .line 255
    invoke-direct {p0}, Lsun/security/x509/ExtendedKeyUsageExtension;->encodeThis()V

    .line 244
    return-void

    .line 251
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 252
    const-string/jumbo v2, "] not recognized by "

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    const-string/jumbo v2, "CertAttrSet:ExtendedKeyUsageExtension."

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 204
    iget-object v5, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    if-nez v5, :cond_0

    const-string/jumbo v5, ""

    return-object v5

    .line 205
    :cond_0
    const-string/jumbo v4, "  "

    .line 206
    .local v4, "usage":Ljava/lang/String;
    const/4 v0, 0x1

    .line 207
    .local v0, "first":Z
    iget-object v5, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "oid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/ObjectIdentifier;

    .line 208
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v0, :cond_1

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 212
    :cond_1
    sget-object v5, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 213
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 218
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 220
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ExtendedKeyUsages [\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 221
    const-string/jumbo v6, "\n]\n"

    .line 220
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
