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

    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    iput-object p1, p0, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;->badKeySet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/Certificate;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;->badKeySet:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-get0()Lsun/security/util/Debug;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-get0()Lsun/security/util/Debug;

    move-result-object v0

    const-string/jumbo v1, "RejectKeySelector.match: bad key"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    return v2

    :cond_2
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-get0()Lsun/security/util/Debug;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-get0()Lsun/security/util/Debug;

    move-result-object v0

    const-string/jumbo v1, "RejectKeySelector.match: returning true"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RejectKeySelector: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;->badKeySet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
