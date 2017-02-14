.class public Lcom/android/server/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static BT_TYPE:I = 0x0

.field private static SDCARD_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BTSdcard"

.field private static WHITELIST_MAC_PERM:Ljava/lang/String;

.field private static WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

.field private static instance:Lcom/android/server/ResourceManager;

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field private mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "/data/security/whitelist"

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    const-string/jumbo v0, "/data/security/whitelist/mac_permissions.xml"

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/ResourceManager;->BT_TYPE:I

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .locals 41

    const-class v39, Lcom/android/server/ResourceManager;

    monitor-enter v39

    :try_start_0
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x4

    const/16 v40, 0x4

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_a

    const/16 v38, 0x1

    :goto_0
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x8

    const/16 v40, 0x8

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_b

    const/16 v38, 0x1

    :goto_1
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    const/16 v19, 0x0

    const/16 v22, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_c

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-nez v38, :cond_0

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    const/16 v22, 0x1

    :goto_2
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v38, "policy"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    const/16 v25, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    check-cast v25, Lorg/w3c/dom/Element;

    const-string/jumbo v38, "signer"

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v31

    const/16 v33, 0x0

    const/16 v32, 0x0

    const/4 v4, 0x0

    const/16 v23, 0x0

    const/16 v30, 0x0

    const/16 v35, 0x0

    const-string/jumbo v35, "service"

    move-object/from16 v0, v35

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    const-string/jumbo v38, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "seinfo"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1

    const-string/jumbo v38, "category"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v5, :cond_2

    const-string/jumbo v38, "allowcategory"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    const-string/jumbo v38, "containerallowcategory"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v21, :cond_4

    const-string/jumbo v38, "issdcardsbaapp"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v20, :cond_5

    const-string/jumbo v38, "isbluetoothsbaapp"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget v38, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_6

    const-string/jumbo v38, "sdcarduseridBL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget v38, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    const-string/jumbo v38, "bluetoothuseridBL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string/jumbo v38, "signer"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v32

    const-string/jumbo v38, "seinfo"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v30

    const-string/jumbo v38, "allow-all"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string/jumbo v38, "signature"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "value"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_8

    const-string/jumbo v38, "category"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v5, :cond_9

    const-string/jumbo v38, "allowcategory"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/16 v18, 0x0

    :goto_3
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v38

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_10

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    check-cast v33, Lorg/w3c/dom/Element;

    const-string/jumbo v38, "signature"

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_19

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    if-eqz v16, :cond_18

    sget v38, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_14

    const-string/jumbo v38, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v38

    if-eqz v38, :cond_e

    const/16 v38, 0x0

    monitor-exit v39

    return v38

    :cond_a
    const/16 v38, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v38, 0x0

    goto/16 :goto_1

    :cond_c
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    :goto_4
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-nez v38, :cond_d

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_d
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    const-string/jumbo v38, "policy"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v15

    :try_start_4
    invoke-virtual {v15}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    const/16 v38, -0x1

    monitor-exit v39

    return v38

    :catch_1
    move-exception v10

    :try_start_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v13

    :try_start_6
    invoke-virtual {v13}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v38

    monitor-exit v39

    throw v38

    :cond_e
    const/16 v24, 0x0

    :try_start_7
    const-string/jumbo v38, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_f

    const-string/jumbo v38, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v40, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_13

    :cond_f
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    :goto_6
    const-string/jumbo v38, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    :cond_10
    :goto_7
    if-nez v19, :cond_11

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_11
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v36

    const/16 v34, 0x0

    if-eqz v22, :cond_1a

    new-instance v34, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v34

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    :goto_8
    new-instance v27, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-eqz v38, :cond_12

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_12
    const/16 v38, 0x0

    monitor-exit v39

    return v38

    :cond_13
    :try_start_8
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, ","

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_6

    :cond_14
    sget v38, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    const-string/jumbo v38, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v38

    if-eqz v38, :cond_15

    const/16 v38, 0x0

    monitor-exit v39

    return v38

    :cond_15
    const/16 v24, 0x0

    :try_start_9
    const-string/jumbo v38, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_16

    const-string/jumbo v38, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v40, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_17

    :cond_16
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    :goto_9
    const-string/jumbo v38, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    goto/16 :goto_7

    :cond_17
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, ","

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_9

    :cond_18
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/16 v19, 0x1

    goto/16 :goto_7

    :cond_19
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    :cond_1a
    new-instance v34, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_8

    :catch_3
    move-exception v11

    :try_start_a
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :catch_4
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catch_5
    move-exception v14

    invoke-virtual {v14}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5
