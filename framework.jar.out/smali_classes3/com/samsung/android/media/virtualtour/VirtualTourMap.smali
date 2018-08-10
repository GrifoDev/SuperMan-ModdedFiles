.class public Lcom/samsung/android/media/virtualtour/VirtualTourMap;
.super Ljava/lang/Object;
.source "VirtualTourMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;,
        Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;,
        Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;,
        Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;,
        Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;,
        Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VirtualTourMap"


# instance fields
.field m_bDataReady:Z

.field private m_cCamera:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;

.field private m_cTiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;",
            ">;"
        }
    .end annotation
.end field

.field private m_cWalkSets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;",
            ">;"
        }
    .end annotation
.end field

.field private m_cXMLDoc:Lorg/w3c/dom/Document;

.field private m_nCaptureOrientation:I

.field private m_nHeight:I

.field private m_nSpecTileCount:I

.field private m_nTotalTileCount:I

.field private m_nWidth:I

.field private m_sDataSource:Ljava/lang/String;

.field private m_sMetadataVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_sMetadataVersion:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_bDataReady:Z

    iput v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nTotalTileCount:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cTiles:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cWalkSets:Ljava/util/LinkedList;

    new-instance v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;-><init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)V

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cCamera:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;

    iput v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nWidth:I

    iput v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nHeight:I

    return-void
.end method

