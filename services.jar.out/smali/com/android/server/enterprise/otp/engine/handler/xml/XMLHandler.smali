.class public Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;
.super Ljava/lang/Object;
.source "XMLHandler.java"


# static fields
.field public static instance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->instance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;
    .locals 2

    const-class v1, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "OtpDbHelper::getInstance Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->instance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->instance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->instance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized createKeyProvClientHelloXML(Landroid/content/Context;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createKeyProvClientHelloXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized createKeyProvServerFinishedXML(Landroid/content/Context;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createKeyProvServerFinishedXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized createKeyProvTriggerXML(Landroid/content/Context;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createKeyProvTriggerXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseDskppXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "XMLHandler::parseDskppXMLBuffer: ENTER"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;

    invoke-direct {v2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;-><init>()V

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->isDskppValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->setKeyPin(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    invoke-direct {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    const-string/jumbo v2, "XMLHandler::parseDskppXMLBuffer: XML is not valid"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseDskppXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string/jumbo v4, "XMLHandler::parseDskppXMLFile: ENTER"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parseDskppXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v3

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "XMLHandler::parseDskppXMLFile: IO Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized parseKeyProvClientHelloXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parseDskppXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvClientHello()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseKeyProvClientHelloXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parseDskppXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvClientHello()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseKeyProvServerFinishedXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parseDskppXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvServerFinished()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseKeyProvServerFinishedXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parseDskppXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvServerFinished()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseKeyProvTriggerXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parseDskppXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvTrigger()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parseKeyProvTriggerXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parseDskppXMLFile(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->getKeyProvTrigger()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized parsePskc(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v5, "XMLHandler::parsePskc: ENTER"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;-><init>()V

    invoke-virtual {v5, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->isPskcValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->setKeyPin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;->parse(Ljava/io/InputStream;)V

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v4

    :cond_1
    if-eqz v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "XMLHandler::parsePskc: EXIT [KeyPackage count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v4

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "XMLHandler::parsePskc: Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_2
    :try_start_4
    const-string/jumbo v5, "XMLHandler::parsePskc: XML is not valid"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v6

    :cond_3
    :try_start_5
    const-string/jumbo v5, "XMLHandler::parsePskc: EXIT [KeyPackage List is null]"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
