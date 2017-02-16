.class Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;
.super Ljava/security/cert/X509CertSelector;
.source "RevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/RevocationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RejectKeySelector"
.end annotation


# instance fields
.field private final badKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1117
    .local p1, "badPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 1118
    iput-object p1, p0, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;->badKeySet:Ljava/util/Set;

    .line 1117
    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/Certificate;)Z
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v2, 0x0

    .line 1130
    invoke-super {p0, p1}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1131
    return v2

    .line 1133
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;->badKeySet:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1134
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-get0()Lsun/security/util/Debug;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1135
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-get0()Lsun/security/util/Debug;

    move-result-object v0

    const-string/jumbo v1, "RejectKeySelector.match: bad key"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1136
    :cond_1
    return v2

    .line 1139
    :cond_2
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-get0()Lsun/security/util/Debug;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1140
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-get0()Lsun/security/util/Debug;

    move-result-object v0

    const-string/jumbo v1, "RejectKeySelector.match: returning true"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1141
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1153
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "RejectKeySelector: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    invoke-super {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;->badKeySet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1156
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
