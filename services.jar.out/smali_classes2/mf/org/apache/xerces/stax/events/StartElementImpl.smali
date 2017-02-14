.class public final Lmf/org/apache/xerces/stax/events/StartElementImpl;
.super Lmf/org/apache/xerces/stax/events/ElementImpl;
.source "StartElementImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/StartElement;


# static fields
.field private static final QNAME_COMPARATOR:Ljava/util/Comparator;


# instance fields
.field private final fAttributes:Ljava/util/Map;

.field private final fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/stax/events/StartElementImpl$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/stax/events/StartElementImpl$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->QNAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Lmf/javax/xml/namespace/NamespaceContext;Lmf/javax/xml/stream/Location;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3, p5}, Lmf/org/apache/xerces/stax/events/ElementImpl;-><init>(Lmf/javax/xml/namespace/QName;ZLjava/util/Iterator;Lmf/javax/xml/stream/Location;)V

    if-nez p2, :cond_3

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    :cond_1
    if-nez p4, :cond_2

    invoke-static {}, Lmf/org/apache/xerces/stax/DefaultNamespaceContext;->getInstance()Lmf/org/apache/xerces/stax/DefaultNamespaceContext;

    move-result-object p4

    :cond_2
    iput-object p4, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

    return-void

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lmf/org/apache/xerces/stax/events/StartElementImpl;->QNAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Attribute;

    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public getAttributeByName(Lmf/javax/xml/namespace/QName;)Lmf/javax/xml/stream/events/Attribute;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Attribute;

    return-object v0
.end method

.method public getAttributes()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/stax/events/StartElementImpl;->createImmutableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartElementImpl;->fNamespaceContext:Lmf/javax/xml/namespace/NamespaceContext;

    invoke-interface {v0, p1}, Lmf/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/16 v0, 0x3c

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartElementImpl;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lmf/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartElementImpl;->getNamespaces()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Namespace;

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/events/Namespace;->writeAsEncodedUnicode(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartElementImpl;->getAttributes()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Attribute;

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/events/Attribute;->writeAsEncodedUnicode(Ljava/io/Writer;)V

    goto :goto_2

    :cond_3
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method