.end method

.method protected static declared-synchronized addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .locals 41

    const-class v39, Lcom/android/server/ResourceManager;

    monitor-enter v39

    :try_start_0
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x4

    const/16 v40, 0x4

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_a

    const/16 v38, 0x1

    :goto_0
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x8

    const/16 v40, 0x8

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_b

    const/16 v38, 0x1

    :goto_1
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    const/16 v19, 0x0

    const/16 v22, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_c

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-nez v38, :cond_0

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    const/16 v22, 0x1

    :goto_2
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v38, "policy"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    const/16 v25, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    check-cast v25, Lorg/w3c/dom/Element;

    const-string/jumbo v38, "signer"

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v31

    const/16 v33, 0x0

    const/16 v32, 0x0

    const/4 v4, 0x0

    const/16 v23, 0x0

    const/16 v30, 0x0

    const/16 v35, 0x0

    const-string/jumbo v35, "service"

    move-object/from16 v0, v35

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    const-string/jumbo v38, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "seinfo"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1

    const-string/jumbo v38, "category"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v5, :cond_2

    const-string/jumbo v38, "allowcategory"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    const-string/jumbo v38, "containerallowcategory"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v21, :cond_4

    const-string/jumbo v38, "issdcardsbaapp"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v20, :cond_5

    const-string/jumbo v38, "isbluetoothsbaapp"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget v38, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_6

    const-string/jumbo v38, "sdcarduserid"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget v38, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    const-string/jumbo v38, "bluetoothuserid"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string/jumbo v38, "signer"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v32

    const-string/jumbo v38, "seinfo"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v30

    const-string/jumbo v38, "allow-all"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string/jumbo v38, "signature"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "value"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_8

    const-string/jumbo v38, "category"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v5, :cond_9

    const-string/jumbo v38, "allowcategory"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/16 v18, 0x0

    :goto_3
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v38

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_10

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    check-cast v33, Lorg/w3c/dom/Element;

    const-string/jumbo v38, "signature"

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_19

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    if-eqz v16, :cond_18

    sget v38, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_14

    const-string/jumbo v38, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v38

    if-eqz v38, :cond_e

    const/16 v38, 0x0

    monitor-exit v39

    return v38

    :cond_a
    const/16 v38, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v38, 0x0

    goto/16 :goto_1

    :cond_c
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    :goto_4
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-nez v38, :cond_d

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_d
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    const-string/jumbo v38, "policy"

    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v15

    :try_start_4
    invoke-virtual {v15}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    const/16 v38, -0x1

    monitor-exit v39

    return v38

    :catch_1
    move-exception v10

    :try_start_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v13

    :try_start_6
    invoke-virtual {v13}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v38

    monitor-exit v39

    throw v38

    :cond_e
    const/16 v24, 0x0

    :try_start_7
    const-string/jumbo v38, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_f

    const-string/jumbo v38, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v40, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_13

    :cond_f
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    :goto_6
    const-string/jumbo v38, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    :cond_10
    :goto_7
    if-nez v19, :cond_11

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_11
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v36

    const/16 v34, 0x0

    if-eqz v22, :cond_1a

    new-instance v34, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v34

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    :goto_8
    new-instance v27, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-eqz v38, :cond_12

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_12
    const/16 v38, 0x0

    monitor-exit v39

    return v38

    :cond_13
    :try_start_8
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, ","

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_6

    :cond_14
    sget v38, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    const-string/jumbo v38, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v38

    if-eqz v38, :cond_15

    const/16 v38, 0x0

    monitor-exit v39

    return v38

    :cond_15
    const/16 v24, 0x0

    :try_start_9
    const-string/jumbo v38, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_16

    const-string/jumbo v38, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v40, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_17

    :cond_16
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    :goto_9
    const-string/jumbo v38, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    goto/16 :goto_7

    :cond_17
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, ","

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_9

    :cond_18
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/16 v19, 0x1

    goto/16 :goto_7

    :cond_19
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    :cond_1a
    new-instance v34, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_8

    :catch_3
    move-exception v11

    :try_start_a
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :catch_4
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catch_5
    move-exception v14

    invoke-virtual {v14}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 4

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    :cond_1
    return-object v1

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_0
.end method

