.class public final Lmf/org/apache/xerces/stax/events/NamespaceImpl;
.super Lmf/org/apache/xerces/stax/events/AttributeImpl;
.source "NamespaceImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/Namespace;


# instance fields
.field private final fNamespaceURI:Ljava/lang/String;

.field private final fPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmf/javax/xml/stream/Location;)V
    .locals 7

    const/4 v4, 0x0

    const/16 v1, 0xd

    invoke-static {p1}, Lmf/org/apache/xerces/stax/events/NamespaceImpl;->makeAttributeQName(Ljava/lang/String;)Lmf/javax/xml/namespace/QName;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/stax/events/AttributeImpl;-><init>(ILmf/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLmf/javax/xml/stream/Location;)V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/NamespaceImpl;->fPrefix:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/stax/events/NamespaceImpl;->fNamespaceURI:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method private static makeAttributeQName(Ljava/lang/String;)Lmf/javax/xml/namespace/QName;
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v2, "xmlns"

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v2, "xmlns"

    invoke-direct {v0, v1, p0, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/NamespaceImpl;->fNamespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/NamespaceImpl;->fPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultNamespaceDeclaration()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/NamespaceImpl;->fPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
