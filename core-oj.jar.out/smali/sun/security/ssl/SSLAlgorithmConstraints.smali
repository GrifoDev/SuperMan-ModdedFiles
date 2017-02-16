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

    .prologue
    .line 50
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints$TLSDisabledAlgConstraints;

    invoke-direct {v0}, Lsun/security/ssl/SSLAlgorithmConstraints$TLSDisabledAlgConstraints;-><init>()V

    .line 49
    sput-object v0, Lsun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 52
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints$X509DisabledAlgConstraints;

    invoke-direct {v0}, Lsun/security/ssl/SSLAlgorithmConstraints$X509DisabledAlgConstraints;-><init>()V

    .line 51
    sput-object v0, Lsun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 48
    return-void
.end method

.method constructor <init>(Ljava/security/AlgorithmConstraints;)V
    .locals 1
    .param p1, "algorithmConstraints"    # Ljava/security/AlgorithmConstraints;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 54
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    .line 59
    iput-object p1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 58
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "withDefaultCertPathConstraints"    # Z

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 54
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    .line 76
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    .line 77
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 81
    :cond_0
    if-nez p2, :cond_1

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    .line 75
    :cond_1
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "supportedAlgorithms"    # [Ljava/lang/String;
    .param p3, "withDefaultCertPathConstraints"    # Z

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 54
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    .line 102
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    .line 103
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 106
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;

    invoke-direct {v0, p2}, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;-><init>([Ljava/lang/String;)V

    .line 105
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 109
    :cond_0
    if-nez p3, :cond_1

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    .line 101
    :cond_1
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "withDefaultCertPathConstraints"    # Z

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 54
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    .line 64
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    .line 65
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 69
    :cond_0
    if-nez p2, :cond_1

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    .line 63
    :cond_1
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "supportedAlgorithms"    # [Ljava/lang/String;
    .param p3, "withDefaultCertPathConstraints"    # Z

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 54
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    .line 88
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    .line 89
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 92
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;

    invoke-direct {v0, p2}, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;-><init>([Ljava/lang/String;)V

    .line 91
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 95
    :cond_0
    if-nez p3, :cond_1

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    .line 87
    :cond_1
    return-void
.end method


# virtual methods
.method public permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "parameters"    # Ljava/security/AlgorithmParameters;
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

    .prologue
    .line 117
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v0, 0x1

    .line 119
    .local v0, "permitted":Z
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 124
    .end local v0    # "permitted":Z
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 129
    :cond_1
    if-eqz v0, :cond_2

    .line 130
    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 134
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    if-eqz v1, :cond_3

    .line 135
    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 139
    :cond_3
    return v0
.end method

.method public permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "parameters"    # Ljava/security/AlgorithmParameters;
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

    .prologue
    .line 168
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v0, 0x1

    .line 170
    .local v0, "permitted":Z
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 175
    .end local v0    # "permitted":Z
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 180
    :cond_1
    if-eqz v0, :cond_2

    .line 181
    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 185
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    if-eqz v1, :cond_3

    .line 186
    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 190
    :cond_3
    return v0
.end method

.method public permits(Ljava/util/Set;Ljava/security/Key;)Z
    .locals 2
    .param p2, "key"    # Ljava/security/Key;
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

    .prologue
    .line 144
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v0, 0x1

    .line 146
    .local v0, "permitted":Z
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    .line 150
    .end local v0    # "permitted":Z
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    .line 154
    :cond_1
    if-eqz v0, :cond_2

    .line 155
    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    .line 158
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    if-eqz v1, :cond_3

    .line 159
    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    .line 162
    :cond_3
    return v0
.end method
