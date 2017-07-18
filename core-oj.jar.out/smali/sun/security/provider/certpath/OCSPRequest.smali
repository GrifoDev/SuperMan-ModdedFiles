.class Lsun/security/provider/certpath/OCSPRequest;
.super Ljava/lang/Object;
.source "OCSPRequest.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;

.field private static final dump:Z


# instance fields
.field private final certIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            ">;"
        }
    .end annotation
.end field

.field private final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private nonce:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPRequest;->debug:Lsun/security/util/Debug;

    sget-object v0, Lsun/security/provider/certpath/OCSPRequest;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ocsp"

    invoke-static {v0}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lsun/security/provider/certpath/OCSPRequest;->dump:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/provider/certpath/OCSPRequest;->certIds:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/OCSPRequest;->extensions:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/provider/certpath/OCSPRequest;->certIds:Ljava/util/List;

    iput-object p2, p0, Lsun/security/provider/certpath/OCSPRequest;->extensions:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lsun/security/provider/certpath/CertId;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/provider/certpath/OCSPRequest;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method encodeBytes()[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v13, Lsun/security/util/DerOutputStream;

    invoke-direct {v13}, Lsun/security/util/DerOutputStream;-><init>()V

    new-instance v11, Lsun/security/util/DerOutputStream;

    invoke-direct {v11}, Lsun/security/util/DerOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/provider/certpath/OCSPRequest;->certIds:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/provider/certpath/CertId;

    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v2, v4}, Lsun/security/provider/certpath/CertId;->encode(Lsun/security/util/DerOutputStream;)V

    const/16 v14, 0x30

    invoke-virtual {v11, v14, v4}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    goto :goto_0

    :cond_0
    const/16 v14, 0x30

    invoke-virtual {v13, v14, v11}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/provider/certpath/OCSPRequest;->extensions:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    new-instance v7, Lsun/security/util/DerOutputStream;

    invoke-direct {v7}, Lsun/security/util/DerOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/provider/certpath/OCSPRequest;->extensions:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Extension;

    invoke-interface {v5, v7}, Ljava/security/cert/Extension;->encode(Ljava/io/OutputStream;)V

    invoke-interface {v5}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lsun/security/provider/certpath/OCSP;->NONCE_EXTENSION_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v15}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v5}, Ljava/security/cert/Extension;->getValue()[B

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/security/provider/certpath/OCSPRequest;->nonce:[B

    goto :goto_1

    :cond_2
    new-instance v8, Lsun/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    const/16 v14, 0x30

    invoke-virtual {v8, v14, v7}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    const/16 v14, -0x80

    const/4 v15, 0x1

    const/16 v16, 0x2

    invoke-static/range {v14 .. v16}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v14

    invoke-virtual {v13, v14, v8}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    :cond_3
    new-instance v12, Lsun/security/util/DerOutputStream;

    invoke-direct {v12}, Lsun/security/util/DerOutputStream;-><init>()V

    const/16 v14, 0x30

    invoke-virtual {v12, v14, v13}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    new-instance v10, Lsun/security/util/DerOutputStream;

    invoke-direct {v10}, Lsun/security/util/DerOutputStream;-><init>()V

    const/16 v14, 0x30

    invoke-virtual {v10, v14, v12}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-boolean v14, Lsun/security/provider/certpath/OCSPRequest;->dump:Z

    if-eqz v14, :cond_4

    new-instance v9, Lsun/misc/HexDumpEncoder;

    invoke-direct {v9}, Lsun/misc/HexDumpEncoder;-><init>()V

    sget-object v14, Lsun/security/provider/certpath/OCSPRequest;->debug:Lsun/security/util/Debug;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "OCSPRequest bytes...\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9, v1}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method getCertIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/provider/certpath/OCSPRequest;->certIds:Ljava/util/List;

    return-object v0
.end method

.method getNonce()[B
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/OCSPRequest;->nonce:[B

    return-object v0
.end method
