.class public Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;
.super Ljava/lang/Object;
.source "VirtualTourDataManager.java"

# interfaces
.implements Lcom/samsung/android/media/virtualtour/IVirtualTourSEFParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VirtualTourDataManager"

.field private static final TRANSITION_TYPE_FORWARD_WALK:I = 0x9

.field private static final TRANSITION_TYPE_FORWARD_WALK_PLUS:I = 0xa

.field private static final TRANSITION_TYPE_LATERAL_WALK_LEFT:I = 0xd

.field private static final TRANSITION_TYPE_LATERAL_WALK_PLUS_LEFT:I = 0xb

.field private static final TRANSITION_TYPE_LATERAL_WALK_PLUS_RIGHT:I = 0xc

.field private static final TRANSITION_TYPE_LATERAL_WALK_RIGHT:I = 0xe

.field private static final TRANSITION_TYPE_NONE:I = 0x0

.field private static final TRANSITION_TYPE_STAIRS_DOWN:I = 0xf

.field private static final TRANSITION_TYPE_STAIRS_DOWN_PLUS:I = 0x10

.field private static final TRANSITION_TYPE_STAIRS_UP:I = 0x11

.field private static final TRANSITION_TYPE_STAIRS_UP_PLUS:I = 0x12

.field private static final TRANSITION_TYPE_STEP_DOWN:I = 0x5

.field private static final TRANSITION_TYPE_STEP_DOWN_PLUS:I = 0x6

.field private static final TRANSITION_TYPE_STEP_UP:I = 0x7

.field private static final TRANSITION_TYPE_STEP_UP_PLUS:I = 0x8

.field private static final TRANSITION_TYPE_TURN_LEFT:I = 0x1

.field private static final TRANSITION_TYPE_TURN_RIGHT:I = 0x2

.field private static final TRANSITION_TYPE_WALK_AND_TURN_90_LEFT:I = 0x3

.field private static final TRANSITION_TYPE_WALK_AND_TURN_90_RIGHT:I = 0x4

.field private static final VIRTUALTOUR_NAME_PREFIX:Ljava/lang/String; = "3DTour_"

.field private static final m_sMetadataVersion:Ljava/lang/String; = "2.0.0"


