.class Ljava/util/prefs/XmlSupport;
.super Ljava/lang/Object;
.source "XmlSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/prefs/XmlSupport$EH;,
        Ljava/util/prefs/XmlSupport$Resolver;
    }
.end annotation


# static fields
.field private static final EXTERNAL_XML_VERSION:Ljava/lang/String; = "1.0"

.field private static final MAP_XML_VERSION:Ljava/lang/String; = "1.0"

.field private static final PREFS_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!-- DTD for preferences --><!ELEMENT preferences (root) ><!ATTLIST preferences EXTERNAL_XML_VERSION CDATA \"0.0\"  ><!ELEMENT root (map, node*) ><!ATTLIST root          type (system|user) #REQUIRED ><!ELEMENT node (map, node*) ><!ATTLIST node          name CDATA #REQUIRED ><!ELEMENT map (entry*) ><!ATTLIST map  MAP_XML_VERSION CDATA \"0.0\"  ><!ELEMENT entry EMPTY ><!ATTLIST entry          key CDATA #REQUIRED          value CDATA #REQUIRED >"

.field private static final PREFS_DTD_URI:Ljava/lang/String; = "http://java.sun.com/dtd/preferences.dtd"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ImportPrefs(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V
    .locals 6
    .param p0, "prefsNode"    # Ljava/util/prefs/Preferences;
    .param p1, "map"    # Lorg/w3c/dom/Element;

    .prologue
    .line 353
    invoke-static {p1}, Ljava/util/prefs/XmlSupport;->getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v0

    .line 354
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "numEntries":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 355
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 356
    .local v1, "entry":Lorg/w3c/dom/Element;
    const-string/jumbo v4, "key"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "value"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/util/prefs/Preferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "entry":Lorg/w3c/dom/Element;
    :cond_0
    return-void
.end method

.method private static ImportSubtree(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V
    .locals 9
    .param p0, "prefsNode"    # Ljava/util/prefs/Preferences;
    .param p1, "xmlNode"    # Lorg/w3c/dom/Element;

    .prologue
    .line 314
    invoke-static {p1}, Ljava/util/prefs/XmlSupport;->getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v5

    .local v5, "xmlKids":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    move-object v6, p0

    .line 324
    check-cast v6, Ljava/util/prefs/AbstractPreferences;

    iget-object v7, v6, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 326
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    monitor-exit v7

    .line 327
    return-void

    .line 331
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 332
    .local v1, "firstXmlKid":Lorg/w3c/dom/Element;
    invoke-static {p0, v1}, Ljava/util/prefs/XmlSupport;->ImportPrefs(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    .line 333
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    new-array v3, v6, [Ljava/util/prefs/Preferences;

    .line 336
    .local v3, "prefsKids":[Ljava/util/prefs/Preferences;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 337
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 338
    .local v4, "xmlKid":Lorg/w3c/dom/Element;
    add-int/lit8 v6, v2, -0x1

    const-string/jumbo v8, "name"

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v8

    aput-object v8, v3, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "xmlKid":Lorg/w3c/dom/Element;
    :cond_1
    monitor-exit v7

    .line 342
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 343
    add-int/lit8 v6, v2, -0x1

    aget-object v7, v3, v6

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-static {v7, v6}, Ljava/util/prefs/XmlSupport;->ImportSubtree(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 324
    .end local v1    # "firstXmlKid":Lorg/w3c/dom/Element;
    .end local v2    # "i":I
    .end local v3    # "prefsKids":[Ljava/util/prefs/Preferences;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 312
    .restart local v1    # "firstXmlKid":Lorg/w3c/dom/Element;
    .restart local v2    # "i":I
    .restart local v3    # "prefsKids":[Ljava/util/prefs/Preferences;
    :cond_2
    return-void
.end method

.method private static createPrefsDoc(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 5
    .param p0, "qname"    # Ljava/lang/String;

    .prologue
    .line 235
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 237
    .local v0, "di":Lorg/w3c/dom/DOMImplementation;
    const-string/jumbo v3, "http://java.sun.com/dtd/preferences.dtd"

    const/4 v4, 0x0

    invoke-interface {v0, p0, v4, v3}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v1

    .line 238
    .local v1, "dt":Lorg/w3c/dom/DocumentType;
    const/4 v3, 0x0

    invoke-interface {v0, v3, p0, v1}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 239
    .end local v0    # "di":Lorg/w3c/dom/DOMImplementation;
    .end local v1    # "dt":Lorg/w3c/dom/DocumentType;
    :catch_0
    move-exception v2

    .line 240
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method static export(Ljava/io/OutputStream;Ljava/util/prefs/Preferences;Z)V
    .locals 10
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "p"    # Ljava/util/prefs/Preferences;
    .param p2, "subTree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    move-object v8, p1

    .line 100
    check-cast v8, Ljava/util/prefs/AbstractPreferences;

    invoke-virtual {v8}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 101
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Node has been removed"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 102
    :cond_0
    const-string/jumbo v8, "preferences"

    invoke-static {v8}, Ljava/util/prefs/XmlSupport;->createPrefsDoc(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 103
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    .line 104
    .local v6, "preferences":Lorg/w3c/dom/Element;
    const-string/jumbo v8, "EXTERNAL_XML_VERSION"

    const-string/jumbo v9, "1.0"

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v8, "root"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 105
    check-cast v7, Lorg/w3c/dom/Element;

    .line 107
    .local v7, "xmlRoot":Lorg/w3c/dom/Element;
    const-string/jumbo v9, "type"

    invoke-virtual {p1}, Ljava/util/prefs/Preferences;->isUserNode()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "user"

    :goto_0
    invoke-interface {v7, v9, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "ancestors":Ljava/util/List;
    move-object v5, p1

    .local v5, "kid":Ljava/util/prefs/Preferences;
    invoke-virtual {p1}, Ljava/util/prefs/Preferences;->parent()Ljava/util/prefs/Preferences;

    move-result-object v1

    .local v1, "dad":Ljava/util/prefs/Preferences;
    :goto_1
    if-eqz v1, :cond_2

    .line 114
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    move-object v5, v1

    invoke-virtual {v1}, Ljava/util/prefs/Preferences;->parent()Ljava/util/prefs/Preferences;

    move-result-object v1

    goto :goto_1

    .line 107
    .end local v0    # "ancestors":Ljava/util/List;
    .end local v1    # "dad":Ljava/util/prefs/Preferences;
    .end local v5    # "kid":Ljava/util/prefs/Preferences;
    :cond_1
    const-string/jumbo v8, "system"

    goto :goto_0

    .line 116
    .restart local v0    # "ancestors":Ljava/util/List;
    .restart local v1    # "dad":Ljava/util/prefs/Preferences;
    .restart local v5    # "kid":Ljava/util/prefs/Preferences;
    :cond_2
    move-object v3, v7

    .line 117
    .local v3, "e":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_3

    .line 118
    const-string/jumbo v8, "map"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 119
    const-string/jumbo v8, "node"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    .end local v3    # "e":Lorg/w3c/dom/Element;
    check-cast v3, Lorg/w3c/dom/Element;

    .line 120
    .restart local v3    # "e":Lorg/w3c/dom/Element;
    const-string/jumbo v9, "name"

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/prefs/Preferences;

    invoke-virtual {v8}, Ljava/util/prefs/Preferences;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v9, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 122
    :cond_3
    invoke-static {v3, v2, p1, p2}, Ljava/util/prefs/XmlSupport;->putPreferencesInXml(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/util/prefs/Preferences;Z)V

    .line 124
    invoke-static {v2, p0}, Ljava/util/prefs/XmlSupport;->writeDoc(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V

    .line 99
    return-void
.end method

.method static exportMap(Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 7
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    const-string/jumbo v5, "map"

    invoke-static {v5}, Ljava/util/prefs/XmlSupport;->createPrefsDoc(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 370
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 371
    .local v4, "xmlMap":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "MAP_XML_VERSION"

    const-string/jumbo v6, "1.0"

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 374
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 376
    .local v1, "e":Ljava/util/Map$Entry;
    const-string/jumbo v5, "entry"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 375
    check-cast v3, Lorg/w3c/dom/Element;

    .line 377
    .local v3, "xe":Lorg/w3c/dom/Element;
    const-string/jumbo v6, "key"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string/jumbo v6, "value"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v3    # "xe":Lorg/w3c/dom/Element;
    :cond_0
    invoke-static {v0, p0}, Ljava/util/prefs/XmlSupport;->writeDoc(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V

    .line 368
    return-void
.end method

.method private static getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 4
    .param p0, "node"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 297
    .local v2, "xmlKids":Lorg/w3c/dom/NodeList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    .local v0, "elements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 299
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v3, v3, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 300
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_1
    return-object v0
.end method

.method static importMap(Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 11
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "m"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/InvalidPreferencesFormatException;
        }
    .end annotation

    .prologue
    .line 401
    :try_start_0
    invoke-static {p0}, Ljava/util/prefs/XmlSupport;->loadPrefsDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 402
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    .line 404
    .local v7, "xmlMap":Lorg/w3c/dom/Element;
    const-string/jumbo v8, "MAP_XML_VERSION"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "mapVersion":Ljava/lang/String;
    const-string/jumbo v8, "1.0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_0

    .line 406
    new-instance v8, Ljava/util/prefs/InvalidPreferencesFormatException;

    .line 407
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Preferences map file format version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 408
    const-string/jumbo v10, " is not supported. This java installation can read"

    .line 407
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 409
    const-string/jumbo v10, " versions "

    .line 407
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 409
    const-string/jumbo v10, "1.0"

    .line 407
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 409
    const-string/jumbo v10, " or older. You may need"

    .line 407
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 410
    const-string/jumbo v10, " to install a newer version of JDK."

    .line 407
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 406
    invoke-direct {v8, v9}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "mapVersion":Ljava/lang/String;
    .end local v7    # "xmlMap":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v8, Ljava/util/prefs/InvalidPreferencesFormatException;

    invoke-direct {v8, v1}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 412
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "mapVersion":Ljava/lang/String;
    .restart local v7    # "xmlMap":Lorg/w3c/dom/Element;
    :cond_0
    :try_start_1
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 413
    .local v2, "entries":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .local v6, "numEntries":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 417
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    instance-of v8, v8, Lorg/w3c/dom/Element;

    if-nez v8, :cond_1

    .line 413
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 420
    :cond_1
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 421
    .local v3, "entry":Lorg/w3c/dom/Element;
    const-string/jumbo v8, "key"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 398
    .end local v3    # "entry":Lorg/w3c/dom/Element;
    :cond_2
    return-void
.end method

.method static importPreferences(Ljava/io/InputStream;)V
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/InvalidPreferencesFormatException;
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    invoke-static {p0}, Ljava/util/prefs/XmlSupport;->loadPrefsDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 202
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    const-string/jumbo v7, "EXTERNAL_XML_VERSION"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "xmlVersion":Ljava/lang/String;
    const-string/jumbo v6, "1.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    .line 204
    new-instance v6, Ljava/util/prefs/InvalidPreferencesFormatException;

    .line 205
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exported preferences file format version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 206
    const-string/jumbo v8, " is not supported. This java installation can read"

    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 207
    const-string/jumbo v8, " versions "

    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 207
    const-string/jumbo v8, "1.0"

    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 207
    const-string/jumbo v8, " or older. You may need"

    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 208
    const-string/jumbo v8, " to install a newer version of JDK."

    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 204
    invoke-direct {v6, v7}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "xmlVersion":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v6, Ljava/util/prefs/InvalidPreferencesFormatException;

    invoke-direct {v6, v1}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 210
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "xmlVersion":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 213
    .local v4, "xmlRoot":Lorg/w3c/dom/Element;
    const-string/jumbo v6, "root"

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 214
    .local v2, "elements":Lorg/w3c/dom/NodeList;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 215
    :cond_1
    new-instance v6, Ljava/util/prefs/InvalidPreferencesFormatException;

    const-string/jumbo v7, "invalid root node"

    invoke-direct {v6, v7}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 218
    :cond_2
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .end local v4    # "xmlRoot":Lorg/w3c/dom/Element;
    check-cast v4, Lorg/w3c/dom/Element;

    .line 222
    .restart local v4    # "xmlRoot":Lorg/w3c/dom/Element;
    const-string/jumbo v6, "type"

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 223
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v3

    .line 224
    .local v3, "prefsRoot":Ljava/util/prefs/Preferences;
    :goto_0
    invoke-static {v3, v4}, Ljava/util/prefs/XmlSupport;->ImportSubtree(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    .line 197
    return-void

    .line 223
    .end local v3    # "prefsRoot":Ljava/util/prefs/Preferences;
    :cond_3
    invoke-static {}, Ljava/util/prefs/Preferences;->systemRoot()Ljava/util/prefs/Preferences;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method private static loadPrefsDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 251
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 252
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 255
    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 256
    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 258
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 259
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/util/prefs/XmlSupport$Resolver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/prefs/XmlSupport$Resolver;-><init>(Ljava/util/prefs/XmlSupport$Resolver;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 260
    new-instance v3, Ljava/util/prefs/XmlSupport$EH;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/prefs/XmlSupport$EH;-><init>(Ljava/util/prefs/XmlSupport$EH;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 261
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 262
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    :catch_0
    move-exception v2

    .line 263
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private static putPreferencesInXml(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/util/prefs/Preferences;Z)V
    .locals 12
    .param p0, "elt"    # Lorg/w3c/dom/Element;
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "prefs"    # Ljava/util/prefs/Preferences;
    .param p3, "subTree"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v5, 0x0

    .line 143
    .local v5, "kidsCopy":[Ljava/util/prefs/Preferences;
    const/4 v4, 0x0

    .local v4, "kidNames":[Ljava/lang/String;
    move-object v8, p2

    .line 148
    check-cast v8, Ljava/util/prefs/AbstractPreferences;

    iget-object v9, v8, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 151
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 152
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, p0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 153
    return-void

    .line 156
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "keys":[Ljava/lang/String;
    const-string/jumbo v8, "map"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {p0, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 158
    .local v6, "map":Lorg/w3c/dom/Element;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v3

    if-ge v2, v8, :cond_1

    .line 160
    const-string/jumbo v8, "entry"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 159
    check-cast v1, Lorg/w3c/dom/Element;

    .line 161
    .local v1, "entry":Lorg/w3c/dom/Element;
    const-string/jumbo v8, "key"

    aget-object v10, v3, v2

    invoke-interface {v1, v8, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v8, "value"

    aget-object v10, v3, v2

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v8, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "entry":Lorg/w3c/dom/Element;
    :cond_1
    if-eqz p3, :cond_2

    .line 168
    invoke-virtual {p2}, Ljava/util/prefs/Preferences;->childrenNames()[Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "kidNames":[Ljava/lang/String;
    array-length v8, v4

    new-array v5, v8, [Ljava/util/prefs/Preferences;

    .line 170
    .local v5, "kidsCopy":[Ljava/util/prefs/Preferences;
    const/4 v2, 0x0

    :goto_1
    array-length v8, v4

    if-ge v2, v8, :cond_2

    .line 171
    aget-object v8, v4, v2

    invoke-virtual {p2, v8}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v8

    aput-object v8, v5, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4    # "kidNames":[Ljava/lang/String;
    .end local v5    # "kidsCopy":[Ljava/util/prefs/Preferences;
    :cond_2
    monitor-exit v9

    .line 176
    if-eqz p3, :cond_3

    .line 177
    const/4 v2, 0x0

    :goto_2
    array-length v8, v4

    if-ge v2, v8, :cond_3

    .line 179
    const-string/jumbo v8, "node"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {p0, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 178
    check-cast v7, Lorg/w3c/dom/Element;

    .line 180
    .local v7, "xmlKid":Lorg/w3c/dom/Element;
    const-string/jumbo v8, "name"

    aget-object v9, v4, v2

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    aget-object v8, v5, v2

    invoke-static {v7, p1, v8, p3}, Ljava/util/prefs/XmlSupport;->putPreferencesInXml(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/util/prefs/Preferences;Z)V

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 148
    .end local v2    # "i":I
    .end local v3    # "keys":[Ljava/lang/String;
    .end local v6    # "map":Lorg/w3c/dom/Element;
    .end local v7    # "xmlKid":Lorg/w3c/dom/Element;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 140
    .restart local v2    # "i":I
    .restart local v3    # "keys":[Ljava/lang/String;
    .restart local v6    # "map":Lorg/w3c/dom/Element;
    :cond_3
    return-void
.end method

.method private static final writeDoc(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V
    .locals 9
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 276
    .local v3, "tf":Ljavax/xml/transform/TransformerFactory;
    :try_start_1
    const-string/jumbo v4, "indent-number"

    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 282
    .local v2, "t":Ljavax/xml/transform/Transformer;
    const-string/jumbo v4, "doctype-system"

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string/jumbo v4, "indent"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v4, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 289
    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v7, p1, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v5, v6}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 288
    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 271
    return-void

    .line 290
    .end local v2    # "t":Ljavax/xml/transform/Transformer;
    .end local v3    # "tf":Ljavax/xml/transform/TransformerFactory;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 277
    .end local v0    # "e":Ljavax/xml/transform/TransformerException;
    .restart local v3    # "tf":Ljavax/xml/transform/TransformerFactory;
    :catch_1
    move-exception v1

    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method
