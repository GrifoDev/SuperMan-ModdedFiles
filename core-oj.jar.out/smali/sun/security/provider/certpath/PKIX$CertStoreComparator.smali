.class Lsun/security/provider/certpath/PKIX$CertStoreComparator;
.super Ljava/lang/Object;
.source "PKIX.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/PKIX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CertStoreComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/security/cert/CertStore;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsun/security/provider/certpath/PKIX$CertStoreComparator;)V
    .locals 0

    invoke-direct {p0}, Lsun/security/provider/certpath/PKIX$CertStoreComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/security/cert/CertStore;

    check-cast p2, Ljava/security/cert/CertStore;

    invoke-virtual {p0, p1, p2}, Lsun/security/provider/certpath/PKIX$CertStoreComparator;->compare(Ljava/security/cert/CertStore;Ljava/security/cert/CertStore;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/security/cert/CertStore;Ljava/security/cert/CertStore;)I
    .locals 2

    invoke-virtual {p1}, Ljava/security/cert/CertStore;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Collection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/security/cert/CertStore;->getCertStoreParameters()Ljava/security/cert/CertStoreParameters;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CollectionCertStoreParameters;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
