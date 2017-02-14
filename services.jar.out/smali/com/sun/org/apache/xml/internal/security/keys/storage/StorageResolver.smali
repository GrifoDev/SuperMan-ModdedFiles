.class public Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;
    }
.end annotation


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$keys$storage$StorageResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _iterator:Ljava/util/Iterator;

.field _storageResolvers:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->class$com$sun$org$apache$xml$internal$security$keys$storage$StorageResolver:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->class$com$sun$org$apache$xml$internal$security$keys$storage$StorageResolver:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->class$com$sun$org$apache$xml$internal$security$keys$storage$StorageResolver:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_storageResolvers:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_iterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverSpi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_storageResolvers:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_iterator:Ljava/util/Iterator;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->add(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverSpi;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_storageResolvers:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_iterator:Ljava/util/Iterator;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->add(Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_storageResolvers:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_iterator:Ljava/util/Iterator;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->add(Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public add(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverSpi;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_storageResolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_iterator:Ljava/util/Iterator;

    return-void
.end method

.method public add(Ljava/security/KeyStore;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;-><init>(Ljava/security/KeyStore;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->add(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverSpi;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v3, "Could not add KeyStore because of: "

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public add(Ljava/security/cert/X509Certificate;)V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/SingleCertificateResolver;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->add(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverSpi;)V

    return-void
.end method

.method public getIterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_iterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_iterator:Ljava/util/Iterator;

    return-object v0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_storageResolvers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;-><init>(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;Ljava/util/Iterator;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_iterator:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_iterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_storageResolvers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;-><init>(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;Ljava/util/Iterator;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_iterator:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public next()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->_iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    return-object v0
.end method
