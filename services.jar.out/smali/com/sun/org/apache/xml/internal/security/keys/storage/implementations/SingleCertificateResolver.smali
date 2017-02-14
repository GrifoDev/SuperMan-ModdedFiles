.class public Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;
.super Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverSpi;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver$InternalIterator;
    }
.end annotation


# instance fields
.field _certificate:Ljava/security/cert/X509Certificate;

.field _iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverSpi;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;->_certificate:Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;->_iterator:Ljava/util/Iterator;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;->_certificate:Ljava/security/cert/X509Certificate;

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver$InternalIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;->_certificate:Ljava/security/cert/X509Certificate;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver$InternalIterator;-><init>(Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;Ljava/security/cert/X509Certificate;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;->_iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;->_iterator:Ljava/util/Iterator;

    return-object v0
.end method
