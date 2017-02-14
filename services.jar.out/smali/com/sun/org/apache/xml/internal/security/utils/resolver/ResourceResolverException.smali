.class public Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;
.super Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
.source "Unknown"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field _BaseURI:Ljava/lang/String;

.field _uri:Lorg/w3c/dom/Attr;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Lorg/w3c/dom/Attr;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_uri:Lorg/w3c/dom/Attr;

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_uri:Lorg/w3c/dom/Attr;

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_BaseURI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Attr;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_uri:Lorg/w3c/dom/Attr;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_uri:Lorg/w3c/dom/Attr;

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_BaseURI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;Lorg/w3c/dom/Attr;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_uri:Lorg/w3c/dom/Attr;

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_uri:Lorg/w3c/dom/Attr;

    iput-object p5, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_BaseURI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Attr;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_uri:Lorg/w3c/dom/Attr;

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_uri:Lorg/w3c/dom/Attr;

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_BaseURI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_BaseURI:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Lorg/w3c/dom/Attr;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_uri:Lorg/w3c/dom/Attr;

    return-object v0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_BaseURI:Ljava/lang/String;

    return-void
.end method

.method public setURI(Lorg/w3c/dom/Attr;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;->_uri:Lorg/w3c/dom/Attr;

    return-void
.end method
