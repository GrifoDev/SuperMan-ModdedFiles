.class Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$SecureFileSystemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureFileSystemDatabase"
.end annotation


# static fields
.field private static final ATTR_TIMA_VERSION:Ljava/lang/String; = "timaVersion"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field private static final ELEMENT_SECURE_FS:Ljava/lang/String; = "secure_fs"

.field private static final SECURE_FS_XML:Ljava/lang/String; = "secure_fs.xml"


# instance fields
.field final synthetic this$1:Lcom/android/server/SdpManagerService$SecureFileSystemManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;ILjava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;->updateSecureFsXml(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;->this$1:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService$SecureFileSystemManager;Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;-><init>(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)V

    return-void
.end method

.method private getSecureFsXmlFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/users/secure_fs.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private updateSecureFsXml(ILjava/lang/String;)I
    .locals 17

    const/4 v7, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;->getSecureFsXmlFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    const-string/jumbo v15, "secure_fs"

    invoke-interface {v3, v15}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v3, v10}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string/jumbo v15, "timaVersion"

    invoke-interface {v3, v15}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    const-string/jumbo v15, "version"

    invoke-interface {v3, v15}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v2, v15}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v10, v1}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-interface {v10, v2}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v13

    const-string/jumbo v15, "indent"

    const-string/jumbo v16, "yes"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v11, v3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v9, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v9, v7}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v13, v11, v9}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v15, 0x0

    return v15

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v15, "SecureFileSystem"

    const-string/jumbo v16, " putPolicy failed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v15, -0x63

    return v15

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    const-string/jumbo v15, "SecureFileSystem"

    const-string/jumbo v16, " putPolicy failed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v15, -0x63

    return v15

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    const-string/jumbo v15, "SecureFileSystem"

    const-string/jumbo v16, " putPolicy failed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v15, -0x63

    return v15
.end method
