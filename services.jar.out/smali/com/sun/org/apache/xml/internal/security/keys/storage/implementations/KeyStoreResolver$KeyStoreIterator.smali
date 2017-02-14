.class Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyStoreIterator"
.end annotation


# instance fields
.field _aliases:Ljava/util/Enumeration;

.field _keyStore:Ljava/security/KeyStore;

.field private final synthetic this$0:Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;Ljava/security/KeyStore;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->this$0:Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->_keyStore:Ljava/security/KeyStore;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->_aliases:Ljava/util/Enumeration;

    :try_start_0
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->_keyStore:Ljava/security/KeyStore;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->_keyStore:Ljava/security/KeyStore;

    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->_aliases:Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverException;

    const-string/jumbo v2, "generic.EmptyMessage"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolverException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->_aliases:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->_aliases:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->_keyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Can\'t remove keys from KeyStore"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
