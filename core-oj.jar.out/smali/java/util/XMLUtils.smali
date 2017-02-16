.class Ljava/util/XMLUtils;
.super Ljava/lang/Object;
.source "XMLUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/XMLUtils$EH;,
        Ljava/util/XMLUtils$Resolver;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final EXTERNAL_XML_VERSION:Ljava/lang/String; = "1.0"

.field private static final PROPS_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!-- DTD for properties --><!ELEMENT properties ( comment?, entry* ) ><!ATTLIST properties version CDATA #FIXED \"1.0\"><!ELEMENT comment (#PCDATA) ><!ELEMENT entry (#PCDATA) ><!ATTLIST entry  key CDATA #REQUIRED>"

.field private static final PROPS_DTD_URI:Ljava/lang/String; = "http://java.sun.com/dtd/properties.dtd"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/util/XMLUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/XMLUtils;->-assertionsDisabled:Z

    .line 46
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static emitDocument(Lorg/w3c/dom/Document;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 9
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v6

    .line 167
    .local v6, "tf":Ljavax/xml/transform/TransformerFactory;
    const/4 v3, 0x0

    .line 169
    .local v3, "t":Ljavax/xml/transform/Transformer;
    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 170
    .local v3, "t":Ljavax/xml/transform/Transformer;
    const-string/jumbo v7, "doctype-system"

    const-string/jumbo v8, "http://java.sun.com/dtd/properties.dtd"

    invoke-virtual {v3, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v7, "indent"

    const-string/jumbo v8, "yes"

    invoke-virtual {v3, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v7, "method"

    const-string/jumbo v8, "xml"

    invoke-virtual {v3, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v7, "encoding"

    invoke-virtual {v3, v7, p2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v3    # "t":Ljavax/xml/transform/Transformer;
    :cond_0
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 178
    .local v0, "doms":Ljavax/xml/transform/dom/DOMSource;
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 180
    .local v2, "sr":Ljavax/xml/transform/stream/StreamResult;
    :try_start_1
    invoke-virtual {v3, v0, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    return-void

    .line 174
    .end local v0    # "doms":Ljavax/xml/transform/dom/DOMSource;
    .end local v2    # "sr":Ljavax/xml/transform/stream/StreamResult;
    :catch_0
    move-exception v4

    .line 175
    .local v4, "tce":Ljavax/xml/transform/TransformerConfigurationException;
    sget-boolean v7, Ljava/util/XMLUtils;->-assertionsDisabled:Z

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 181
    .end local v4    # "tce":Ljavax/xml/transform/TransformerConfigurationException;
    .restart local v0    # "doms":Ljavax/xml/transform/dom/DOMSource;
    .restart local v2    # "sr":Ljavax/xml/transform/stream/StreamResult;
    :catch_1
    move-exception v5

    .line 182
    .local v5, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 183
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 184
    throw v1
.end method

.method static getLoadingDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 93
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 94
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 99
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 100
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 102
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 103
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Ljava/util/XMLUtils$Resolver;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/XMLUtils$Resolver;-><init>(Ljava/util/XMLUtils$Resolver;)V

    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 104
    new-instance v4, Ljava/util/XMLUtils$EH;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/XMLUtils$EH;-><init>(Ljava/util/XMLUtils$EH;)V

    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 105
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 106
    .local v2, "is":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 107
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "is":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v3

    .line 108
    .local v3, "x":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method static importProperties(Ljava/util/Properties;Lorg/w3c/dom/Element;)V
    .locals 9
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "propertiesElement"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v5, 0x0

    .line 113
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 114
    .local v0, "entries":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 115
    .local v4, "numEntries":I
    if-lez v4, :cond_0

    .line 116
    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "comment"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 115
    if-eqz v7, :cond_0

    .line 116
    const/4 v5, 0x1

    .line 117
    .local v5, "start":I
    :cond_0
    move v2, v5

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 119
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    instance-of v7, v7, Lorg/w3c/dom/Element;

    if-nez v7, :cond_2

    .line 117
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_2
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 123
    .local v1, "entry":Lorg/w3c/dom/Element;
    const-string/jumbo v7, "key"

    invoke-interface {v1, v7}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 124
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    .line 125
    .local v3, "n":Lorg/w3c/dom/Node;
    if-nez v3, :cond_3

    const-string/jumbo v6, ""

    .line 126
    .local v6, "val":Ljava/lang/String;
    :goto_2
    const-string/jumbo v7, "key"

    invoke-interface {v1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 125
    .end local v6    # "val":Ljava/lang/String;
    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "val":Ljava/lang/String;
    goto :goto_2

    .line 112
    .end local v1    # "entry":Lorg/w3c/dom/Element;
    .end local v3    # "n":Lorg/w3c/dom/Node;
    .end local v6    # "val":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method static load(Ljava/util/Properties;Ljava/io/InputStream;)V
    .locals 7
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/InvalidPropertiesFormatException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {p1}, Ljava/util/XMLUtils;->getLoadingDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 80
    .local v1, "propertiesElement":Lorg/w3c/dom/Element;
    const-string/jumbo v4, "version"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "xmlVersion":Ljava/lang/String;
    const-string/jumbo v4, "1.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 82
    new-instance v4, Ljava/util/InvalidPropertiesFormatException;

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exported Properties file format version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 84
    const-string/jumbo v6, " is not supported. This java installation can read"

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 85
    const-string/jumbo v6, " versions "

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 85
    const-string/jumbo v6, "1.0"

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 85
    const-string/jumbo v6, " or older. You"

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 86
    const-string/jumbo v6, " may need to install a newer version of JDK."

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-direct {v4, v5}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    .end local v1    # "propertiesElement":Lorg/w3c/dom/Element;
    .end local v3    # "xmlVersion":Ljava/lang/String;
    .local v0, "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "saxe":Lorg/xml/sax/SAXException;
    new-instance v4, Ljava/util/InvalidPropertiesFormatException;

    invoke-direct {v4, v2}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 87
    .end local v2    # "saxe":Lorg/xml/sax/SAXException;
    .local v0, "doc":Lorg/w3c/dom/Document;
    .restart local v1    # "propertiesElement":Lorg/w3c/dom/Element;
    .restart local v3    # "xmlVersion":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v1}, Ljava/util/XMLUtils;->importProperties(Ljava/util/Properties;Lorg/w3c/dom/Element;)V

    .line 71
    return-void
.end method

.method static save(Ljava/util/Properties;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 136
    .local v2, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 138
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 142
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    :cond_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    .line 144
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v9, "properties"

    invoke-interface {v3, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v3, v9}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 143
    check-cast v8, Lorg/w3c/dom/Element;

    .line 146
    .local v8, "properties":Lorg/w3c/dom/Element;
    if-eqz p2, :cond_1

    .line 148
    const-string/jumbo v9, "comment"

    invoke-interface {v3, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 147
    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 149
    .local v0, "comments":Lorg/w3c/dom/Element;
    invoke-interface {v3, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v9

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 152
    .end local v0    # "comments":Lorg/w3c/dom/Element;
    :cond_1
    monitor-enter p0

    .line 153
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 155
    .local v5, "key":Ljava/lang/String;
    const-string/jumbo v9, "entry"

    invoke-interface {v3, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 154
    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 156
    .local v4, "entry":Lorg/w3c/dom/Element;
    const-string/jumbo v9, "key"

    invoke-interface {v4, v9, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v9

    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    .end local v4    # "entry":Lorg/w3c/dom/Element;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 139
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "properties":Lorg/w3c/dom/Element;
    .restart local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    :catch_0
    move-exception v7

    .line 140
    .local v7, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    sget-boolean v9, Ljava/util/XMLUtils;->-assertionsDisabled:Z

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "key$iterator":Ljava/util/Iterator;
    .restart local v8    # "properties":Lorg/w3c/dom/Element;
    :cond_2
    monitor-exit p0

    .line 160
    invoke-static {v3, p1, p3}, Ljava/util/XMLUtils;->emitDocument(Lorg/w3c/dom/Document;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 133
    return-void
.end method
