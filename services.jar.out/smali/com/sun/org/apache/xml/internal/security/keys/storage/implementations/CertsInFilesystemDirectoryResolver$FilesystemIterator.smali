.class Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilesystemIterator"
.end annotation


# instance fields
.field _certs:Ljava/util/List;

.field _i:I

.field private final synthetic this$0:Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->this$0:Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->_certs:Ljava/util/List;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->_certs:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->_i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->_i:I

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->_certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->_certs:Ljava/util/List;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->_i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->_i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
