.class public Lcom/sun/org/apache/xml/internal/security/Init;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final CONF_NS:Ljava/lang/String; = "http://www.xmlsecurity.org/NS/#configuration"

.field private static _alreadyInitialized:Z

.field static synthetic class$com$sun$org$apache$xml$internal$security$Init:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/Init;->class$com$sun$org$apache$xml$internal$security$Init:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/Init;->class$com$sun$org$apache$xml$internal$security$Init:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/Init;->_alreadyInitialized:Z

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.Init"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/Init;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/Init;->class$com$sun$org$apache$xml$internal$security$Init:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static declared-synchronized init()V
    .locals 59

    const-class v38, Lcom/sun/org/apache/xml/internal/security/Init;

    monitor-enter v38

    :try_start_0
    sget-boolean v4, Lcom/sun/org/apache/xml/internal/security/Init;->_alreadyInitialized:Z

    if-nez v4, :cond_2

    const-wide/16 v36, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v18, 0x0

    const/4 v4, 0x1

    sput-boolean v4, Lcom/sun/org/apache/xml/internal/security/Init;->_alreadyInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    const-string/jumbo v4, "com.sun.org.apache.xml.internal.security.resource.config"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "com.sun.org.apache.xml.internal.security.Init"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-nez v4, :cond_0

    const-string/jumbo v4, "resource/config.xml"

    :cond_0
    invoke-virtual {v6, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    const-wide/16 v16, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v50

    :try_start_2
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->init()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_3

    :cond_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    :goto_1
    if-nez v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v39, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v54, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v39

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v39

    if-nez v39, :cond_23

    :goto_2
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_24

    :goto_3
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_25

    :goto_4
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_26

    :goto_5
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_27

    :goto_6
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_28

    :goto_7
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_29

    :goto_8
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_2a

    :goto_9
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_2b

    :goto_a
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_2c

    :goto_b
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_2d

    :goto_c
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-nez v4, :cond_2e

    :goto_d
    monitor-exit v38

    return-void

    :cond_2
    monitor-exit v38

    return-void

    :catch_0
    move-exception v4

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v4

    :try_start_5
    sget-object v5, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v7, "Bad: "

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v4

    monitor-exit v38

    throw v4

    :cond_3
    :try_start_6
    const-string/jumbo v5, "Configuration"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    goto/16 :goto_0

    :cond_4
    instance-of v4, v5, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_6

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v4, "ResourceBundles"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :goto_e
    const-string/jumbo v4, "CanonicalizationMethods"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :goto_f
    const-string/jumbo v4, "TransformAlgorithms"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    :goto_10
    const-string/jumbo v4, "JCEAlgorithmMappings"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    :goto_11
    const-string/jumbo v4, "SignatureAlgorithms"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    :goto_12
    const-string/jumbo v4, "ResourceResolvers"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    :cond_5
    const-string/jumbo v4, "KeyResolver"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    :goto_13
    const-string/jumbo v4, "PrefixMappings"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    :cond_6
    :goto_14
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object v0, v5

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v0

    const-string/jumbo v36, "defaultLanguageCode"

    move-object/from16 v0, v36

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v36

    const-string/jumbo v37, "defaultCountryCode"

    move-object/from16 v0, v37

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v37

    if-eqz v36, :cond_8

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v36, v4

    :goto_15
    if-eqz v37, :cond_9

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    :goto_16
    move-object/from16 v0, v36

    invoke-static {v0, v4}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->init(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    goto/16 :goto_e

    :cond_8
    const/4 v4, 0x0

    move-object/from16 v36, v4

    goto :goto_15

    :cond_9
    const/4 v4, 0x0

    goto :goto_16

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->init()V

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    const-string/jumbo v32, "http://www.xmlsecurity.org/NS/#configuration"

    const-string/jumbo v33, "CanonicalizationMethod"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v4, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v32

    const/4 v4, 0x0

    :goto_17
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v4, v0, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    goto/16 :goto_f

    :cond_b
    aget-object v33, v32, v4

    const-string/jumbo v54, "URI"

    const/16 v55, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v55

    move-object/from16 v2, v54

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    aget-object v54, v32, v4

    const-string/jumbo v55, "JAVACLASS"

    const/16 v56, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v54

    :try_start_7
    invoke-static/range {v54 .. v54}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v55, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v55 .. v56}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v55

    if-nez v55, :cond_c

    :goto_18
    move-object/from16 v0, v33

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->register(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_c
    sget-object v55, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v57, Ljava/lang/StringBuffer;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v58, "Canonicalizer.register("

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string/jumbo v58, ", "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string/jumbo v58, ")"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v55 .. v57}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_18

    :catch_2
    move-exception v55

    const/16 v55, 0x2

    :try_start_8
    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    aput-object v33, v55, v56

    const/16 v33, 0x1

    aput-object v54, v55, v33

    sget-object v33, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v54, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v56, "algorithm.classDoesNotExist"

    move-object/from16 v0, v56

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v33

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_19

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->init()V

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    const-string/jumbo v20, "http://www.xmlsecurity.org/NS/#configuration"

    const-string/jumbo v21, "TransformAlgorithm"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v4, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v20

    const/4 v4, 0x0

    :goto_1a
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v4, v0, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    goto/16 :goto_10

    :cond_e
    aget-object v21, v20, v4

    const-string/jumbo v54, "URI"

    const/16 v55, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    move-object/from16 v2, v54

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aget-object v54, v20, v4

    const-string/jumbo v55, "JAVACLASS"

    const/16 v56, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v54

    :try_start_9
    invoke-static/range {v54 .. v54}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v55, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v55 .. v56}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v55

    if-nez v55, :cond_f

    :goto_1b
    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->register(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_f
    sget-object v55, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v57, Ljava/lang/StringBuffer;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v58, "Transform.register("

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string/jumbo v58, ", "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string/jumbo v58, ")"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v55 .. v57}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1b

    :catch_3
    move-exception v55

    const/16 v55, 0x2

    :try_start_a
    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    aput-object v21, v55, v56

    const/16 v21, 0x1

    aput-object v54, v55, v21

    sget-object v21, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v54, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v56, "algorithm.classDoesNotExist"

    move-object/from16 v0, v56

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1c

    :catch_4
    move-exception v21

    sget-object v21, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v54, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v55, "Not able to found dependecies for algorithm, I\'m keep working."

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1c

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object v0, v5

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->init(Lorg/w3c/dom/Element;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    goto/16 :goto_11

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->providerInit()V

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    const-string/jumbo v22, "http://www.xmlsecurity.org/NS/#configuration"

    const-string/jumbo v23, "SignatureAlgorithm"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v4, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v22

    const/4 v4, 0x0

    :goto_1d
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v4, v0, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    goto/16 :goto_12

    :cond_12
    aget-object v23, v22, v4

    const-string/jumbo v54, "URI"

    const/16 v55, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v55

    move-object/from16 v2, v54

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    aget-object v54, v22, v4

    const-string/jumbo v55, "JAVACLASS"

    const/16 v56, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v54

    :try_start_b
    invoke-static/range {v54 .. v54}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v55, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v55 .. v56}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v55

    if-nez v55, :cond_13

    :goto_1e
    move-object/from16 v0, v23

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->register(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_13
    sget-object v55, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v57, Ljava/lang/StringBuffer;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v58, "SignatureAlgorithm.register("

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string/jumbo v58, ", "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string/jumbo v58, ")"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v55 .. v57}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1e

    :catch_5
    move-exception v55

    const/16 v55, 0x2

    :try_start_c
    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    aput-object v23, v55, v56

    const/16 v23, 0x1

    aput-object v54, v55, v23

    sget-object v23, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v54, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v56, "algorithm.classDoesNotExist"

    move-object/from16 v0, v56

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v23

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1f

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->init()V

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    const-string/jumbo v54, "http://www.xmlsecurity.org/NS/#configuration"

    const-string/jumbo v55, "Resolver"

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-static {v4, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v54

    const/4 v4, 0x0

    :goto_20
    move-object/from16 v0, v54

    array-length v0, v0

    move/from16 v55, v0

    move/from16 v0, v55

    if-ge v4, v0, :cond_5

    aget-object v8, v54, v4

    const-string/jumbo v9, "JAVACLASS"

    const/16 v55, 0x0

    move-object/from16 v0, v55

    invoke-interface {v8, v0, v9}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v54, v4

    const-string/jumbo v55, "DESCRIPTION"

    const/16 v56, 0x0

    move-object/from16 v0, v56

    move-object/from16 v1, v55

    invoke-interface {v9, v0, v1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_17

    :cond_15
    sget-object v9, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v55, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v55

    invoke-virtual {v9, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v9

    if-nez v9, :cond_18

    :cond_16
    :goto_21
    :try_start_d
    invoke-static {v8}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->register(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_22
    :try_start_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_17
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v55

    if-lez v55, :cond_15

    sget-object v55, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v55 .. v56}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v55

    if-eqz v55, :cond_16

    sget-object v55, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v57, Ljava/lang/StringBuffer;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v58, "Register Resolver: "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string/jumbo v58, ": "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_21

    :cond_18
    sget-object v9, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v55, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v57, "Register Resolver: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    const-string/jumbo v57, ": For unknown purposes"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v9, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_21

    :catch_6
    move-exception v9

    sget-object v55, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v57, Ljava/lang/StringBuffer;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v58, "Cannot register:"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v57, " perhaps some needed jars are not installed"

    move-object/from16 v0, v57

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->init()V

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    const-string/jumbo v28, "http://www.xmlsecurity.org/NS/#configuration"

    const-string/jumbo v29, "Resolver"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v28

    const/4 v4, 0x0

    :goto_23
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-lt v4, v0, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    goto/16 :goto_13

    :cond_1a
    aget-object v29, v28, v4

    const-string/jumbo v54, "JAVACLASS"

    const/16 v55, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v55

    move-object/from16 v2, v54

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    aget-object v54, v28, v4

    const-string/jumbo v55, "DESCRIPTION"

    const/16 v56, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    if-nez v54, :cond_1d

    :cond_1b
    sget-object v54, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v55, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v54 .. v55}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v54

    if-nez v54, :cond_1e

    :cond_1c
    :goto_24
    invoke-static/range {v29 .. v29}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->register(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_1d
    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v55

    if-lez v55, :cond_1b

    sget-object v55, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v55 .. v56}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v55

    if-eqz v55, :cond_1c

    sget-object v55, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v57, Ljava/lang/StringBuffer;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v58, "Register Resolver: "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string/jumbo v58, ": "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_24

    :cond_1e
    sget-object v54, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v55, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v57, "Register Resolver: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    const-string/jumbo v57, ": For unknown purposes"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v54 .. v56}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_24

    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-nez v4, :cond_20

    :goto_25
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    const-string/jumbo v6, "http://www.xmlsecurity.org/NS/#configuration"

    const-string/jumbo v7, "PrefixMapping"

    invoke-static {v4, v6, v7}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v6

    const/4 v4, 0x0

    :goto_26
    array-length v7, v6

    if-lt v4, v7, :cond_21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto/16 :goto_14

    :cond_20
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v7, "Now I try to bind prefixes:"

    invoke-virtual {v4, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_25

    :cond_21
    aget-object v7, v6, v4

    const-string/jumbo v39, "namespace"

    const/16 v54, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, v39

    invoke-interface {v7, v0, v1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aget-object v39, v6, v4

    const-string/jumbo v54, "prefix"

    const/16 v55, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v55

    move-object/from16 v2, v54

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    sget-object v54, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v55, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v54 .. v55}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v54

    if-nez v54, :cond_22

    :goto_27
    move-object/from16 v0, v39

    invoke-static {v7, v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->setDefaultPrefix(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_22
    sget-object v54, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v55, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v57, "Now I try to bind "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    const-string/jumbo v57, " to "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v54 .. v56}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_27

    :cond_23
    sget-object v39, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v54, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v55, Ljava/lang/StringBuffer;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v56, "XX_init                             "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v55

    sub-long v4, v4, v40

    long-to-int v4, v4

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v39

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_24
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v39, Ljava/lang/StringBuffer;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v40, "  XX_prng                           "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    sub-long v40, v44, v42

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v39

    const-string/jumbo v40, " ms"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_25
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v39, Ljava/lang/StringBuffer;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v40, "  XX_parsing                        "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    sub-long v40, v48, v46

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v39

    const-string/jumbo v40, " ms"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_26
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v39, Ljava/lang/StringBuffer;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v40, "  XX_configure_i18n                 "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    sub-long v16, v36, v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v39

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string/jumbo v17, " ms"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_27
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v17, "  XX_configure_reg_c14n             "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    sub-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string/jumbo v17, " ms"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_28
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v17, "  XX_configure_reg_jcemapper        "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    sub-long v12, v30, v12

    long-to-int v12, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_29
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v13, "  XX_configure_reg_keyInfo          "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    sub-long v16, v52, v50

    move-wide/from16 v0, v16

    long-to-int v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_2a
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v13, "  XX_configure_reg_keyResolver      "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    sub-long v16, v28, v18

    move-wide/from16 v0, v16

    long-to-int v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2b
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v13, "  XX_configure_reg_prefixes         "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    sub-long v6, v6, v26

    long-to-int v6, v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_2c
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "  XX_configure_reg_resourceresolver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sub-long v8, v8, v24

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_2d
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "  XX_configure_reg_sigalgos         "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sub-long v8, v22, v10

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_2e
    sget-object v4, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "  XX_configure_reg_transforms       "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sub-long v8, v20, v14

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_d
.end method

.method public static final isInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/sun/org/apache/xml/internal/security/Init;->_alreadyInitialized:Z

    return v0
.end method
