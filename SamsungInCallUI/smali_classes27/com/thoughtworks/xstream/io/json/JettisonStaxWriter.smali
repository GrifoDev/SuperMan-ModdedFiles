.class public Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;
.super Lcom/thoughtworks/xstream/io/xml/StaxWriter;
.source "JettisonStaxWriter.java"


# instance fields
.field private final convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    iput-object p4, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;)V

    iput-object p3, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    iput-object p6, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZ)V

    iput-object p5, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    return-void
.end method


# virtual methods
.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 7

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v1

    if-eqz p2, :cond_1

    instance-of v5, v1, Lorg/codehaus/jettison/AbstractXMLStreamWriter;

    if-eqz v5, :cond_1

    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->getQNameMap()Lcom/thoughtworks/xstream/io/xml/QNameMap;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/thoughtworks/xstream/io/xml/QNameMap;->getQName(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v4, v6}, Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;->createKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v1

    check-cast v5, Lorg/codehaus/jettison/AbstractXMLStreamWriter;

    invoke-virtual {v5}, Lorg/codehaus/jettison/AbstractXMLStreamWriter;->getSerializedAsArrays()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    check-cast v1, Lorg/codehaus/jettison/AbstractXMLStreamWriter;

    invoke-virtual {v1, v0}, Lorg/codehaus/jettison/AbstractXMLStreamWriter;->seriliazeAsArray(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->startNode(Ljava/lang/String;)V

    return-void
.end method
