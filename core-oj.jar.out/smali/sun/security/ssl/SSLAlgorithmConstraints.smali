.class final Lsun/security/ssl/SSLAlgorithmConstraints;
.super Ljava/lang/Object;
.source "SSLAlgorithmConstraints.java"

# interfaces
.implements Ljava/security/AlgorithmConstraints;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;,
        Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;,
        Lsun/security/ssl/SSLAlgorithmConstraints$TLSDisabledAlgConstraints;,
        Lsun/security/ssl/SSLAlgorithmConstraints$X509DisabledAlgConstraints;
    }
.end annotation


# static fields
.field private static final tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

.field private static final x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;


# instance fields
.field private enabledX509DisabledAlgConstraints:Z

.field private peerAlgConstraints:Ljava/security/AlgorithmConstraints;

.field private userAlgConstraints:Ljava/security/AlgorithmConstraints;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints$TLSDisabledAlgConstraints;

    invoke-direct {v0}, Lsun/security/ssl/SSLAlgorithmConstraints$TLSDisabledAlgConstraints;-><init>()V

    sput-object v0, Lsun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints$X509DisabledAlgConstraints;

    invoke-direct {v0}, Lsun/security/ssl/SSLAlgorithmConstraints$X509DisabledAlgConstraints;-><init>()V

    sput-object v0, Lsun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    return-void
.end method

.method constructor <init>(Ljava/security/AlgorithmConstraints;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    iput-object p1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    :cond_1
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;

    invoke-direct {v0, p2}, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    :cond_1
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    :cond_1
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;

    invoke-direct {v0, p2}, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    if-eqz v1, :cond_3

    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    :cond_3
    return v0
.end method

.method public permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    if-eqz v1, :cond_3

    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    :cond_3
    return v0
.end method

.method public permits(Ljava/util/Set;Ljava/security/Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/security/Key;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    if-eqz v1, :cond_3

    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    :cond_3
    return v0
.end method
