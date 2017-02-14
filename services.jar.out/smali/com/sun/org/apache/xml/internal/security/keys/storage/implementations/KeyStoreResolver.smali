.class public Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;
.super Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverSpi;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;
    }
.end annotation


# instance fields
.field _iterator:Ljava/util/Iterator;

.field _keyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverSpi;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;->_keyStore:Ljava/security/KeyStore;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;->_iterator:Ljava/util/Iterator;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;->_keyStore:Ljava/security/KeyStore;

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;->_keyStore:Ljava/security/KeyStore;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;-><init>(Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;Ljava/security/KeyStore;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;->_iterator:Ljava/util/Iterator;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    const-string/jumbo v2, "data/com/sun/org/apache/xml/internal/security/samples/input/keystore.jks"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "xmlsecurity"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;-><init>(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->getSKIBytesFromCert(Ljava/security/cert/X509Certificate;)[B

    move-result-object v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;->_iterator:Ljava/util/Iterator;

    return-object v0
.end method
