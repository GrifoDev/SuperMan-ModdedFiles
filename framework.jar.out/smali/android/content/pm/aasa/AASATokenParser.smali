.class public Landroid/content/pm/aasa/AASATokenParser;
.super Ljava/lang/Object;
.source "AASATokenParser.java"


# instance fields
.field private DEBUG:Z

.field private SamsungAnalyticsLog:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mArchiveSourcePath:Ljava/lang/String;

.field private mCACertName:Ljava/lang/String;

.field private mCACertNameFromSystem:Ljava/lang/String;

.field private mCAKeyIndex:Ljava/lang/String;

.field private mCertName:Ljava/lang/String;

.field private mCertPath:Ljava/lang/String;

.field private mIsCalledByASKS:Z

.field private mIsSigned512:Z

.field private mRootCertName:Ljava/lang/String;

.field private mRootKeyIndex:Ljava/lang/String;

.field private mTokenContents:[B

.field private mTokenName:Ljava/lang/String;

.field private mTokenValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private misAppSystem:Z

.field private misDeviceMode:Z

.field private secureTimePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertPath:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertName:Ljava/lang/String;

    const-string/jumbo v0, "/data/system/.aasa/AASApolicy/ASKS_INTER_"

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mCACertName:Ljava/lang/String;

    const-string/jumbo v0, "/system/etc/ASKS_INTER_"

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mCACertNameFromSystem:Ljava/lang/String;

    const-string/jumbo v0, "/system/etc/ASKS_ROOT_1.crt"

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mRootCertName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mCAKeyIndex:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mRootKeyIndex:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mIsCalledByASKS:Z

    iput-boolean v1, p0, Landroid/content/pm/aasa/AASATokenParser;->misDeviceMode:Z

    iput-boolean v1, p0, Landroid/content/pm/aasa/AASATokenParser;->misAppSystem:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mIsSigned512:Z

    const-string/jumbo v0, "/data/system/.aasa/SamsungAnalyticsLog"

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->SamsungAnalyticsLog:Ljava/lang/String;

    const-string/jumbo v0, "/data/system/.aasa/trustedTime"

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->secureTimePath:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/content/pm/aasa/AASATokenParser;->DEBUG:Z

    const-string/jumbo v0, "AASATokenParser"

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method private AASA_isTargetPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v6, "UTF-8"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v5, "PACKAGE"

    invoke-direct {p0, v2, v5, v4}, Landroid/content/pm/aasa/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v6, "UTF-8"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v5, "SERIALNUMBER"

    invoke-direct {p0, v2, v5, v4}, Landroid/content/pm/aasa/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v6, "UTF-8"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " pass all with devtoken :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    return v5

    :cond_0
    return v8

    :cond_1
    return v8

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AASA_verifyDevice er"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    return v8

    :catch_1
    move-exception v1

    const-string/jumbo v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AASA_verifyDevice err"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    return v8
.end method

.method private AASA_verifyDevice(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v6, "UTF-8"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v5, "DEVIEID"

    invoke-direct {p0, v2, v5, v4}, Landroid/content/pm/aasa/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v6, "UTF-8"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AASA_verifyDevice OK with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    return v5

    :cond_0
    return v8

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AASA_verifyDevice er"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    return v8

    :catch_1
    move-exception v1

    const-string/jumbo v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AASA_verifyDevice err"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    return v8
.end method

.method private ASKS_GetDataFromXml(Ljava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v13, ""

    const/4 v6, 0x0

    const/4 v14, 0x0

    const-string/jumbo v13, "/data/system/.aasa/AASApolicy/ASKSC.xml"

    const/4 v14, 0x2

    new-array v6, v14, [Ljava/lang/String;

    const-string/jumbo v16, "CERT"

    const/16 v17, 0x0

    aput-object v16, v6, v17

    const-string/jumbo v16, "NUM"

    const/16 v17, 0x1

    aput-object v16, v6, v17

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_1

    return-void

    :cond_1
    const/4 v8, 0x0

    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    invoke-interface {v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string/jumbo v10, ""

    const/4 v15, 0x0

    const-string/jumbo v1, ""

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_0
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v5, v0, :cond_6

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void

    :pswitch_0
    const/16 v16, 0x0

    :try_start_2
    aget-object v16, v6, v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    :cond_3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    const/16 v16, 0x1

    aget-object v16, v6, v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string/jumbo v16, "DATE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    const/16 v16, 0x0

    aget-object v16, v6, v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_2
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-void

    :cond_6
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v3

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catch_3
    move-exception v9

    goto :goto_3

    :catch_4
    move-exception v9

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private AddRestrictedInfoToXML(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v5, "/data/system/.aasa/RestrictedPackages.xml"

    invoke-virtual {p0, v5}, Landroid/content/pm/aasa/AASATokenParser;->GetRestrictedInfoFromXML(Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    invoke-virtual {p0, v4, p1}, Landroid/content/pm/aasa/AASATokenParser;->InsertRestrictedInfo(Landroid/content/pm/aasa/RestrictList;Ljava/util/HashMap;)Landroid/content/pm/aasa/RestrictList;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {p0, v4}, Landroid/content/pm/aasa/AASATokenParser;->SetRestrictedInfoToXML(Landroid/content/pm/aasa/RestrictList;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_1
.end method

.method private LEW([BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static SHA(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string/jumbo v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string/jumbo v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/aasa/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static SHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string/jumbo v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/aasa/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static SHA256_FOR_PACKAGE(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "AASAASKS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/aasa/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static StringToByteArray(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v3, v0, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private advancedCheckHash()Ljava/lang/String;
    .locals 29

    const/16 v20, 0x0

    :try_start_0
    const-string/jumbo v26, "SHA-1"

    invoke-static/range {v26 .. v26}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v20

    :goto_0
    const/16 v18, 0x0

    :try_start_1
    new-instance v19, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v19, :cond_9

    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v16, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v10

    const/4 v11, 0x0

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v26

    if-eqz v26, :cond_2

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/jar/JarEntry;

    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v26, "META-INF/"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_0

    const-string/jumbo v26, "SEC-INF/"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_0

    const-string/jumbo v26, "token/"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/content/pm/aasa/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/security/MessageDigest;)[Ljava/security/cert/Certificate;

    invoke-virtual/range {v20 .. v20}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/content/pm/aasa/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v26, 0xc350

    move/from16 v0, v26

    if-lt v11, v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v17

    move-object/from16 v18, v19

    :goto_2
    :try_start_3
    const-string/jumbo v26, "AASATokenParser"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, " ERROR: AASA_VerifyToken check hash "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v18, :cond_1

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_1
    :goto_3
    const/16 v26, 0x0

    return-object v26

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    if-eqz v11, :cond_3

    :try_start_5
    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->clear()V

    :cond_3
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Ljava/util/jar/JarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    const/16 v21, 0x0

    :try_start_6
    const-string/jumbo v26, "SHA-256"

    invoke-static/range {v26 .. v26}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v21

    :goto_4
    const/4 v12, 0x0

    :goto_5
    :try_start_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v12, v0, :cond_7

    new-instance v23, Ljava/util/TreeMap;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    const-string/jumbo v26, "ISO-8859-1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v26

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v7

    :try_start_9
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v26

    move-object/from16 v18, v19

    :goto_7
    if-eqz v18, :cond_5

    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/jar/JarFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_5
    :goto_8
    throw v26

    :catch_3
    move-exception v8

    :try_start_b
    invoke-virtual {v8}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_4

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual/range {v21 .. v21}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/content/pm/aasa/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v26, "AASATokenParser"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, " advanced hash::"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v19, :cond_8

    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/util/jar/JarFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :cond_8
    :goto_9
    return-object v4

    :catch_4
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :cond_9
    if-eqz v19, :cond_a

    :try_start_d
    invoke-virtual/range {v19 .. v19}, Ljava/util/jar/JarFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_a
    :goto_a
    move-object/from16 v18, v19

    goto/16 :goto_3

    :catch_5
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_6
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_7
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_1
    move-exception v26

    goto :goto_7

    :catch_8
    move-exception v17

    goto/16 :goto_2
.end method

.method public static byteListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string/jumbo v3, ""

    return-object v3

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private calculateHashValueFromXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 24

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x2000

    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v19, "/data/system/.aasa/RestrictedPackages.xml"

    const-string/jumbo v20, "r"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v19, "SHA-256"

    invoke-static/range {v19 .. v19}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    const-string/jumbo v19, "showmethemoney"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->update([B)V

    new-array v3, v2, [B

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    :goto_0
    cmp-long v19, v16, v12

    if-gez v19, :cond_1

    sub-long v20, v12, v16

    const-wide/16 v22, 0x2000

    cmp-long v19, v20, v22

    if-ltz v19, :cond_0

    const-wide/16 v20, 0x2000

    :goto_1
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v8, v3, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v11, v3, v0, v1}, Ljava/security/MessageDigest;->update([BII)V

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v16, v16, v20

    goto :goto_0

    :cond_0
    sub-long v20, v12, v16

    goto :goto_1

    :cond_1
    invoke-virtual {v11}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v19

    move/from16 v0, v19

    new-array v14, v0, [B

    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v10, 0x0

    :goto_2
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    aget-byte v19, v14, v10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    if-eqz v8, :cond_3

    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_3
    move-object v7, v8

    :cond_4
    :goto_4
    if-nez v9, :cond_5

    const-string/jumbo v9, ""

    :cond_5
    return-object v9

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v5

    :goto_5
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_4

    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v4

    :goto_6
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_4

    :try_start_6
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception v6

    :goto_7
    :try_start_7
    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v7, :cond_4

    :try_start_8
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    :catch_6
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v19

    :goto_8
    if-eqz v7, :cond_6

    :try_start_9
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_6
    :goto_9
    throw v19

    :catch_7
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catchall_1
    move-exception v19

    move-object v7, v8

    goto :goto_8

    :catch_8
    move-exception v6

    move-object v7, v8

    goto :goto_7

    :catch_9
    move-exception v4

    move-object v7, v8

    goto :goto_6

    :catch_a
    move-exception v5

    move-object v7, v8

    goto :goto_5
.end method

.method private checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    if-eq v0, v3, :cond_1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_1
    const/4 v2, 0x0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkHash(Ljava/lang/String;)Z
    .locals 23

    const/4 v12, 0x0

    :try_start_0
    new-instance v13, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_e

    :try_start_1
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v13}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/JarEntry;

    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v14

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v20, "META-INF/"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string/jumbo v20, "token"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-string/jumbo v20, "Token.xml"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    :cond_1
    invoke-static {v13, v8, v3}, Landroid/content/pm/aasa/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)[Ljava/security/cert/Certificate;

    invoke-virtual {v15, v14, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v11

    move-object v12, v13

    :goto_1
    :try_start_2
    const-string/jumbo v20, "AASATokenParser"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, " ERROR: AASA_VerifyToken check hash "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v20, 0x0

    if-eqz v12, :cond_2

    :try_start_3
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    :cond_2
    :goto_2
    return v20

    :cond_3
    if-eqz v13, :cond_4

    :try_start_4
    invoke-virtual {v13}, Ljava/util/jar/JarFile;->close()V

    :cond_4
    new-instance v17, Ljava/util/TreeMap;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    const/4 v7, 0x0

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_5

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Byte;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    const-string/jumbo v2, ""
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static/range {v16 .. v16}, Landroid/content/pm/aasa/AASATokenParser;->byteListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/content/pm/aasa/AASATokenParser;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    :try_start_6
    const-string/jumbo v20, "AASATokenParser"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, " ascending hash::"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "  comp from token:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v20

    if-eqz v20, :cond_9

    const/16 v20, 0x1

    if-eqz v13, :cond_7

    :try_start_7
    invoke-virtual {v13}, Ljava/util/jar/JarFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_4
    return v20

    :catch_1
    move-exception v4

    :try_start_8
    const-string/jumbo v20, "AASATokenParser"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, " SHA1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/16 v20, 0x0

    if-eqz v13, :cond_8

    :try_start_9
    invoke-virtual {v13}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_8
    :goto_5
    return v20

    :catch_2
    move-exception v5

    goto :goto_5

    :catch_3
    move-exception v5

    goto :goto_4

    :cond_9
    :try_start_a
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    const/4 v7, 0x0

    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_a

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Byte;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    :try_start_b
    invoke-static/range {v16 .. v16}, Landroid/content/pm/aasa/AASATokenParser;->byteListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/content/pm/aasa/AASATokenParser;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v2

    :try_start_c
    const-string/jumbo v20, "AASATokenParser"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, " insertion hash::"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "  comp from token:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result v20

    if-eqz v20, :cond_e

    const/16 v20, 0x1

    if-eqz v13, :cond_c

    :try_start_d
    invoke-virtual {v13}, Ljava/util/jar/JarFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :cond_c
    :goto_7
    return v20

    :catch_4
    move-exception v4

    :try_start_e
    const-string/jumbo v20, "AASATokenParser"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, " SHA1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const/16 v20, 0x0

    if-eqz v13, :cond_d

    :try_start_f
    invoke-virtual {v13}, Ljava/util/jar/JarFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    :cond_d
    :goto_8
    return v20

    :catch_5
    move-exception v5

    goto :goto_8

    :catch_6
    move-exception v5

    goto :goto_7

    :cond_e
    if-eqz v13, :cond_f

    :try_start_10
    invoke-virtual {v13}, Ljava/util/jar/JarFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    :cond_f
    :goto_9
    const/16 v20, 0x0

    return v20

    :catch_7
    move-exception v5

    goto :goto_9

    :catch_8
    move-exception v5

    goto/16 :goto_2

    :catchall_0
    move-exception v20

    :goto_a
    if-eqz v12, :cond_10

    :try_start_11
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    :cond_10
    :goto_b
    throw v20

    :catch_9
    move-exception v5

    goto :goto_b

    :catchall_1
    move-exception v20

    move-object v12, v13

    goto :goto_a

    :catch_a
    move-exception v11

    goto/16 :goto_1
.end method

.method private checkRestrictIntegrity()Z
    .locals 3

    const-string/jumbo v2, "/data/system/.aasa/RestrictedPackages.xml"

    invoke-direct {p0, v2}, Landroid/content/pm/aasa/AASATokenParser;->calculateHashValueFromXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "/data/system/.aasa/rTicket"

    invoke-direct {p0, v2}, Landroid/content/pm/aasa/AASATokenParser;->getCalculatedHashValueFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v7, "AASATokenParser"

    const-string/jumbo v8, "ERROR: checkTokenTarget input is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    const-string/jumbo v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "ro.product.model"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const-string/jumbo v7, "ALL"

    aget-object v8, v4, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    array-length v7, v4

    if-ne v7, v10, :cond_7

    const-string/jumbo v7, "ALL"

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    array-length v7, v3

    if-ne v7, v10, :cond_3

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x1

    const/4 v0, 0x1

    :goto_1
    array-length v7, v3

    if-ge v0, v7, :cond_2

    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v7, "ALL"

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v0, 0x0

    :goto_2
    array-length v7, v3

    if-ge v0, v7, :cond_2

    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    const/4 v0, 0x1

    :goto_3
    array-length v7, v4

    if-ge v0, v7, :cond_8

    aget-object v7, v4, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v2, 0x0

    :cond_8
    if-eqz v2, :cond_2

    const-string/jumbo v7, "ALL"

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    array-length v7, v3

    if-ne v7, v10, :cond_a

    const/4 v2, 0x1

    goto :goto_0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x1

    :goto_4
    array-length v7, v3

    if-ge v0, v7, :cond_2

    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v2, 0x0

    goto :goto_0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    const-string/jumbo v7, "ALL"

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_5
    array-length v7, v3

    if-ge v1, v7, :cond_2

    aget-object v7, v3, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v2, 0x1

    goto :goto_0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    const-string/jumbo v7, "ALL"

    aget-object v8, v4, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v0, 0x0

    :goto_6
    array-length v7, v4

    if-ge v0, v7, :cond_f

    aget-object v7, v4, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v2, 0x1

    :cond_f
    if-eqz v2, :cond_2

    const-string/jumbo v7, "ALL"

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    array-length v7, v3

    if-ne v7, v10, :cond_12

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_7
    array-length v7, v4

    if-ge v0, v7, :cond_2

    aget-object v7, v4, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    const/4 v0, 0x1

    :goto_8
    array-length v7, v3

    if-ge v0, v7, :cond_2

    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    const-string/jumbo v7, "ALL"

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_9
    array-length v7, v3

    if-ge v1, v7, :cond_2

    aget-object v7, v3, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private compXmlString([BIII)Ljava/lang/String;
    .locals 6

    if-gez p4, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    mul-int/lit8 v4, p4, 0x4

    add-int/2addr v4, p2

    invoke-direct {p0, p1, v4}, Landroid/content/pm/aasa/AASATokenParser;->LEW([BI)I

    move-result v4

    add-int v3, p3, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    add-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    aget-byte v4, p1, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method private convertMillsToString(J)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertStringToMills(Ljava/lang/String;)J
    .locals 7

    iget-boolean v3, p0, Landroid/content/pm/aasa/AASATokenParser;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/content/pm/aasa/AASATokenParser;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "convertStringToMills : "

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :goto_0
    return-wide v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, p0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-byte v0, p0, v6

    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v2, v5, 0xf

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ltz v2, :cond_0

    const/16 v5, 0x9

    if-gt v2, v5, :cond_0

    add-int/lit8 v5, v2, 0x30

    int-to-char v5, v5

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v0, 0xf

    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    move v4, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v2, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getCalculatedHashValueFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v0, v1

    :cond_1
    :goto_1
    if-nez v5, :cond_2

    const-string/jumbo v5, ""

    :cond_2
    return-object v5

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v2

    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_5
    throw v6

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v6

    move-object v0, v1

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v0, v1

    goto :goto_3

    :catch_7
    move-exception v3

    move-object v0, v1

    goto :goto_2
.end method

.method private getTrustedFile()[Ljava/lang/String;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    iget-object v7, p0, Landroid/content/pm/aasa/AASATokenParser;->secureTimePath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_7

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v7, v5

    if-ne v7, v9, :cond_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_1
    move-object v3, v4

    :cond_4
    :goto_2
    if-eqz v5, :cond_6

    array-length v7, v5

    if-ne v7, v9, :cond_6

    return-object v5

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_5
    throw v7

    :catch_3
    move-exception v2

    goto :goto_5

    :cond_6
    return-object v8

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_4

    :catchall_2
    move-exception v7

    move-object v0, v1

    move-object v3, v4

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v3, v4

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v0, v1

    move-object v3, v4

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method private hasTrustedTime()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->secureTimePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/security/MessageDigest;)[Ljava/security/cert/Certificate;
    .locals 10

    const/4 v6, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_0

    return-object v6

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v7, 0x1000

    new-array v4, v7, [B

    if-eqz v3, :cond_3

    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x1000

    invoke-virtual {v3, v4, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {p3, v4, v7, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TinyAASA + No IO "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_1
    return-object v6

    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    :cond_4
    return-object v6

    :catch_1
    move-exception v1

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TinyAASA + No RUN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)[Ljava/security/cert/Certificate;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/jar/JarEntry;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)[",
            "Ljava/security/cert/Certificate;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x400

    new-array v5, v7, [B

    if-eqz v4, :cond_2

    :cond_0
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_0

    aget-byte v7, v5, v3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_2
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v1

    const-string/jumbo v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No RUN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    return-object v10

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No IO "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    array-length v4, p3

    const/4 v5, 0x0

    invoke-virtual {v3, p3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    const-string/jumbo v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No RUN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_0
    return-object v7

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No IO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private parseRestrictList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v1}, Landroid/content/pm/aasa/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "DATE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "REVOCATE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-eq v2, v5, :cond_1

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    :goto_2
    return v4

    :cond_2
    move v4, v5

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeRestrictFile()V
    .locals 7

    const/4 v4, 0x0

    const-string/jumbo v3, "/data/system/.aasa/"

    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v5, "RestrictedPackages.xml"

    aput-object v5, v1, v4

    const-string/jumbo v5, "rTicket"

    const/4 v6, 0x1

    aput-object v5, v1, v6

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setIntegrityValueTofile(Ljava/lang/String;)Z
    .locals 7

    const-string/jumbo v5, "/data/system/.aasa/RestrictedPackages.xml"

    invoke-direct {p0, v5}, Landroid/content/pm/aasa/AASATokenParser;->calculateHashValueFromXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_1
    move-object v3, v4

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Landroid/content/pm/aasa/AASATokenParser;->getCalculatedHashValueFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    const-string/jumbo v5, "AASATokenParser"

    const-string/jumbo v6, "fail to set integrity value"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_3
    throw v5

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v4

    goto :goto_1
.end method

.method private setTrustTimeByToken(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/content/pm/aasa/AASATokenParser;->convertStringToMills(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/aasa/AASATokenParser;->setTrustedFile(IJJ)V

    return-void
.end method

.method private setTrustedFile(IJJ)V
    .locals 8

    const/4 v1, 0x0

    const-string/jumbo v4, "security.ASKS.time_value"

    invoke-direct {p0, p2, p3}, Landroid/content/pm/aasa/AASATokenParser;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v4, p0, Landroid/content/pm/aasa/AASATokenParser;->secureTimePath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_0
    move-object v1, v2

    :cond_1
    :goto_0
    const-string/jumbo v4, "security.ASKS.time_value"

    const-string/jumbo v5, "00000000"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v4, "00000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/aasa/AASATokenParser;->getTrustedToday()Ljava/lang/String;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    iget-boolean v4, p0, Landroid/content/pm/aasa/AASATokenParser;->DEBUG:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/content/pm/aasa/AASATokenParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setTrustedTime() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_4
    throw v4

    :cond_5
    iget-object v4, p0, Landroid/content/pm/aasa/AASATokenParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getElapsedToday : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private static toChars([B)[C
    .locals 10

    const/16 v9, 0xa

    move-object v4, p0

    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    new-array v5, v1, [C

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-byte v6, p0, v3

    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v2, v7, 0xf

    mul-int/lit8 v8, v3, 0x2

    if-lt v2, v9, :cond_0

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_1
    int-to-char v7, v7

    aput-char v7, v5, v8

    and-int/lit8 v2, v6, 0xf

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v7, 0x1

    if-lt v2, v9, :cond_1

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_2
    int-to-char v7, v7

    aput-char v7, v5, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v2, 0x30

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v2, 0x30

    goto :goto_2

    :cond_2
    return-object v5
.end method

.method private writeBlockApkList(Ljava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "/data/system/.aasa/blockedList.log"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v2, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v4, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    const-string/jumbo v5, "AASAASKS"

    const-string/jumbo v6, "writeBlockApkList() Success"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_0
    move-object v3, v4

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    const-string/jumbo v5, "AASAASKS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeBlockApkList() Fail "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_2
    throw v5

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v4

    goto :goto_1
.end method


# virtual methods
.method public AASA_IsASKSToken(Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "SEC-INF"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "buildinfo"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    iput-object p1, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    iput-object v5, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SEC-INF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "buildConfirm.crt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x1

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    :cond_2
    move-object v3, v4

    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/content/pm/aasa/AASATokenParser;->mIsCalledByASKS:Z

    :cond_4
    return v6

    :cond_5
    :try_start_2
    const-string/jumbo v7, "META-INF"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "SEC-INF"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "buildinfo"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iput-object p1, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    iput-object v5, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "META-INF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "SEC-INF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "buildConfirm.crt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_2
    :try_start_3
    const-string/jumbo v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " ERROR: AASA_ASKSIsToken "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    :cond_6
    throw v7

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v3, v4

    goto :goto_2
.end method

.method public AASA_IsToken(Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/util/jar/JarFile;

    invoke-direct {v5, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "token"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "Token.xml"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, ""

    iput-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertName:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    iput-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x1

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V

    :cond_2
    move-object v4, v5

    :cond_3
    :goto_0
    return v7

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    const-string/jumbo v8, "AASATokenParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " ERROR: AASA_IsToken "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_2
    :try_start_3
    const-string/jumbo v8, "AASATokenParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " ERROR: AASA_IsToken "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    :cond_4
    throw v8

    :catchall_1
    move-exception v8

    move-object v4, v5

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v4, v5

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v4, v5

    goto :goto_1
.end method

.method public AASA_VerifyFile([B)[B
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/pm/aasa/AASATokenParser;->checkIntegrity([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public AASA_VerifyToken(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/aasa/AASATokenParser;->AASA_VerifyToken(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public AASA_VerifyToken(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, " AASA_VerifyToken START"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mIsCalledByASKS:Z

    move/from16 v19, v0

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mIsCalledByASKS:Z

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v23, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v39, v0

    const-string/jumbo v40, "/data/"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_0

    const/16 v20, 0x1

    :cond_0
    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v21

    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/aasa/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/pm/aasa/AASATokenParser;->checkIntegrity([B)[B

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    if-eqz v23, :cond_2

    invoke-virtual/range {v23 .. v23}, Ljava/util/jar/JarFile;->close()V

    :cond_2
    move-object/from16 v22, v23

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v39, v0

    if-eqz v39, :cond_4

    if-nez v4, :cond_6

    :cond_4
    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, " ERROR: plz check certification in the device"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x2

    return v39

    :catch_0
    move-exception v18

    :goto_1
    :try_start_2
    const-string/jumbo v39, "AASATokenParser"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " ERROR: AASA_VerifyToken "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    :catchall_0
    move-exception v39

    :goto_2
    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/util/jar/JarFile;->close()V

    :cond_5
    throw v39

    :cond_6
    const/16 v22, 0x0

    const/16 v21, 0x0

    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string/jumbo v39, "MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/aasa/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v39

    if-eqz v39, :cond_7

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/content/pm/aasa/AASATokenParser;->isInteger(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_8

    const/16 v39, 0x1

    return v39

    :cond_7
    const/16 v39, 0x1

    return v39

    :cond_8
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/aasa/AASATokenParser;->misDeviceMode:Z

    move/from16 v39, v0

    if-eqz v39, :cond_9

    const/16 v39, 0xff

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_9

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, " Ship mode device does not support MODE 255"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x1

    return v39

    :cond_9
    const/4 v13, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sparse-switch v38, :sswitch_data_0

    const/16 v39, 0x1

    return v39

    :sswitch_0
    if-eqz v19, :cond_d

    if-eqz v20, :cond_a

    const-string/jumbo v39, "AASATokenParser"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Violate security policy of MSTG. Package("

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ") is blocked. "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Landroid/content/pm/aasa/AASATokenParser;->writeBlockApkList(Ljava/lang/String;)V

    const/16 v39, 0x5

    return v39

    :cond_a
    const-string/jumbo v39, "AASATokenParser"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " Token 0:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v39, "PACKAGE"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "CREATE"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "ADVANCEDDIGEST"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_c

    const-string/jumbo v39, "ADVANCEDDIGEST"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_b
    :goto_4
    :sswitch_1
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v39

    move/from16 v0, v39

    if-ge v12, v0, :cond_1a

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/aasa/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v39

    if-eqz v39, :cond_19

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_c
    const-string/jumbo v39, "DIGEST"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_1
    move-exception v8

    :try_start_5
    const-string/jumbo v39, "AASATokenParser"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v39, 0x1

    return v39

    :cond_d
    :try_start_6
    const-string/jumbo v39, "PACKAGE"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "CERT"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/aasa/AASATokenParser;->misAppSystem:Z

    move/from16 v39, v0

    if-nez v39, :cond_e

    const-string/jumbo v39, "ADVANCEDDIGEST"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_f

    const-string/jumbo v39, "ADVANCEDDIGEST"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_e
    const-string/jumbo v39, "MODELS"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "CARRIERS"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v9

    const-string/jumbo v39, "AASATokenParser"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x1

    return v39

    :cond_f
    :try_start_7
    const-string/jumbo v39, "DIGEST"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :sswitch_2
    if-eqz v19, :cond_15

    const-string/jumbo v39, "PACKAGE"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "DIGEST"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "CREATE"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "VERSION"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "INDEX"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "MODELS"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_10

    const-string/jumbo v39, "MODELS"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v39, "CARRIERS"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_11

    const-string/jumbo v39, "CARRIERS"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v39, "EXPIRED"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_12

    const-string/jumbo v39, "EXPIRED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v39, "SERIALNUMBER"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_13

    const-string/jumbo v39, "SERIALNUMBER"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v39, "RESTRICT"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_14

    const-string/jumbo v39, "RESTRICT"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_15
    const-string/jumbo v39, "PACKAGE"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "CERT"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/aasa/AASATokenParser;->misAppSystem:Z

    move/from16 v39, v0

    if-nez v39, :cond_b

    const-string/jumbo v39, "ADVANCEDDIGEST"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_16

    const-string/jumbo v39, "ADVANCEDDIGEST"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "MODELS"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "CARRIERS"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_3
    const-string/jumbo v39, "CERT"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_4
    const-string/jumbo v39, "UUID"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_5
    const-string/jumbo v39, "PACKAGE"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_6
    const-string/jumbo v39, "UUID"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "ACCOUNT"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_7
    const-string/jumbo v39, "PACKAGE"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "CERT"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_8
    const-string/jumbo v39, "PACKAGE"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "CERT"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/aasa/AASATokenParser;->misAppSystem:Z

    move/from16 v39, v0

    if-nez v39, :cond_17

    const-string/jumbo v39, "DIGEST"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    const-string/jumbo v39, "MODELS"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "CARRIERS"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    goto/16 :goto_4

    :sswitch_9
    const-string/jumbo v39, "PACKAGE"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "CERT"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_a
    const-string/jumbo v39, "PACKAGE"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "CERT"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/aasa/AASATokenParser;->misAppSystem:Z

    move/from16 v39, v0

    if-nez v39, :cond_18

    const-string/jumbo v39, "ADVANCEDDIGEST"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    const-string/jumbo v39, "MODELS"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "CARRIERS"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_19
    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, " Token does not have value"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x1

    return v39

    :cond_1a
    const/16 v33, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v26, 0x0

    const/16 v25, 0x0

    const-string/jumbo v39, "security.ASKS.time_value"

    const-string/jumbo v40, "00000000"

    invoke-static/range {v39 .. v40}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_1b

    const-string/jumbo v39, "00000000"

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1c

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->getTrustedToday()Ljava/lang/String;

    move-result-object v35

    :cond_1c
    const/4 v12, 0x0

    :goto_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v39

    move/from16 v0, v39

    if-ge v12, v0, :cond_3b

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    const-string/jumbo v40, "PACKAGE"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1e

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1d

    const-string/jumbo v39, "AASATokenParser"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "OK:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v33, v33, 0x1

    :cond_1d
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_1e
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    const-string/jumbo v40, "CERT"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_20

    const/16 v16, 0x0

    :goto_9
    array-length v0, v4

    move/from16 v39, v0

    move/from16 v0, v16

    move/from16 v1, v39

    if-ge v0, v1, :cond_1d

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    new-instance v40, Ljava/lang/String;

    aget-object v41, v4, v16

    invoke-virtual/range {v41 .. v41}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v41

    invoke-static/range {v41 .. v41}, Landroid/content/pm/aasa/AASATokenParser;->toChars([B)[C

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1f

    add-int/lit8 v33, v33, 0x1

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "OK:CERT"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    :cond_20
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    const-string/jumbo v40, "UUID"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_21

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "OK:UUID"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1d

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1d

    add-int/lit8 v33, v33, 0x1

    goto :goto_8

    :cond_21
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    const-string/jumbo v40, "ACCOUNT"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_22

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "OK:ACCOUNT"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    :cond_22
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    const-string/jumbo v40, "DIGEST"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_25

    if-eqz v19, :cond_24

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->advancedCheckHash()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_23

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_23

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "OK:AdvancedHASH"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    :cond_23
    const-string/jumbo v40, "AASATokenParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "NOT OK:AdvancedHASH : "

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v41, " comp : "

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_24
    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/content/pm/aasa/AASATokenParser;->checkHash(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1d

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "OK:HASH"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    :cond_25
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    const-string/jumbo v40, "ADVANCEDDIGEST"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_27

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->advancedCheckHash()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_26

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_26

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "OK:AdvancedHASH"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    :cond_26
    const-string/jumbo v40, "AASATokenParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "NOT OK:AdvancedHASH : "

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v41, " comp : "

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_27
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    const-string/jumbo v40, "MODELS"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_29

    if-nez v14, :cond_28

    const/4 v14, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    goto/16 :goto_8

    :cond_28
    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1d

    add-int/lit8 v33, v33, 0x1

    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    :cond_29
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    const-string/jumbo v40, "CARRIERS"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2b

    if-eqz v14, :cond_2a

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1d

    add-int/lit8 v33, v33, 0x1

    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    :cond_2a
    const/4 v14, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    goto/16 :goto_8

    :cond_2b
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    const-string/jumbo v40, "CREATE"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_31

    const-string/jumbo v40, "AASATokenParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "CREATE : "

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2

    if-eqz v15, :cond_2f

    :try_start_8
    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    move-object/from16 v0, v39

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_2c

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "createDate is bigger than expiredDate."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x4

    return v39

    :cond_2c
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v39

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_2d

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "createDate is bigger than today."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/content/pm/aasa/AASATokenParser;->setTrustTimeByToken(Ljava/lang/String;)V

    :cond_2d
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v39

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_2e

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "today Date is bigger than expiredDate."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2

    const/16 v39, 0x4

    return v39

    :cond_2e
    add-int/lit8 v33, v33, 0x1

    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    :catch_3
    move-exception v27

    :try_start_9
    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "CREATE : NumberFormatException"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_2

    const/16 v39, 0x1

    return v39

    :cond_2f
    const/4 v15, 0x1

    :try_start_a
    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    move-object/from16 v0, v39

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v39

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_30

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "createDate is bigger than today."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/content/pm/aasa/AASATokenParser;->setTrustTimeByToken(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_2

    :cond_30
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    :catch_4
    move-exception v27

    :try_start_b
    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "CREATE : NumberFormatException"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x1

    return v39

    :cond_31
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    const-string/jumbo v40, "EXPIRED"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_35

    const-string/jumbo v40, "AASATokenParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "EXPIRED : "

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_2

    if-eqz v15, :cond_34

    :try_start_c
    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    move-object/from16 v0, v39

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_32

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "createDate is bigger than expiredDate."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x4

    return v39

    :cond_32
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v39

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_33

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "today Date is bigger than expiredDate."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_2

    const/16 v39, 0x4

    return v39

    :cond_33
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    :catch_5
    move-exception v27

    :try_start_d
    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "EXPIRED : NumberFormatException"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x1

    return v39

    :cond_34
    const/4 v15, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto/16 :goto_8

    :cond_35
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    const-string/jumbo v40, "VERSION"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_36

    const-string/jumbo v40, "AASATokenParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "VERSION : "

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    :cond_36
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    const-string/jumbo v40, "INDEX"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_37

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string/jumbo v39, "AASATokenParser"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "INDEX : "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    :cond_37
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    const-string/jumbo v40, "SERIALNUMBER"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_38

    const-string/jumbo v40, "AASATokenParser"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "SERIALNUMBER : "

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    :cond_38
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    const-string/jumbo v40, "RESTRICT"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1d

    const/4 v11, 0x1

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v39, "PKG"

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_39

    const-string/jumbo v39, "RESTRICT"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/aasa/AASATokenParser;->parseRestrictList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v39

    if-eqz v39, :cond_39

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "find RESTRICT tag in XML"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v39, "PERMISSION"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/aasa/AASATokenParser;->parseRestrictList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v39

    if-nez v39, :cond_39

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "cannot find PERMISSION tag in XML"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    if-eqz v11, :cond_3a

    const-string/jumbo v39, "CONDITION"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/aasa/AASATokenParser;->parseRestrictList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v39

    if-eqz v39, :cond_3a

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "find CONDITION tag in XML"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v39, "DATELIMIT"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/aasa/AASATokenParser;->parseRestrictList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v39

    if-nez v39, :cond_3a

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, "cannot find DATELIMIT tag in XML"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    :cond_3b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v33

    if-ne v0, v1, :cond_41

    if-nez v13, :cond_3d

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, " Pass ALL"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_3c

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/content/pm/aasa/AASATokenParser;->AddRestrictedInfoToXML(Ljava/util/HashMap;)V

    :cond_3c
    const/16 v39, 0x0

    return v39

    :cond_3d
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v39, "SERIALNUMBER"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/aasa/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v39

    if-eqz v39, :cond_3e

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_3e
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v39

    if-nez v39, :cond_3f

    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, " Fail:uuidList"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x1

    return v39

    :cond_3f
    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_40

    const-string/jumbo v39, "AASATokenParser"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " PASS ALL with S/N:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x0

    return v39

    :cond_40
    const-string/jumbo v39, "AASATokenParser"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, " FAIL only S/N:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x1

    return v39

    :cond_41
    const-string/jumbo v39, "AASATokenParser"

    const-string/jumbo v40, " Fail: auth"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_2

    const/16 v39, 0x1

    return v39

    :catchall_1
    move-exception v39

    move-object/from16 v22, v23

    goto/16 :goto_2

    :catch_6
    move-exception v18

    move-object/from16 v22, v23

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0xa -> :sswitch_a
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method public AASA_getASKSInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v0, ""

    iput-object p1, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->advancedCheckHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    return-object v2
.end method

.method public AASA_getPackageInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 28

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    const v13, 0x100101

    const v20, 0x100102

    const v14, 0x100103

    const/16 v21, 0x24

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    :try_start_0
    new-instance v5, Ljava/util/jar/JarFile;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v26, "AndroidManifest.xml"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    const/16 v26, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->LEW([BI)I

    move-result v26

    mul-int/lit8 v26, v26, 0x4

    add-int/lit8 v22, v26, 0x24

    const/16 v26, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->LEW([BI)I

    move-result v25

    move/from16 v15, v25

    :goto_0
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    move/from16 v0, v26

    if-ge v15, v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v15}, Landroid/content/pm/aasa/AASATokenParser;->LEW([BI)I

    move-result v26

    const v27, 0x100102

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    move/from16 v25, v15

    :cond_0
    move/from16 v19, v25

    :cond_1
    :goto_1
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->LEW([BI)I

    move-result v23

    const v26, 0x100102

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    add-int/lit8 v26, v19, 0x1c

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->LEW([BI)I

    move-result v18

    add-int/lit8 v19, v19, 0x24

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_1

    add-int/lit8 v26, v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->LEW([BI)I

    move-result v7

    add-int/lit8 v26, v19, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->LEW([BI)I

    move-result v10

    add-int/lit8 v26, v19, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->LEW([BI)I

    move-result v8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v7}, Landroid/content/pm/aasa/AASATokenParser;->compXmlString([BIII)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v26, "versionCode"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v10, v0, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v10}, Landroid/content/pm/aasa/AASATokenParser;->compXmlString([BIII)Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    :cond_2
    add-int/lit8 v19, v19, 0x14

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v15, v15, 0x4

    goto/16 :goto_0

    :cond_4
    new-instance v26, Ljava/lang/Integer;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    goto :goto_3

    :cond_5
    const v26, 0x100103

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    add-int/lit8 v19, v19, 0x18

    goto/16 :goto_1

    :cond_6
    const v26, 0x100101

    :cond_7
    if-eqz v16, :cond_8

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_9
    :goto_4
    if-nez v17, :cond_a

    const-string/jumbo v17, "MAYBEOTA"

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v27, "WARNING: Package Name can not be found, Maybe It is OTA"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    return-object v17

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v11

    :goto_5
    :try_start_3
    const-string/jumbo v26, "AASATokenParser"

    const-string/jumbo v27, "Exception on getpackageinfo"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v26, 0x0

    if-eqz v16, :cond_b

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_c
    :goto_6
    return-object v26

    :catch_2
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_0
    move-exception v26

    :goto_7
    if-eqz v16, :cond_d

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_e
    :goto_8
    throw v26

    :catch_3
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_1
    move-exception v26

    move-object v4, v5

    goto :goto_7

    :catch_4
    move-exception v11

    move-object v4, v5

    goto :goto_5
.end method

.method public AASA_getTokenContent()Z
    .locals 11

    const/4 v10, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v7, "PACKAGE"

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v7, v8}, Landroid/content/pm/aasa/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v7, "DATE"

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v7, v8}, Landroid/content/pm/aasa/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v7, "VERSION"

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v7, v8}, Landroid/content/pm/aasa/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v7, "SEINFO"

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v7, v8}, Landroid/content/pm/aasa/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, "SharedAllowPM"

    invoke-direct {p0, v5, v7, v3}, Landroid/content/pm/aasa/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, "PERMISSION"

    invoke-direct {p0, v5, v7, v4}, Landroid/content/pm/aasa/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    return v10

    :cond_0
    return v10

    :cond_1
    return v10

    :cond_2
    iget-object v7, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "er"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    return v10

    :cond_3
    :try_start_3
    iget-object v7, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string/jumbo v8, "aasa_platform"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "er"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_4
    :try_start_4
    iget-object v7, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x1

    return v7
.end method

.method public AASA_hasPermission(Ljava/lang/String;)Z
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v28, "AASATokenParser"

    const-string/jumbo v29, " AASA_hasPermission START"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Landroid/content/pm/aasa/AASATokenParser;->AASA_IsASKSToken(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_f

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v16, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v16, :cond_6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v14, v2}, Landroid/content/pm/aasa/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v6

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v28, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v29, 0x200

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    const/16 v28, 0x0

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarFile;->close()V

    :cond_0
    return v28

    :cond_1
    const/16 v28, 0x200

    :try_start_2
    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v23, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x200

    move-object/from16 v0, v24

    move/from16 v1, v28

    move-object/from16 v2, v23

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v28, 0x7

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/16 v11, 0x200

    :goto_0
    aget-byte v28, v24, v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v29, 0x2c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    const/16 v28, 0x7

    move/from16 v0, v19

    move/from16 v1, v28

    if-lt v0, v1, :cond_4

    const/4 v12, 0x1

    :cond_2
    if-eqz v12, :cond_5

    const/16 v28, 0x0

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarFile;->close()V

    :cond_3
    return v28

    :cond_4
    :try_start_3
    aget-byte v28, v24, v11

    aput-byte v28, v26, v19

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    :cond_5
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move-object/from16 v2, v18

    move/from16 v3, v29

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x200

    move/from16 v28, v0

    const-string/jumbo v29, ","

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarFile;->close()V

    :cond_7
    move-object/from16 v15, v16

    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v28, v0

    if-eqz v28, :cond_9

    if-nez v6, :cond_c

    :cond_9
    const-string/jumbo v28, "AASATokenParser"

    const-string/jumbo v29, " AASA_hasPermission ERROR: plz check certification in the device"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    return v28

    :catch_0
    move-exception v8

    :goto_2
    :try_start_4
    const-string/jumbo v28, "AASATokenParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "ERROR: AASA_hasPermission "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v28, 0x0

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/util/jar/JarFile;->close()V

    :cond_a
    return v28

    :catch_1
    move-exception v13

    :goto_3
    :try_start_5
    const-string/jumbo v28, "AASATokenParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, " ERROR: AASA_hasPermission "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/util/jar/JarFile;->close()V

    goto :goto_1

    :catchall_0
    move-exception v28

    :goto_4
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Ljava/util/jar/JarFile;->close()V

    :cond_b
    throw v28

    :cond_c
    const/4 v15, 0x0

    const/4 v14, 0x0

    :try_start_6
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v20

    new-instance v28, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    const-string/jumbo v28, "DEFAULTRP"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/aasa/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v28

    if-eqz v28, :cond_d

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v20

    new-instance v28, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string/jumbo v28, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    const-string/jumbo v28, "AASATokenParser"

    const-string/jumbo v29, " DEFAULTRP true"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x1

    return v28

    :cond_d
    const/16 v28, 0x0

    return v28

    :cond_e
    const-string/jumbo v28, "AASATokenParser"

    const-string/jumbo v29, " DEFAULTRP false ?"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_f
    const/16 v28, 0x0

    return v28

    :catch_2
    move-exception v7

    :try_start_8
    const-string/jumbo v28, "AASATokenParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, " AASA_hasPermission"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3

    const/16 v28, 0x0

    return v28

    :catch_3
    move-exception v9

    const-string/jumbo v28, "AASATokenParser"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, " AASA_hasPermission"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    return v28

    :catchall_1
    move-exception v28

    move-object/from16 v15, v16

    goto/16 :goto_4

    :catch_4
    move-exception v13

    move-object/from16 v15, v16

    goto/16 :goto_3

    :catch_5
    move-exception v8

    move-object/from16 v15, v16

    goto/16 :goto_2
.end method

.method public ASKS_CheckList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Landroid/content/pm/aasa/AASATokenParser;->ASKS_GetDataFromXml(Ljava/util/HashMap;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public GetRestrictedInfoFromXML(Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    const-string/jumbo v14, "AASATokenParser"

    const-string/jumbo v15, "set xml file does not exist"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/content/pm/aasa/RestrictList;

    const-string/jumbo v14, "RESTRICTED"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v8, v14, v15, v0}, Landroid/content/pm/aasa/RestrictList;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v8

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->checkRestrictIntegrity()Z

    move-result v14

    if-nez v14, :cond_1

    const-string/jumbo v14, "AASATokenParser"

    const-string/jumbo v15, "fail to check integrity"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->removeRestrictFile()V

    const/4 v14, 0x0

    return-object v14

    :cond_1
    new-instance v8, Landroid/content/pm/aasa/RestrictList;

    const-string/jumbo v14, "root"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v8, v14, v15, v0}, Landroid/content/pm/aasa/RestrictList;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x0

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    const-string/jumbo v14, "UTF-8"

    invoke-interface {v11, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_0
    const/4 v14, 0x1

    if-eq v4, v14, :cond_7

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    :pswitch_1
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/4 v13, 0x0

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    if-eqz v10, :cond_3

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    :cond_3
    invoke-virtual {v8, v9, v13, v3}, Landroid/content/pm/aasa/RestrictList;->makeNode(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v7

    invoke-virtual {v8}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getDepth()I

    move-result v1

    if-le v3, v1, :cond_4

    invoke-virtual {v8, v7}, Landroid/content/pm/aasa/RestrictList;->addChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto :goto_1

    :cond_4
    if-ne v3, v1, :cond_5

    invoke-virtual {v8, v7}, Landroid/content/pm/aasa/RestrictList;->addSibling(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getDepth()I

    move-result v14

    if-le v14, v3, :cond_6

    invoke-virtual {v8}, Landroid/content/pm/aasa/RestrictList;->moveParent()V

    invoke-virtual {v8}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v2

    goto :goto_2

    :cond_6
    invoke-virtual {v8, v7}, Landroid/content/pm/aasa/RestrictList;->addSibling(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_8
    invoke-virtual {v8}, Landroid/content/pm/aasa/RestrictList;->pruneDummyHead()I

    move-result v12

    if-nez v12, :cond_9

    :goto_3
    return-object v8

    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method InsertRestrictedInfo(Landroid/content/pm/aasa/RestrictList;Ljava/util/HashMap;)Landroid/content/pm/aasa/RestrictList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/aasa/RestrictList;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/content/pm/aasa/RestrictList;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v9, "AASATokenParser"

    const-string/jumbo v10, "list is null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/pm/aasa/RestrictList;

    const-string/jumbo v9, "RESTRICTED"

    const/4 v10, 0x0

    const/16 v11, 0xb

    invoke-direct {p1, v9, v10, v11}, Landroid/content/pm/aasa/RestrictList;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo v9, "CONDITION"

    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1, v9, v0}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    const/16 v10, 0xb

    invoke-virtual {p1, v0, v9, v10}, Landroid/content/pm/aasa/RestrictList;->makeNode(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->setCurrentToHead()V

    invoke-virtual {p1, v3}, Landroid/content/pm/aasa/RestrictList;->addChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    :goto_0
    const-string/jumbo v9, "DATE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "DATELIMIT"

    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    const-string/jumbo v10, "DATELIMIT"

    invoke-virtual {p1, v9, v10}, Landroid/content/pm/aasa/RestrictList;->findNodeSet(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_4

    const-string/jumbo v9, "DATELIMIT"

    const/16 v10, 0xb

    invoke-virtual {p1, v9, v1, v10}, Landroid/content/pm/aasa/RestrictList;->makeNode(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    const-string/jumbo v10, "DATE"

    invoke-virtual {p1, v9, v10}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/pm/aasa/RestrictList;->moveCurrentToNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    invoke-virtual {p1, v3}, Landroid/content/pm/aasa/RestrictList;->addChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    :cond_1
    :goto_1
    const-string/jumbo v9, "RESTRICT"

    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    if-nez v9, :cond_6

    const/4 v9, 0x0

    const/16 v10, 0xb

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/pm/aasa/RestrictList;->makeNode(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/aasa/RestrictList;->addChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    :goto_2
    const-string/jumbo v9, "PKG"

    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    invoke-virtual {p1, v9, v7}, Landroid/content/pm/aasa/RestrictList;->findNodeByTypeInChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    if-nez v9, :cond_7

    const-string/jumbo v9, "PKG"

    const/16 v10, 0xb

    invoke-virtual {p1, v9, v7, v10}, Landroid/content/pm/aasa/RestrictList;->makeNode(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/aasa/RestrictList;->addChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    :goto_3
    const-string/jumbo v9, "REVOCATE"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string/jumbo v9, "PERMISSION"

    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    invoke-virtual {p1, v9, v4}, Landroid/content/pm/aasa/RestrictList;->findNodeByTypeInChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "PERMISSION"

    const/16 v10, 0xb

    invoke-virtual {p1, v9, v4, v10}, Landroid/content/pm/aasa/RestrictList;->makeNode(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/aasa/RestrictList;->addChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->moveParent()V

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {p1, v9, v0}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/pm/aasa/RestrictList;->moveCurrentToNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    invoke-virtual {p1, v9, v1}, Landroid/content/pm/aasa/RestrictList;->findNodeByTypeInChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    if-nez v9, :cond_5

    const-string/jumbo v9, "DATELIMIT"

    const/16 v10, 0xb

    invoke-virtual {p1, v9, v1, v10}, Landroid/content/pm/aasa/RestrictList;->makeNode(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    const-string/jumbo v10, "DATE"

    invoke-virtual {p1, v9, v10}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/pm/aasa/RestrictList;->moveCurrentToNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    invoke-virtual {p1, v3}, Landroid/content/pm/aasa/RestrictList;->addChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    invoke-virtual {p1, v9, v1}, Landroid/content/pm/aasa/RestrictList;->findNodeByTypeInChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/pm/aasa/RestrictList;->moveCurrentToNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/pm/aasa/RestrictList;->moveCurrentToNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/pm/aasa/RestrictList;->moveCurrentToNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto/16 :goto_3

    :cond_8
    return-object p1
.end method

.method public InsertRestrictedInfo(Landroid/content/pm/aasa/RestrictList;Landroid/content/pm/aasa/RestrictList$RestrictNode;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    if-eqz p2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/aasa/AASATokenParser;->InsertRestrictedInfo(Landroid/content/pm/aasa/RestrictList;Ljava/util/HashMap;)Landroid/content/pm/aasa/RestrictList;

    return-void
.end method

.method public RemoveRestrictedInfoToXML(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v5, "/data/system/.aasa/RestrictedPackages.xml"

    invoke-virtual {p0, v5}, Landroid/content/pm/aasa/AASATokenParser;->GetRestrictedInfoFromXML(Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4, v6, p1}, Landroid/content/pm/aasa/RestrictList;->removeNodeAllByType(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0, v4}, Landroid/content/pm/aasa/AASATokenParser;->SetRestrictedInfoToXML(Landroid/content/pm/aasa/RestrictList;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_1
.end method

.method public SetRestrictedInfoToXML(Landroid/content/pm/aasa/RestrictList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    const-string/jumbo v8, "/data/system/.aasa/RestrictedPackages.xml"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    const-string/jumbo v14, "AASATokenParser"

    const-string/jumbo v15, "set xml file does not exist"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    if-nez v14, :cond_1

    return-void

    :cond_1
    move-object v6, v7

    :goto_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    const/4 v14, 0x1

    invoke-interface {v1, v14}, Lorg/w3c/dom/Document;->setXmlStandalone(Z)V

    const-string/jumbo v14, "RESTRICTED"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v10

    if-nez v10, :cond_2

    const-string/jumbo v14, "AASATokenParser"

    const-string/jumbo v15, "error to find RESTRICTED tag in xml"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v5

    :goto_1
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    invoke-interface {v1, v11}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v13, Landroid/content/pm/aasa/RestrictXMLList;

    invoke-direct {v13, v10}, Landroid/content/pm/aasa/RestrictXMLList;-><init>(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    invoke-virtual {v13}, Landroid/content/pm/aasa/RestrictXMLList;->getHead()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v14

    invoke-virtual {v13, v1, v11, v14}, Landroid/content/pm/aasa/RestrictXMLList;->SetRestrictedInfoToDocument(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    invoke-direct {v4, v14}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v9, Ljavax/xml/transform/stream/StreamResult;

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v14}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v12

    const-string/jumbo v14, "encoding"

    const-string/jumbo v15, "UTF-8"

    invoke-virtual {v12, v14, v15}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "omit-xml-declaration"

    const-string/jumbo v15, "yes"

    invoke-virtual {v12, v14, v15}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "indent"

    const-string/jumbo v15, "yes"

    invoke-virtual {v12, v14, v15}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "{http://xml.apache.org/xslt}indent-amount"

    const-string/jumbo v15, "4"

    invoke-virtual {v12, v14, v15}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v4, v9}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    const-string/jumbo v14, "/data/system/.aasa/rTicket"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/content/pm/aasa/AASATokenParser;->setIntegrityValueTofile(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->removeRestrictFile()V

    :cond_3
    return-void

    :catch_1
    move-exception v5

    move-object v6, v7

    goto :goto_1
.end method

.method checkIntegrity([B)[B
    .locals 38

    const/16 v18, 0x0

    const/16 v21, 0x200

    const/16 v32, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mCertName:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string/jumbo v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_0

    const/16 v18, 0x1

    :cond_0
    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mIsSigned512:Z

    move/from16 v35, v0

    xor-int/lit8 v35, v35, 0x1

    if-eqz v35, :cond_1

    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "AASA Token change key 256"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x100

    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    const/16 v35, 0x0

    return-object v35

    :cond_2
    :try_start_0
    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v27, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-object/from16 v2, v27

    move/from16 v3, v36

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v35, 0x7

    move/from16 v0, v35

    new-array v0, v0, [B

    move-object/from16 v31, v0

    const/16 v23, 0x0

    const/16 v19, 0x0

    move/from16 v16, v21

    :goto_0
    aget-byte v35, p1, v16

    const/16 v36, 0x2c

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_3

    const/16 v35, 0x7

    move/from16 v0, v23

    move/from16 v1, v35

    if-lt v0, v1, :cond_4

    const/16 v19, 0x1

    :cond_3
    if-eqz v19, :cond_7

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mIsSigned512:Z

    move/from16 v35, v0

    if-eqz v35, :cond_5

    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "AASA Token might be signed 256"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mIsSigned512:Z

    invoke-virtual/range {p0 .. p1}, Landroid/content/pm/aasa/AASATokenParser;->checkIntegrity([B)[B

    move-result-object v35

    return-object v35

    :cond_4
    aget-byte v35, p1, v16

    aput-byte v35, v31, v23

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mIsSigned512:Z

    move/from16 v35, v0

    if-nez v35, :cond_6

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mIsSigned512:Z

    :cond_6
    const/16 v35, 0x0

    return-object v35

    :cond_7
    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v22, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v35

    move-object/from16 v2, v22

    move/from16 v3, v36

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    add-int v35, v21, v23

    const-string/jumbo v36, ","

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v36

    add-int v35, v35, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string/jumbo v35, "SHA256WithRSAEncryption"

    invoke-static/range {v35 .. v35}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v28

    const-string/jumbo v35, "x.509"

    invoke-static/range {v35 .. v35}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    const/16 v29, 0x0

    if-eqz v18, :cond_21

    const/4 v7, 0x0

    new-instance v33, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v33, :cond_8

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mCertName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v7

    if-eqz v7, :cond_10

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v29

    check-cast v29, Ljava/security/cert/X509Certificate;

    :cond_8
    if-eqz v33, :cond_9

    invoke-virtual/range {v33 .. v33}, Ljava/util/jar/JarFile;->close()V

    :cond_9
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_a
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v24

    new-instance v35, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v36, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string/jumbo v35, "INDEX"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v35

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/aasa/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v35

    if-eqz v35, :cond_b

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v24

    new-instance v35, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v36, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_b
    const/16 v35, 0x0

    :try_start_4
    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "index : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v35, "0.0"

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_15

    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "ENG Cert Index"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_c
    move-object v10, v9

    move-object/from16 v32, v33

    :goto_1
    :try_start_5
    invoke-virtual/range {v28 .. v29}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v35

    if-eqz v35, :cond_38

    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "Token is verificated in checkIntegrity!"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v18, :cond_34

    const/4 v5, 0x0

    :try_start_6
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mCACertName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mCAKeyIndex:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ".crt"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mCACertName:Ljava/lang/String;

    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mCACertName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    :try_start_8
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v35

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "signerCert is verificated!"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v9, :cond_3c

    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v9, 0x0

    move-object v10, v9

    :goto_3
    :try_start_a
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mRootCertName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/16 v26, 0x0

    :try_start_b
    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v35

    move-object/from16 v0, v35

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "CAcert is verificated!"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "rootCert is verificated!"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v35, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v9, :cond_d

    :try_start_d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_d
    if-eqz v32, :cond_e

    invoke-virtual/range {v32 .. v32}, Ljava/util/jar/JarFile;->close()V

    :cond_e
    if-eqz v15, :cond_f

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_f

    :cond_f
    :goto_4
    return-object v35

    :cond_10
    :try_start_e
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "Token Cert does not exist!"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v33, :cond_11

    invoke-virtual/range {v33 .. v33}, Ljava/util/jar/JarFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_11
    const/16 v35, 0x0

    if-eqz v33, :cond_12

    :try_start_f
    invoke-virtual/range {v33 .. v33}, Ljava/util/jar/JarFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    :cond_12
    :goto_5
    return-object v35

    :catch_0
    move-exception v14

    goto :goto_5

    :catch_1
    move-exception v11

    :try_start_10
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    const/16 v35, 0x0

    if-eqz v33, :cond_13

    :try_start_11
    invoke-virtual/range {v33 .. v33}, Ljava/util/jar/JarFile;->close()V

    :cond_13
    if-eqz v15, :cond_14

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_17

    :cond_14
    :goto_6
    return-object v35

    :cond_15
    :try_start_12
    const-string/jumbo v35, "\\."

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string/jumbo v36, "[^0-9]"

    const-string/jumbo v37, ""

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v35, 0x0

    aget-object v35, v20, v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mCAKeyIndex:Ljava/lang/String;

    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "mTokenName : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " SignerVersion : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v35, ""

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_16

    const-string/jumbo v6, "1"

    :cond_16
    const/16 v35, 0x1

    aget-object v35, v20, v35

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_19

    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "Signer Cert File is not matched with index!"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const/16 v35, 0x0

    if-eqz v33, :cond_17

    :try_start_13
    invoke-virtual/range {v33 .. v33}, Ljava/util/jar/JarFile;->close()V

    :cond_17
    if-eqz v15, :cond_18

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_16

    :cond_18
    :goto_7
    return-object v35

    :cond_19
    :try_start_14
    const-string/jumbo v35, "SIGNER"

    const/16 v36, 0x1

    aget-object v36, v20, v36

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->ASKS_CheckList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_1c

    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "SIGNER is in CRL"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    const/16 v35, 0x0

    if-eqz v33, :cond_1a

    :try_start_15
    invoke-virtual/range {v33 .. v33}, Ljava/util/jar/JarFile;->close()V

    :cond_1a
    if-eqz v15, :cond_1b

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_15

    :cond_1b
    :goto_8
    return-object v35

    :cond_1c
    :try_start_16
    const-string/jumbo v35, "INTER"

    const/16 v36, 0x0

    aget-object v36, v20, v36

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->ASKS_CheckList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_c

    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "INTER is in CRL"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    const/16 v35, 0x0

    if-eqz v33, :cond_1d

    :try_start_17
    invoke-virtual/range {v33 .. v33}, Ljava/util/jar/JarFile;->close()V

    :cond_1d
    if-eqz v15, :cond_1e

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_14

    :cond_1e
    :goto_9
    return-object v35

    :catch_2
    move-exception v13

    :try_start_18
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v13}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    const/16 v35, 0x0

    if-eqz v33, :cond_1f

    :try_start_19
    invoke-virtual/range {v33 .. v33}, Ljava/util/jar/JarFile;->close()V

    :cond_1f
    if-eqz v15, :cond_20

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_13

    :cond_20
    :goto_a
    return-object v35

    :cond_21
    :try_start_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mIsSigned512:Z

    move/from16 v35, v0

    if-eqz v35, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/aasa/AASATokenParser;->misDeviceMode:Z

    move/from16 v35, v0

    if-eqz v35, :cond_22

    const-string/jumbo v35, "/system/etc/aasa_real_crt2.crt"

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mCertPath:Ljava/lang/String;

    :goto_b
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mCertPath:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :try_start_1b
    invoke-virtual {v8, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v29

    check-cast v29, Ljava/security/cert/X509Certificate;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/16 :goto_1

    :cond_22
    :try_start_1c
    const-string/jumbo v35, "/system/etc/aasa_test_crt2.crt"

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mCertPath:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto :goto_b

    :catch_3
    move-exception v12

    :goto_c
    :try_start_1d
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "ERROR: checkIntegrity "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    const/16 v35, 0x0

    if-eqz v9, :cond_23

    :try_start_1e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_23
    if-eqz v32, :cond_24

    invoke-virtual/range {v32 .. v32}, Ljava/util/jar/JarFile;->close()V

    :cond_24
    if-eqz v15, :cond_25

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_9

    :cond_25
    :goto_d
    return-object v35

    :cond_26
    :try_start_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/aasa/AASATokenParser;->misDeviceMode:Z

    move/from16 v35, v0

    if-eqz v35, :cond_2a

    const-string/jumbo v35, "/system/etc/aasa_real_crt.crt"

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mCertPath:Ljava/lang/String;

    :goto_e
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mIsSigned512:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v35

    :goto_f
    if-eqz v9, :cond_27

    :try_start_20
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_27
    if-eqz v32, :cond_28

    invoke-virtual/range {v32 .. v32}, Ljava/util/jar/JarFile;->close()V

    :cond_28
    if-eqz v15, :cond_29

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_8

    :cond_29
    :goto_10
    throw v35

    :cond_2a
    :try_start_21
    const-string/jumbo v35, "/system/etc/aasa_test_crt.crt"

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mCertPath:Ljava/lang/String;

    goto :goto_e

    :catch_4
    move-exception v12

    move-object v9, v10

    :goto_11
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Look at system File. "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mCACertNameFromSystem:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mCAKeyIndex:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ".crt"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mCACertNameFromSystem:Ljava/lang/String;

    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mCACertNameFromSystem:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_3
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    :try_start_22
    invoke-virtual {v8, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_b
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    move-object v9, v10

    goto/16 :goto_2

    :catch_5
    move-exception v12

    :try_start_23
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "ERROR: SignerCert is not verified by CACert "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_3
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    const/16 v35, 0x0

    if-eqz v9, :cond_2b

    :try_start_24
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_2b
    if-eqz v32, :cond_2c

    invoke-virtual/range {v32 .. v32}, Ljava/util/jar/JarFile;->close()V

    :cond_2c
    if-eqz v15, :cond_2d

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_11

    :cond_2d
    :goto_12
    return-object v35

    :catch_6
    move-exception v12

    :try_start_25
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "ERROR: CACert is not verified by RootCert "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_3
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    const/16 v35, 0x0

    if-eqz v9, :cond_2e

    :try_start_26
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_2e
    if-eqz v32, :cond_2f

    invoke-virtual/range {v32 .. v32}, Ljava/util/jar/JarFile;->close()V

    :cond_2f
    if-eqz v15, :cond_30

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_10

    :cond_30
    :goto_13
    return-object v35

    :catch_7
    move-exception v12

    :try_start_27
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "ERROR: rootCert is not verified "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    const/16 v35, 0x0

    if-eqz v9, :cond_31

    :try_start_28
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_31
    if-eqz v32, :cond_32

    invoke-virtual/range {v32 .. v32}, Ljava/util/jar/JarFile;->close()V

    :cond_32
    if-eqz v15, :cond_33

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_e

    :cond_33
    :goto_14
    return-object v35

    :cond_34
    :try_start_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    move-object/from16 v35, v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_b
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    if-eqz v10, :cond_35

    :try_start_2a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_35
    if-eqz v32, :cond_36

    invoke-virtual/range {v32 .. v32}, Ljava/util/jar/JarFile;->close()V

    :cond_36
    if-eqz v15, :cond_37

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_d

    :cond_37
    :goto_15
    return-object v35

    :cond_38
    :try_start_2b
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "Token is NOT verificated in checkIntegrity!"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    const/16 v35, 0x0

    if-eqz v10, :cond_39

    :try_start_2c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_39
    if-eqz v32, :cond_3a

    invoke-virtual/range {v32 .. v32}, Ljava/util/jar/JarFile;->close()V

    :cond_3a
    if-eqz v15, :cond_3b

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_c

    :cond_3b
    :goto_16
    return-object v35

    :catch_8
    move-exception v14

    goto/16 :goto_10

    :catchall_1
    move-exception v35

    move-object/from16 v32, v33

    goto/16 :goto_f

    :catchall_2
    move-exception v35

    move-object v9, v10

    goto/16 :goto_f

    :catch_9
    move-exception v14

    goto/16 :goto_d

    :catch_a
    move-exception v12

    move-object/from16 v32, v33

    goto/16 :goto_c

    :catch_b
    move-exception v12

    move-object v9, v10

    goto/16 :goto_c

    :catch_c
    move-exception v14

    goto :goto_16

    :catch_d
    move-exception v14

    goto :goto_15

    :catch_e
    move-exception v14

    goto :goto_14

    :catch_f
    move-exception v14

    goto/16 :goto_4

    :catch_10
    move-exception v14

    goto/16 :goto_13

    :catch_11
    move-exception v14

    goto/16 :goto_12

    :catch_12
    move-exception v12

    goto/16 :goto_11

    :catch_13
    move-exception v14

    goto/16 :goto_a

    :catch_14
    move-exception v14

    goto/16 :goto_9

    :catch_15
    move-exception v14

    goto/16 :goto_8

    :catch_16
    move-exception v14

    goto/16 :goto_7

    :catch_17
    move-exception v14

    goto/16 :goto_6

    :cond_3c
    move-object v10, v9

    goto/16 :goto_3
.end method

.method public getTrustedToday()Ljava/lang/String;
    .locals 12

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->hasTrustedTime()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Landroid/content/pm/aasa/AASATokenParser;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_0
    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->getTrustedFile()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v8, v2

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Landroid/content/pm/aasa/AASATokenParser;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_2
    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v8, 0x2

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long v8, v4, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    add-long v6, v8, v10

    invoke-direct {p0, v6, v7}, Landroid/content/pm/aasa/AASATokenParser;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getElapsedToday : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public getValue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCertPath(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/content/pm/aasa/AASATokenParser;->misDeviceMode:Z

    iget-boolean v0, p0, Landroid/content/pm/aasa/AASATokenParser;->misDeviceMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "/system/etc/aasa_real_crt2.crt"

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertPath:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "/system/etc/aasa_test_crt2.crt"

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Landroid/content/pm/aasa/AASATokenParser;->SamsungAnalyticsLog:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "AASAASKS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSamsungAnalyticsLog "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSystemApp(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/aasa/AASATokenParser;->misAppSystem:Z

    return-void
.end method
