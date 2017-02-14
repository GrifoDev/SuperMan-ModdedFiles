.class Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageResolverIterator"
.end annotation


# instance fields
.field _currentResolver:I

.field _resolvers:Ljava/util/Iterator;

.field private final synthetic this$0:Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;Ljava/util/Iterator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;->this$0:Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;->_resolvers:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;->_currentResolver:I

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;->_resolvers:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;->_resolvers:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver$StorageResolverIterator;->_resolvers:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Can\'t remove keys from KeyStore"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