.method private static checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ResourceManager;
    .locals 2

    const-class v1, Lcom/android/server/ResourceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ResourceManager;

    invoke-direct {v0, p0}, Lcom/android/server/ResourceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    :cond_0
    sget-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p0, :cond_0

    return-object v7

    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v6, 0x40

    :try_start_0
    invoke-interface {v3, p0, v6, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    aget-object v6, v4, v1

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v5

    :cond_2
    return-object v7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v7
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private static hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    return-object v6

    :cond_1
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private loadContainerSetting(Ljava/lang/String;IZ)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BTSdcard"

    const-string/jumbo v3, "loadContainerSetting, packageName is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->updateAppInfoForPackage(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method protected static declared-synchronized removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .locals 30

    const-class v26, Lcom/android/server/ResourceManager;

    monitor-enter v26

    const/4 v12, 0x0

    const/16 v18, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :try_start_1
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v25

    if-nez v25, :cond_0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v25, "policy"

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/4 v14, 0x0

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    const-string/jumbo v25, "signer"

    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_2

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    if-eqz v16, :cond_c

    sget v25, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_7

    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    const/4 v12, 0x1

    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1

    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v27, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    :cond_1
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    :goto_1
    if-eqz v12, :cond_d

    const-string/jumbo v25, "service"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    if-nez v25, :cond_3

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v23

    new-instance v22, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v17, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v25

    if-eqz v25, :cond_4

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_3
    monitor-exit v26

    return v12

    :cond_5
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    :cond_6
    :try_start_2
    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_7
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    :cond_8
    :try_start_3
    sget v25, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_b

    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    const/4 v12, 0x1

    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_9

    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v27, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    :cond_9
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v10

    :try_start_4
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v25

    monitor-exit v26

    throw v25

    :cond_a
    :try_start_5
    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_c

    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_b
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_d
    :try_start_6
    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " removeBlacklistEntryFromMac, No match for packageName:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ". Please check again"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v8

    :try_start_7
    invoke-virtual {v8}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_3

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v9

    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3
.end method

.method private static removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v3, v4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    return-object v2

    :cond_3
    return-object v8
.end method

.method protected static declared-synchronized removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .locals 30

    const-class v26, Lcom/android/server/ResourceManager;

    monitor-enter v26

    const/4 v12, 0x0

    const/16 v18, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :try_start_1
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v25

    if-nez v25, :cond_0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v25, "policy"

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/4 v14, 0x0

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    const-string/jumbo v25, "signer"

    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_2

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    if-eqz v16, :cond_c

    sget v25, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_7

    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    const/4 v12, 0x1

    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1

    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v27, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    :cond_1
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    :goto_1
    if-eqz v12, :cond_d

    const-string/jumbo v25, "service"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    if-nez v25, :cond_3

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v23

    new-instance v22, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v17, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v25

    if-eqz v25, :cond_4

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_3
    monitor-exit v26

    return v12

    :cond_5
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    :cond_6
    :try_start_2
    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_7
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    :cond_8
    :try_start_3
    sget v25, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_b

    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    const/4 v12, 0x1

    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_9

    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v27, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    :cond_9
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v10

    :try_start_4
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v25

    monitor-exit v26

    throw v25

    :cond_a
    :try_start_5
    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_c

    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_b
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_d
    :try_start_6
    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " removeWhitelistEntryFromMac, No match for packageName:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ". Please check again"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v8

    :try_start_7
    invoke-virtual {v8}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_3

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v9

    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3
.end method


# virtual methods
.method public addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 11

    const/4 v6, 0x0

    :try_start_0
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p4, v2, :cond_0

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p4, v2, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    new-instance v10, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, " addAppToBlacklist failed, no packageName found"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2

    :catch_0
    move-exception v8

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, "Issue with whitelistDir directory"

    invoke-virtual {v2, v3, v5, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, -0x1

    return v2

    :cond_2
    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    if-nez p3, :cond_3

    const/16 v2, -0xe

    return v2

    :cond_3
    if-nez v9, :cond_6

    const/4 v2, 0x0

    aget-object v1, p3, v2

    const/4 v6, 0x1

    :cond_4
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-static {p2, p3}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, "addAppToBlacklist, Got Application Info, Seinfo is not null"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "default"

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "untrusted"

    iput-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :cond_5
    move-object v2, p2

    move v3, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/ResourceManager;->addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, "addBlacklistEntryToMac failed"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, -0x1

    return v2

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v7, 0x1

    :cond_7
    if-nez v7, :cond_4

    const/16 v2, -0xd

    return v2

    :cond_8
    :try_start_2
    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    invoke-static {v0, p2, p1, p4}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, -0x1

    return v2

    :cond_9
    const/4 v2, -0x1

    return v2

    :catch_1
    move-exception v8

    const/4 v2, -0x1

    return v2

    :cond_a
    const/4 v2, 0x0

    return v2
.end method

.method public addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 11

    const/4 v6, 0x0

    :try_start_0
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p4, v2, :cond_0

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p4, v2, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    new-instance v10, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, " addAppToWhitelist failed, no packageName found"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2

    :catch_0
    move-exception v8

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, "Issue with whitelistDir directory"

    invoke-virtual {v2, v3, v5, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, -0x1

    return v2

    :cond_2
    const/4 v7, 0x0

    const/4 v1, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    if-nez p3, :cond_3

    const/16 v2, -0xe

    return v2

    :cond_3
    if-nez v9, :cond_6

    const/4 v2, 0x0

    aget-object v1, p3, v2

    const/4 v6, 0x1

    :cond_4
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-static {p2, p3}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, "addAppToWhitelist, Got Application Info, Seinfo is not null"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "default"

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "untrusted"

    iput-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :cond_5
    move-object v2, p2

    move v3, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/ResourceManager;->addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v5, "addWhitelistEntryToMac failed"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, -0x1

    return v2

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v7, 0x1

    :cond_7
    if-nez v7, :cond_4

    const/16 v2, -0xd

    return v2

    :cond_8
    :try_start_2
    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    invoke-static {v0, p2, p1, p4}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, -0x1

    return v2

    :cond_9
    const/4 v2, -0x1

    return v2

    :catch_1
    move-exception v8

    const/4 v2, -0x1

    return v2

    :cond_a
    const/4 v2, 0x0

    return v2
.end method

.method public clearSBABlacklist(II)I
    .locals 10

    const/4 v9, 0x0

    const/4 v7, -0x1

    sget v6, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v6, :cond_0

    sget v6, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v6, :cond_0

    return v7

    :cond_0
    const/4 v4, -0x1

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getBlacklist(II)Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/ResourceManager;->removeAppFromSBABlacklist(ILjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    return v7

    :catch_0
    move-exception v0

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "clearBlacklist exception"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return v9
.end method

.method public clearWhitelist(II)I
    .locals 10

    const/4 v9, 0x0

    const/4 v7, -0x1

    sget v6, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v6, :cond_0

    sget v6, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v6, :cond_0

    return v7

    :cond_0
    const/4 v4, -0x1

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/ResourceManager;->removeAppFromWhitelist(ILjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    return v7

    :catch_0
    move-exception v0

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "clearWhitelist exception"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return v9
.end method

.method public getPackagesFromSBABlacklist(II)[Ljava/lang/String;
    .locals 2

    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v1, :cond_0

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getBlacklist(II)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPackagesFromSBAList(I)[Ljava/lang/String;
    .locals 2

    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->getSBAlist(I)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPackagesFromWhitelist(II)[Ljava/lang/String;
    .locals 2

    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v1, :cond_0

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isSBAApp(Ljava/lang/String;I)I
    .locals 4

    const/4 v3, -0x1

    :try_start_0
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v2, :cond_0

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v2, :cond_0

    return v3

    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/SELinuxMMAC;->getSBAlist(I)Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    return v3

    :cond_1
    return v3
.end method

.method public isWhitelistApp(ILjava/lang/String;I)I
    .locals 4

    const/4 v3, -0x1

    :try_start_0
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v2, :cond_0

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v2, :cond_0

    return v3

    :cond_0
    invoke-static {p1, p3}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    return v3

    :cond_1
    return v3
.end method

.method public removeAppFromSBABlacklist(ILjava/lang/String;I)I
    .locals 10

    const/4 v9, -0x1

    const/4 v0, 0x0

    sget v6, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v6, :cond_0

    sget v6, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v6, :cond_0

    return v9

    :cond_0
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, " removeAppFromBlacklist failed, no packageName found"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v0, 0x1

    :cond_2
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v3, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "removeEntryFromMac failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_3
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, v9, :cond_4

    return v9

    :catch_0
    move-exception v2

    return v9

    :cond_4
    const/4 v6, 0x0

    return v6
.end method

.method public removeAppFromWhitelist(ILjava/lang/String;I)I
    .locals 10

    const/4 v9, -0x1

    const/4 v0, 0x0

    sget v6, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v6, :cond_0

    sget v6, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v6, :cond_0

    return v9

    :cond_0
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, " removeAppFromWhitelist failed, no packageName found"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v0, 0x1

    :cond_2
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v3, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "removeEntryFromMac failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_3
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, v9, :cond_4

    return v9

    :catch_0
    move-exception v2

    return v9

    :cond_4
    const/4 v6, 0x0

    return v6
.end method
