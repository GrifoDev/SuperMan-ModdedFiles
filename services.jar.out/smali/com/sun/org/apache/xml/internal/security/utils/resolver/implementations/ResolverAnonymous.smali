.class public Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverAnonymous;
.super Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;
.source "Unknown"


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverAnonymous:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field private _input:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverAnonymous;->class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverAnonymous:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverAnonymous;->class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverAnonymous:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverAnonymous;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.utils.resolver.implementations.ResolverAnonymous"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverAnonymous;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverAnonymous;->class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverAnonymous:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverAnonymous;->_input:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverAnonymous;->_input:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverAnonymous;->_input:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverAnonymous;->_input:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

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
.method public engineCanResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public engineGetPropertyKeys()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public engineResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverAnonymous;->_input:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    return-object v0
.end method