.method private GetNewFloatArray(I)[F
    .locals 1

    new-array v0, p1, [F

    return-object v0
.end method

.method private GetNewVTDepthMapObject(II[B)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;
    .locals 1

    new-instance v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;-><init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;II[B)V

    return-object v0
.end method

.method private GetNewVTTileObject(I)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;
    .locals 1

    new-instance v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;-><init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;I)V

    return-object v0
.end method

.method private GetNewVTTransitionObject(IF[FI)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;
    .locals 6

    new-instance v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;-><init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;IF[FI)V

    return-object v0
.end method

.method static synthetic access$000(Lcom/samsung/android/media/virtualtour/VirtualTourMap;I)[F
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->GetNewFloatArray(I)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cTiles:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/media/virtualtour/VirtualTourMap;II[B)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->GetNewVTDepthMapObject(II[B)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;

    move-result-object v0

    return-object v0
.end method

.method private static getCharacterDataFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    instance-of v2, v1, Lorg/w3c/dom/CharacterData;

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/CharacterData;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getCaptureOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nCaptureOrientation:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nHeight:I

    return v0
.end method

.method public getTile(I)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TileCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nTotalTileCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " InTileID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTM_GETTILE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cTiles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;

    return-object v0
.end method

.method public getTileCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nTotalTileCount:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nWidth:I

    return v0
.end method

.method public isDataReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_bDataReady:Z

    return v0
.end method

.method public loadMap(Ljava/lang/String;)Z
    .locals 44

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_sDataSource:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v10

    new-instance v17, Lorg/xml/sax/InputSource;

    invoke-direct/range {v17 .. v17}, Lorg/xml/sax/InputSource;-><init>()V

    new-instance v42, Ljava/io/StringReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_sDataSource:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-direct/range {v42 .. v43}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cXMLDoc:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cXMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cXMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v42, v0

    const-string/jumbo v43, "VirtualTour"

    invoke-interface/range {v42 .. v43}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v42

    if-gtz v42, :cond_1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cXMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v42, v0

    const-string/jumbo v43, "Version"

    invoke-interface/range {v42 .. v43}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    const/16 v42, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v37

    check-cast v37, Lorg/w3c/dom/Element;

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->getCharacterDataFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_sMetadataVersion:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v42

    if-nez v42, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cXMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v42, v0

    const-string/jumbo v43, "Camera"

    invoke-interface/range {v42 .. v43}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v42

    if-gtz v42, :cond_3

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cXMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v42, v0

    const-string/jumbo v43, "LocationNode"

    invoke-interface/range {v42 .. v43}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    const/16 v16, 0x0

    :goto_3
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v42

    move/from16 v0, v16

    move/from16 v1, v42

    if-lt v0, v1, :cond_4

    if-nez v6, :cond_d

    :goto_4
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_bDataReady:Z

    const/16 v42, 0x1

    return v42

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v13

    invoke-virtual {v13}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_0

    :cond_0
    const/16 v42, 0x0

    return v42

    :cond_1
    const/16 v42, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    const-string/jumbo v42, "Images"

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nSpecTileCount:I

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v42, "VirtualTourMap"

    const-string/jumbo v43, "STRUCTURED_XML Metadata Version Not Supported"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v42, 0x0

    return v42

    :cond_3
    const/16 v42, 0x0

    move/from16 v0, v42

    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cCamera:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;

    move-object/from16 v42, v0

    const-string/jumbo v43, "HFOV"

    move-object/from16 v0, v43

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Float;->floatValue()F

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;->m_fHFoV:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cCamera:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;

    move-object/from16 v42, v0

    const-string/jumbo v43, "VFOV"

    move-object/from16 v0, v43

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Float;->floatValue()F

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;->m_fVFoV:F

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string/jumbo v42, "TilePose"

    move-object/from16 v0, v20

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    const/16 v18, 0x0

    :goto_5
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v42

    move/from16 v0, v18

    move/from16 v1, v42

    if-lt v0, v1, :cond_5

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    check-cast v33, Lorg/w3c/dom/Element;

    const-string/jumbo v42, "ID"

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->GetNewVTTileObject(I)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;

    move-result-object v40

    const-string/jumbo v42, "NextTransition"

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    const/16 v42, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Element;

    const-string/jumbo v42, "Type"

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const-string/jumbo v42, "Amount"

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/16 v42, 0x9

    move/from16 v0, v23

    move/from16 v1, v42

    if-ne v0, v1, :cond_7

    :cond_6
    if-eqz v6, :cond_8

    :goto_6
    iget v0, v9, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, 0x1

    move/from16 v0, v42

    iput v0, v9, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    :goto_7
    const-string/jumbo v42, "Vector"

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    const/16 v42, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    check-cast v35, Lorg/w3c/dom/Element;

    const/16 v42, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->GetNewFloatArray(I)[F

    move-result-object v15

    const-string/jumbo v42, "X"

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Float;->floatValue()F

    move-result v42

    const/16 v43, 0x0

    aput v42, v15, v43

    const-string/jumbo v42, "Y"

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Float;->floatValue()F

    move-result v42

    const/16 v43, 0x1

    aput v42, v15, v43

    const-string/jumbo v42, "Z"

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Float;->floatValue()F

    move-result v42

    const/16 v43, 0x2

    aput v42, v15, v43

    add-int/lit8 v42, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v42

    invoke-direct {v0, v1, v14, v15, v2}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->GetNewVTTransitionObject(IF[FI)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;

    move-result-object v41

    const-string/jumbo v42, "AffineParams"

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v42

    if-gtz v42, :cond_a

    :goto_8
    invoke-virtual/range {v40 .. v41}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->setNextTransistion(Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cTiles:Ljava/util/LinkedList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v22

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nTotalTileCount:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nTotalTileCount:I

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    :cond_7
    const/16 v42, 0xa

    move/from16 v0, v23

    move/from16 v1, v42

    if-eq v0, v1, :cond_6

    if-nez v6, :cond_9

    :goto_9
    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_8
    new-instance v9, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;

    invoke-direct {v9}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;-><init>()V

    move/from16 v0, v22

    iput v0, v9, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nStartID:I

    const/4 v6, 0x1

    goto/16 :goto_6

    :cond_9
    iget v0, v9, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, 0x1

    move/from16 v0, v42

    iput v0, v9, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cWalkSets:Ljava/util/LinkedList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    const/16 v42, 0x0

    move/from16 v0, v42

    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    const/16 v42, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->GetNewFloatArray(I)[F

    move-result-object v3

    const/16 v42, 0x6

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v42, "I"

    const/16 v43, 0x0

    aput-object v42, v26, v43

    const-string/jumbo v42, "II"

    const/16 v43, 0x1

    aput-object v42, v26, v43

    const-string/jumbo v42, "III"

    const/16 v43, 0x2

    aput-object v42, v26, v43

    const-string/jumbo v42, "IV"

    const/16 v43, 0x3

    aput-object v42, v26, v43

    const-string/jumbo v42, "V"

    const/16 v43, 0x4

    aput-object v42, v26, v43

    const-string/jumbo v42, "VI"

    const/16 v43, 0x5

    aput-object v42, v26, v43

    const-string/jumbo v42, "Param1"

    move-object/from16 v0, v42

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v42, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    check-cast v27, Lorg/w3c/dom/Element;

    const/16 v19, 0x0

    :goto_a
    const/16 v42, 0x4

    move/from16 v0, v19

    move/from16 v1, v42

    if-lt v0, v1, :cond_b

    const-string/jumbo v42, "Param2"

    move-object/from16 v0, v42

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    const/16 v42, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    check-cast v29, Lorg/w3c/dom/Element;

    const/16 v19, 0x0

    :goto_b
    const/16 v42, 0x6

    move/from16 v0, v19

    move/from16 v1, v42

    if-lt v0, v1, :cond_c

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->setAffineParams([F)V

    goto/16 :goto_8

    :cond_b
    aget-object v42, v26, v19

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Float;->floatValue()F

    move-result v42

    aput v42, v3, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    :cond_c
    add-int/lit8 v42, v19, 0x4

    aget-object v43, v26, v19

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Float;->floatValue()F

    move-result v43

    aput v43, v3, v42

    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cWalkSets:Ljava/util/LinkedList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method public processMap()Z
    .locals 14

    const/4 v13, 0x0

    const/4 v0, 0x0

    iget-object v11, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cWalkSets:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cWalkSets:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    new-array v10, v11, [Ljava/lang/Thread;

    iget v11, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nHeight:I

    if-nez v11, :cond_1

    :cond_0
    const-string/jumbo v11, "VirtualTourMap"

    const-string/jumbo v12, "Height (and/or) Width == 0"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_1
    iget v11, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nWidth:I

    if-eqz v11, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v4, 0x0

    :goto_1
    :try_start_0
    iget-object v11, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cWalkSets:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-lt v4, v11, :cond_3

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[TIME] Threaded DepthMap Time "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v2, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "VirtualTourMap"

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    return v11

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;

    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;

    invoke-direct {v12, p0, v0}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;-><init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v11, v10, v8

    add-int/lit8 v9, v8, 0x1

    aget-object v11, v10, v8

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    move v8, v9

    goto :goto_0

    :cond_3
    :try_start_1
    aget-object v11, v10, v4

    invoke-virtual {v11}, Ljava/lang/Thread;->join()V

    const/4 v11, 0x0

    aput-object v11, v10, v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cXMLDoc:Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cTiles:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cWalkSets:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cCamera:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;

    return-void
.end method

.method public setCaptureOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nCaptureOrientation:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nHeight:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nWidth:I

    return-void
.end method