# instance fields
.field public aTransitionsType:[I

.field private aTranslations:[Lcom/samsung/android/media/virtualtour/CVector3;

.field public eViewerMetadataMode:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

.field public mAngles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public m_cImageProvider:Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;

.field public m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

.field public noOfImages:I

.field public transitiontypeArrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_cImageProvider:Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->mAngles:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->transitiontypeArrList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTransitionsType:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->noOfImages:I

    new-instance v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    const-string/jumbo v1, "2.0.0"

    invoke-direct {v0, v1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    return-void
.end method

.method private ReadXMLMetaData(Ljava/lang/String;)V
    .locals 16

    const-string/jumbo v14, "xmlData "

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7}, Lorg/xml/sax/InputSource;-><init>()V

    new-instance v14, Ljava/io/StringReader;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {v1, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    const-string/jumbo v14, "LocationNode"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lt v6, v14, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v10, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    const-string/jumbo v14, "TilePose"

    invoke-interface {v9, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Tile Pose Count "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "VirtualTourDataManager"

    invoke-static {v15, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lt v8, v14, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v13, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    const-string/jumbo v14, "TilePoseID"

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/4 v14, 0x0

    const-string/jumbo v15, "VirtualTourDataManager"

    invoke-interface {v12, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    invoke-static {v14}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->getCharacterDataFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1
.end method

.method private WriteXMLMetaData(IFF[I[F[I[Lcom/samsung/android/media/virtualtour/CVector3;[Lcom/samsung/android/media/virtualtour/CVector3;Ljava/util/Vector;)Ljava/lang/String;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF[I[F[I[",
            "Lcom/samsung/android/media/virtualtour/CVector3;",
            "[",
            "Lcom/samsung/android/media/virtualtour/CVector3;",
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/android/media/virtualtour/CAffineParams;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v16

    new-instance v19, Ljava/io/StringWriter;

    invoke-direct/range {v19 .. v19}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const-string/jumbo v21, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v20, ""

    const-string/jumbo v21, "VirtualTour"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, ""

    const-string/jumbo v22, "Images"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v20, ""

    const-string/jumbo v21, "Version"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v20, "2.0.0"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v20, ""

    const-string/jumbo v21, "Version"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const-string/jumbo v20, ""

    const-string/jumbo v21, "Camera"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v11}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, ""

    const-string/jumbo v22, "HFOV"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, ""

    const-string/jumbo v22, "VFOV"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v20, ""

    const-string/jumbo v21, "Camera"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_0
    move/from16 v0, p1

    if-lt v12, v0, :cond_0

    const-string/jumbo v20, ""

    const-string/jumbo v21, "VirtualTour"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20

    :cond_0
    const-string/jumbo v20, ""

    const-string/jumbo v21, "LocationNode"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, ""

    const-string/jumbo v22, "ID"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, v6

    :cond_1
    const-string/jumbo v20, ""

    const-string/jumbo v21, "TilePose"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, ""

    const-string/jumbo v22, "ID"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v4, v8

    add-int/lit8 v20, p1, -0x1

    move/from16 v0, v20

    if-lt v12, v0, :cond_4

    const/16 v20, 0x0

    :goto_1
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    add-int/lit8 v20, p1, -0x1

    move/from16 v0, v20

    if-lt v12, v0, :cond_5

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    :goto_2
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const-string/jumbo v20, ""

    const-string/jumbo v21, "NextTransition"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, ""

    const-string/jumbo v22, "Type"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v15}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, ""

    const-string/jumbo v22, "Amount"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v20, ""

    const-string/jumbo v21, "Vector"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v20, p1, -0x1

    move/from16 v0, v20

    if-lt v12, v0, :cond_6

    new-instance v17, Lcom/samsung/android/media/virtualtour/CVector3;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/virtualtour/CVector3;-><init>(FFF)V

    :goto_3
    if-nez v17, :cond_2

    new-instance v17, Lcom/samsung/android/media/virtualtour/CVector3;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/virtualtour/CVector3;-><init>(FFF)V

    :cond_2
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    move/from16 v20, v0

    const-string/jumbo v21, "X"

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    move/from16 v20, v0

    const-string/jumbo v21, "Y"

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    move/from16 v20, v0

    const-string/jumbo v21, "Z"

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v20, ""

    const-string/jumbo v21, "Vector"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    :cond_3
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    const-string/jumbo v20, "I"

    const/16 v21, 0x0

    aput-object v20, v14, v21

    const-string/jumbo v20, "II"

    const/16 v21, 0x1

    aput-object v20, v14, v21

    const-string/jumbo v20, "III"

    const/16 v21, 0x2

    aput-object v20, v14, v21

    const-string/jumbo v20, "IV"

    const/16 v21, 0x3

    aput-object v20, v14, v21

    const-string/jumbo v20, "V"

    const/16 v21, 0x4

    aput-object v20, v14, v21

    const-string/jumbo v20, "VI"

    const/16 v21, 0x5

    aput-object v20, v14, v21

    invoke-virtual/range {p9 .. p9}, Ljava/util/Vector;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-le v9, v0, :cond_8

    :goto_4
    const-string/jumbo v20, ""

    const-string/jumbo v21, "NextTransition"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v20, ""

    const-string/jumbo v21, "TilePose"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    const-string/jumbo v20, ""

    const-string/jumbo v21, "LocationNode"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    const/16 v20, 0x0

    return-object v20

    :cond_4
    :try_start_1
    aget v20, p4, v12

    goto/16 :goto_1

    :cond_5
    aget v20, p5, v12

    goto/16 :goto_2

    :cond_6
    aget-object v17, p7, v12

    goto/16 :goto_3

    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    goto :goto_4

    :cond_8
    move-object/from16 v0, p9

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/media/virtualtour/CAffineParams;

    add-int/lit8 v9, v9, 0x1

    const-string/jumbo v20, ""

    const-string/jumbo v21, "AffineParams"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v20, ""

    const-string/jumbo v21, "Param1"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    :goto_5
    const/16 v20, 0x4

    move/from16 v0, v20

    if-lt v7, v0, :cond_9

    const-string/jumbo v20, ""

    const-string/jumbo v21, "Param1"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v20, ""

    const-string/jumbo v21, "Param2"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    :goto_6
    const/16 v20, 0x6

    move/from16 v0, v20

    if-lt v7, v0, :cond_a

    const-string/jumbo v20, ""

    const-string/jumbo v21, "Param2"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v20, ""

    const-string/jumbo v21, "AffineParams"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_4

    :cond_9
    aget-object v20, v14, v7

    iget-object v0, v5, Lcom/samsung/android/media/virtualtour/CAffineParams;->m_pf32Param1:[F

    move-object/from16 v21, v0

    aget v21, v21, v7

    const-string/jumbo v22, ""

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    aget-object v20, v14, v7

    iget-object v0, v5, Lcom/samsung/android/media/virtualtour/CAffineParams;->m_pf32Param2:[F

    move-object/from16 v21, v0

    aget v21, v21, v7

    const-string/jumbo v22, ""

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_6
.end method

.method public static applyOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p0

    :cond_0
    const-string/jumbo v0, "VirtualTourDataManager"

    const-string/jumbo v2, "Bitmap Is Recycled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const/16 v7, 0x10e

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v7

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :pswitch_2
    const/16 v7, 0xb4

    goto :goto_1

    :pswitch_3
    const/16 v7, 0x5a

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x400

    :try_start_0
    new-array v1, v7, [B

    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    :goto_0
    if-gtz v2, :cond_0

    if-nez v3, :cond_1

    :goto_1
    if-nez v5, :cond_2

    :goto_2
    return-void

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v2}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-nez v3, :cond_3

    :goto_3
    if-nez v5, :cond_4

    :goto_4
    throw v0

    :cond_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_4
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private deleteFolder(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static getCharacterDataFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;
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
.method public GetSefDataCount(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/media/SemExtendedFormat;->getDataCount(Ljava/io/File;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public GetSefOrientation(Ljava/lang/String;)I
    .locals 6

    const/4 v3, -0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "Orientation"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1
.end method

.method public decodeSEF(Ljava/lang/String;)Z
    .locals 30

    const/16 v20, -0x1

    const/4 v15, 0x0

    const/4 v5, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    :try_start_0
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x850

    invoke-static/range {v27 .. v28}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z

    move-result v27

    if-nez v27, :cond_0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "File"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\' is a not Virtual Tour SEF File"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "VirtualTourDataManager"

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    return v27

    :cond_0
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "File"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\' is a Virtual Tour SEF File"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "VirtualTourDataManager"

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v7, 0x0

    :try_start_1
    new-instance v8, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    :goto_1
    if-nez v7, :cond_1

    :goto_2
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->mAngles:Ljava/util/ArrayList;

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->transitiontypeArrList:Ljava/util/ArrayList;

    const/16 v19, 0x0

    const/4 v10, 0x0

    :try_start_2
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/media/SemExtendedFormat;->getDataCount(Ljava/io/File;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v19

    :goto_3
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Number of SEF data :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "VirtualTourDataManager"

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    check-cast v4, [[B

    if-gtz v19, :cond_2

    const/16 v27, 0x0

    return v27

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    const-string/jumbo v27, "Orientation"

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v20

    goto :goto_2

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_2
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v4, v0, [[B

    :try_start_3
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/media/SemExtendedFormat;->getKeyNameArray(Ljava/io/File;)[Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    :goto_4
    :try_start_4
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x0

    aget-object v28, v10, v28

    invoke-static/range {v27 .. v28}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v27

    const/16 v28, 0x0

    aput-object v27, v4, v28
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    const/16 v27, 0x0

    aget-object v27, v4, v27

    if-eqz v27, :cond_4

    const/16 v27, 0x0

    aget-object v27, v4, v27

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v27, 0x0

    aget-object v27, v4, v27

    move-object/from16 v0, v27

    array-length v11, v0

    sget-object v27, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->RAW_BINARY:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->eViewerMetadataMode:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getFloat()F

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getFloat()F

    const/16 v12, 0x14

    const/16 v27, 0x6

    move/from16 v0, v20

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    :cond_3
    move/from16 v17, v14

    move v14, v13

    move/from16 v13, v17

    :goto_6
    add-int/lit8 v27, v15, -0x1

    move/from16 v0, v27

    new-array v2, v0, [F

    add-int/lit8 v27, v15, -0x1

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTransitionsType:[I

    new-array v0, v15, [Lcom/samsung/android/media/virtualtour/CVector3;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTranslations:[Lcom/samsung/android/media/virtualtour/CVector3;

    const/4 v9, 0x0

    :goto_7
    add-int/lit8 v27, v15, -0x1

    move/from16 v0, v27

    if-lt v9, v0, :cond_6

    const/4 v9, 0x0

    :goto_8
    add-int/lit8 v27, v15, -0x1

    move/from16 v0, v27

    if-lt v9, v0, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->setNoOfImages(I)V

    new-instance v27, Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_cImageProvider:Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->setCaptureOrientation(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->mAngles:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->setmAngles(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->transitiontypeArrList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->setTransitionType(Ljava/util/ArrayList;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    if-lt v12, v11, :cond_10

    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "[TIME] DecodeSEF::XMLParsing "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sub-long v28, v24, v22

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " ms"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "VirtualTourDataManager"

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x1

    return v27

    :catch_3
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :catch_4
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :cond_4
    const-string/jumbo v27, "VirtualTourDataManager"

    const-string/jumbo v28, "Failed in SEF decode"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    return v27

    :cond_5
    const/16 v27, 0x8

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTransitionsType:[I

    move-object/from16 v27, v0

    aput v18, v27, v9

    add-int/lit8 v12, v12, 0x4

    const/high16 v27, 0x7fc00000    # NaNf

    aput v27, v2, v9

    if-eqz v18, :cond_8

    const/16 v27, 0x1

    move/from16 v0, v18

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    :cond_7
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v27

    aput v27, v2, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->transitiontypeArrList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->mAngles:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    aget v28, v2, v9

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x4

    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    :cond_8
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Unsupported Transition Type:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SEFParfer"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    return v27

    :cond_9
    const/16 v27, 0x2

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    const/16 v27, 0x9

    move/from16 v0, v18

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    :cond_a
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v27

    aput v27, v2, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->transitiontypeArrList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->mAngles:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    aget v28, v2, v9

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x4

    goto :goto_a

    :cond_b
    const/16 v27, 0xa

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    const/16 v27, 0xd

    move/from16 v0, v18

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTranslations:[Lcom/samsung/android/media/virtualtour/CVector3;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->newVector3(Ljava/nio/ByteBuffer;)Lcom/samsung/android/media/virtualtour/CVector3;

    move-result-object v28

    aput-object v28, v27, v9

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getFloat()F

    add-int/lit8 v12, v12, 0x4

    goto/16 :goto_a

    :cond_d
    const/16 v27, 0xb

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_c

    const/16 v27, 0xe

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_c

    const/16 v27, 0xc

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_c

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getFloat()F

    add-int/lit8 v12, v12, 0x4

    goto/16 :goto_a

    :cond_e
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v16

    add-int/lit8 v12, v12, 0x4

    const/16 v27, 0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_f

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getFloat()F

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getFloat()F

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getFloat()F

    :goto_b
    add-int/lit8 v12, v12, 0xc

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_8

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTranslations:[Lcom/samsung/android/media/virtualtour/CVector3;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->newVector3(Ljava/nio/ByteBuffer;)Lcom/samsung/android/media/virtualtour/CVector3;

    move-result-object v28

    aput-object v28, v27, v9

    goto :goto_b

    :cond_10
    sget-object v27, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->loadMap(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_11

    sget-object v27, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->STRUCTURED_XML:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->eViewerMetadataMode:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    goto/16 :goto_9

    :cond_11
    const-string/jumbo v27, "VirtualTourDataManager"

    const-string/jumbo v28, "XML Parsing Failed - Continuing with BIN"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method public encodeSEF(Ljava/lang/String;Ljava/lang/String;I[I[F[I[Lcom/samsung/android/media/virtualtour/CVector3;Ljava/util/Vector;)I
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[I[F[I[",
            "Lcom/samsung/android/media/virtualtour/CVector3;",
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/android/media/virtualtour/CAffineParams;",
            ">;)I"
        }
    .end annotation

    if-lez p3, :cond_2

    new-instance v22, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    move-object/from16 v0, v22

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "3DTour_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "1.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v20, v0

    sget v4, Lcom/samsung/android/media/virtualtour/Settings;->cameraHorizontalViewAngle:F

    sget v5, Lcom/samsung/android/media/virtualtour/Settings;->cameraVerticalViewAngle:F

    const/4 v13, 0x0

    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "VirtualTourHeader.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x4

    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/16 v18, 0x0

    :goto_0
    add-int/lit8 v2, p3, -0x1

    move/from16 v0, v18

    if-lt v0, v2, :cond_3

    const/16 v18, 0x0

    :goto_1
    add-int/lit8 v2, p3, -0x1

    move/from16 v0, v18

    if-lt v0, v2, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    const/16 v27, 0x0

    if-nez p5, :cond_11

    :cond_0
    :goto_2
    const/16 v32, 0x0

    if-nez v27, :cond_12

    :goto_3
    if-nez v32, :cond_13

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "XML Formatting Time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v28, v30

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "VirtualTourDataManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v14, :cond_14

    move-object v13, v14

    :cond_1
    :goto_5
    add-int/lit8 v2, p3, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v23, v0

    add-int/lit8 v2, p3, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "VirtualTourHeader.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v23, v3

    const-string/jumbo v2, "VirtualTour_Info"

    const/4 v3, 0x0

    aput-object v2, v24, v3

    const/16 v17, 0x1

    :goto_6
    move/from16 v0, v17

    move/from16 v1, p3

    if-le v0, v1, :cond_16

    const/16 v25, 0x0

    const/4 v2, 0x1

    :try_start_2
    aget-object v2, v23, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :goto_7
    :try_start_3
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v24, v3

    new-instance v6, Ljava/io/File;

    const/4 v7, 0x0

    aget-object v7, v23, v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x850

    const/4 v8, 0x1

    invoke-static {v2, v3, v6, v7, v8}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    move-result v25

    :goto_8
    const/16 v17, 0x1

    :goto_9
    move/from16 v0, v17

    move/from16 v1, p3

    if-le v0, v1, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_18

    const/4 v2, -0x1

    return v2

    :cond_2
    const-string/jumbo v2, "VirtualTourDataManager"

    const-string/jumbo v3, "No Images to save"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    return v2

    :cond_3
    :try_start_4
    aget v26, p4, v18

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_5

    :cond_4
    if-nez p5, :cond_7

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    :goto_a
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x2

    move/from16 v0, v26

    if-eq v0, v2, :cond_4

    const/16 v2, 0x9

    move/from16 v0, v26

    if-ne v0, v2, :cond_8

    :cond_6
    if-nez p5, :cond_a

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    :catch_0
    move-exception v15

    move-object v13, v14

    :goto_b
    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v13, :cond_1

    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :cond_7
    const/4 v2, 0x4

    :try_start_7
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    aget v3, p5, v18

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a

    :catch_2
    move-exception v16

    move-object v13, v14

    :goto_c
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v13, :cond_1

    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_5

    :catch_3
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :cond_8
    const/16 v2, 0xa

    move/from16 v0, v26

    if-eq v0, v2, :cond_6

    const/16 v2, 0xd

    move/from16 v0, v26

    if-ne v0, v2, :cond_b

    :cond_9
    const/4 v2, 0x4

    :try_start_a
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_a

    :catchall_0
    move-exception v12

    move-object v13, v14

    :goto_d
    if-nez v13, :cond_15

    :goto_e
    throw v12

    :cond_a
    const/4 v2, 0x4

    :try_start_b
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    aget v3, p5, v18

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto/16 :goto_a

    :cond_b
    const/16 v2, 0xb

    move/from16 v0, v26

    if-eq v0, v2, :cond_9

    const/16 v2, 0xe

    move/from16 v0, v26

    if-eq v0, v2, :cond_9

    const/16 v2, 0xc

    move/from16 v0, v26

    if-eq v0, v2, :cond_9

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto/16 :goto_a

    :cond_c
    if-nez p6, :cond_f

    :cond_d
    const/16 v19, 0x0

    :goto_f
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_10

    :cond_e
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    :goto_10
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    :cond_f
    if-eqz p7, :cond_d

    aget v19, p6, v18

    goto :goto_f

    :cond_10
    aget-object v2, p7, v18

    iget v2, v2, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_e

    aget-object v2, p7, v18

    iget v2, v2, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_e

    aget-object v2, p7, v18

    iget v2, v2, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    aget-object v3, p7, v18

    iget v3, v3, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    aget-object v3, p7, v18

    iget v3, v3, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    aget-object v3, p7, v18

    iget v3, v3, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v14, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_10

    :cond_11
    if-eqz p7, :cond_0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->WriteXMLMetaData(IFF[I[F[I[Lcom/samsung/android/media/virtualtour/CVector3;[Lcom/samsung/android/media/virtualtour/CVector3;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v32

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4

    :cond_14
    :try_start_c
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :goto_11
    move-object v13, v14

    goto/16 :goto_5

    :catch_4
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    :cond_15
    :try_start_d
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_e

    :catch_5
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e

    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "3DTour_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v23, v17

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "VirtualTour_%03d"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-static {v2, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v24, v17

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    :catch_6
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    :catch_7
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    :cond_17
    :try_start_e
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aget-object v3, v24, v17

    new-instance v6, Ljava/io/File;

    aget-object v7, v23, v17

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v2, v3, v6, v7, v8}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    move-result v25

    :goto_12
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_9

    :catch_8
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    :cond_18
    return v25

    :catchall_1
    move-exception v12

    goto/16 :goto_d

    :catch_9
    move-exception v16

    goto/16 :goto_c

    :catch_a
    move-exception v15

    goto/16 :goto_b
.end method

.method public getCaptureOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v0}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->getCaptureOrientation()I

    move-result v0

    return v0
.end method

.method public getNoOfImages()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->noOfImages:I

    return v0
.end method

.method public getTransitionArr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->transitiontypeArrList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionType()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTransitionsType:[I

    return-object v0
.end method

.method public getaTranslations()[Lcom/samsung/android/media/virtualtour/CVector3;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTranslations:[Lcom/samsung/android/media/virtualtour/CVector3;

    return-object v0
.end method

.method public getmAngles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->mAngles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public newVector3(Ljava/nio/ByteBuffer;)Lcom/samsung/android/media/virtualtour/CVector3;
    .locals 4

    new-instance v0, Lcom/samsung/android/media/virtualtour/CVector3;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/virtualtour/CVector3;-><init>(FFF)V

    return-object v0
.end method

.method public setNoOfImages(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->noOfImages:I

    return-void
.end method

.method public setTransitionType(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->transitiontypeArrList:Ljava/util/ArrayList;

    return-void
.end method

.method public setmAngles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->mAngles:Ljava/util/ArrayList;

    return-void
.end method
