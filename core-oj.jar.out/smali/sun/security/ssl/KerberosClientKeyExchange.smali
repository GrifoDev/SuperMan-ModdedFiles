.class public Lsun/security/ssl/KerberosClientKeyExchange;
.super Lsun/security/ssl/HandshakeMessage;
.source "KerberosClientKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/KerberosClientKeyExchange$1;
    }
.end annotation


# static fields
.field private static final IMPL_CLASS:Ljava/lang/String; = "sun.security.ssl.krb5.KerberosClientKeyExchangeImpl"

.field private static final implClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final impl:Lsun/security/ssl/KerberosClientKeyExchange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/security/ssl/KerberosClientKeyExchange$1;

    invoke-direct {v0}, Lsun/security/ssl/KerberosClientKeyExchange$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    sput-object v0, Lsun/security/ssl/KerberosClientKeyExchange;->implClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    invoke-direct {p0}, Lsun/security/ssl/KerberosClientKeyExchange;->createImpl()Lsun/security/ssl/KerberosClientKeyExchange;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/security/AccessControlContext;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    invoke-direct {p0}, Lsun/security/ssl/KerberosClientKeyExchange;->createImpl()Lsun/security/ssl/KerberosClientKeyExchange;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lsun/security/ssl/KerberosClientKeyExchange;->init(Ljava/lang/String;ZLjava/security/AccessControlContext;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Kerberos is unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;[Ljavax/crypto/SecretKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    invoke-direct {p0}, Lsun/security/ssl/KerberosClientKeyExchange;->createImpl()Lsun/security/ssl/KerberosClientKeyExchange;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lsun/security/ssl/KerberosClientKeyExchange;->init(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;[Ljavax/crypto/SecretKey;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Kerberos is unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createImpl()Lsun/security/ssl/KerberosClientKeyExchange;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lsun/security/ssl/KerberosClientKeyExchange;

    if-ne v2, v3, :cond_0

    :try_start_0
    sget-object v2, Lsun/security/ssl/KerberosClientKeyExchange;->implClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/ssl/KerberosClientKeyExchange;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    invoke-virtual {v0}, Lsun/security/ssl/KerberosClientKeyExchange;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    invoke-virtual {v0}, Lsun/security/ssl/KerberosClientKeyExchange;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getUnencryptedPreMasterSecret()[B
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    invoke-virtual {v0}, Lsun/security/ssl/KerberosClientKeyExchange;->getUnencryptedPreMasterSecret()[B

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;ZLjava/security/AccessControlContext;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/KerberosClientKeyExchange;->init(Ljava/lang/String;ZLjava/security/AccessControlContext;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;)V

    :cond_0
    return-void
.end method

.method public init(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;[Ljavax/crypto/SecretKey;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/KerberosClientKeyExchange;->init(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;[Ljavax/crypto/SecretKey;)V

    :cond_0
    return-void
.end method

.method public messageLength()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    invoke-virtual {v0}, Lsun/security/ssl/KerberosClientKeyExchange;->messageLength()I

    move-result v0

    return v0
.end method

.method messageType()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    invoke-virtual {v0, p1}, Lsun/security/ssl/KerberosClientKeyExchange;->print(Ljava/io/PrintStream;)V

    return-void
.end method

.method public send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    invoke-virtual {v0, p1}, Lsun/security/ssl/KerberosClientKeyExchange;->send(Lsun/security/ssl/HandshakeOutStream;)V

    return-void
.end method
