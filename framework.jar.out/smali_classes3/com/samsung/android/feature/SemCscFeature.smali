.class public Lcom/samsung/android/feature/SemCscFeature;
.super Ljava/lang/Object;
.source "SemCscFeature.java"


# static fields
.field private static final FEATURE_XML:Ljava/lang/String; = "/system/csc/feature.xml"

.field private static final MPS_FEATURE_XML:Ljava/lang/String; = "/system/csc/others.xml"

.field private static final TAG:Ljava/lang/String; = "SemCscFeature"

.field private static sInstance:Lcom/samsung/android/feature/SemCscFeature;


# instance fields
.field private mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, "isOmc":Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "/system/omc/SW_Configuration.xml"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 57
    :cond_0
    const-string/jumbo v5, "persist.sys.omc_path"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "omcPath":Ljava/lang/String;
    const-string/jumbo v5, "persist.sys.omcnw_path"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "omcNwPath":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile(ZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 61
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->loadNetworkFeatureFile(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "omcNwPath":Ljava/lang/String;
    .end local v4    # "omcPath":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SemCscFeature"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/feature/SemCscFeature;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/samsung/android/feature/SemCscFeature;

    invoke-direct {v0}, Lcom/samsung/android/feature/SemCscFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    .line 77
    :cond_0
    sget-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    return-object v0
.end method

.method private loadFeatureFile(ZLjava/lang/String;)Z
    .locals 20
    .param p1, "isOmc"    # Z
    .param p2, "targetPath"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v14, 0x0

    .line 239
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    .line 240
    .local v12, "fi":Ljava/io/InputStream;
    const/4 v7, -0x1

    .line 241
    .local v7, "eventType":I
    const/4 v2, 0x0

    .line 242
    .local v2, "TagName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 244
    .local v3, "TagValue":Ljava/lang/String;
    const/4 v10, 0x0

    .line 245
    .local v10, "featurePath":Ljava/lang/String;
    const/4 v15, 0x0

    .line 248
    .local v15, "ret":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->clear()V

    .line 249
    if-eqz p1, :cond_3

    move-object/from16 v10, p2

    .line 251
    .local v10, "featurePath":Ljava/lang/String;
    :goto_0
    new-instance v11, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/cscfeature.xml"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v11, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_4

    .line 253
    :cond_0
    new-instance v11, Ljava/io/File;

    .end local v11    # "featureXmlFile":Ljava/io/File;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/feature.xml"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v11    # "featureXmlFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_5

    .line 255
    :cond_1
    new-instance v11, Ljava/io/File;

    .end local v11    # "featureXmlFile":Ljava/io/File;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/others.xml"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .restart local v11    # "featureXmlFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_5

    .line 245
    :cond_2
    const/16 v16, 0x0

    .line 257
    return v16

    .line 249
    .end local v11    # "featureXmlFile":Ljava/io/File;
    .local v10, "featurePath":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, "/system/csc"

    .local v10, "featurePath":Ljava/lang/String;
    goto/16 :goto_0

    .line 261
    .restart local v11    # "featureXmlFile":Ljava/io/File;
    :cond_4
    const/4 v15, 0x1

    .line 264
    :cond_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v9

    .line 265
    .local v9, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 266
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 267
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 268
    .end local v12    # "fi":Ljava/io/InputStream;
    .local v13, "fi":Ljava/io/InputStream;
    const/16 v16, 0x0

    :try_start_1
    move-object/from16 v0, v16

    invoke-interface {v14, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 269
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 271
    .end local v2    # "TagName":Ljava/lang/String;
    .end local v3    # "TagValue":Ljava/lang/String;
    :goto_1
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v7, v0, :cond_b

    .line 272
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v7, v0, :cond_7

    .line 273
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 296
    :cond_6
    :goto_2
    :try_start_2
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    goto :goto_1

    .line 275
    :cond_7
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v7, v0, :cond_6

    .line 276
    :try_start_3
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "TagValue":Ljava/lang/String;
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v16

    if-eqz v16, :cond_9

    .line 280
    :try_start_4
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    goto :goto_1

    .line 281
    :catch_0
    move-exception v5

    .line 282
    .local v5, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v16, "SemCscFeature"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 308
    .end local v3    # "TagValue":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v12, v13

    .line 309
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "featurePath":Ljava/lang/String;
    .end local v11    # "featureXmlFile":Ljava/io/File;
    .end local v13    # "fi":Ljava/io/InputStream;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_3
    :try_start_6
    const-string/jumbo v16, "SemCscFeature"

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 314
    if-eqz v12, :cond_8

    .line 315
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 316
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    const/4 v12, 0x0

    .line 322
    :cond_8
    :goto_5
    return v15

    .line 287
    .restart local v3    # "TagValue":Ljava/lang/String;
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v10    # "featurePath":Ljava/lang/String;
    .restart local v11    # "featureXmlFile":Ljava/io/File;
    .restart local v13    # "fi":Ljava/io/InputStream;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 289
    :catch_2
    move-exception v8

    .line 290
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v16, "SemCscFeature"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 310
    .end local v3    # "TagValue":Ljava/lang/String;
    .end local v8    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .local v4, "e":Ljava/io/FileNotFoundException;
    move-object v12, v13

    .line 311
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "featurePath":Ljava/lang/String;
    .end local v11    # "featureXmlFile":Ljava/io/File;
    .end local v13    # "fi":Ljava/io/InputStream;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_6
    :try_start_a
    const-string/jumbo v16, "SemCscFeature"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 314
    if-eqz v12, :cond_8

    .line 315
    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_4

    .line 318
    :catch_4
    move-exception v5

    .line 319
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v16, "SemCscFeature"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 297
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v10    # "featurePath":Ljava/lang/String;
    .restart local v11    # "featureXmlFile":Ljava/io/File;
    .restart local v13    # "fi":Ljava/io/InputStream;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v5

    .line 298
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_c
    const-string/jumbo v16, "SemCscFeature"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 312
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    move-object v12, v13

    .line 314
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "featurePath":Ljava/lang/String;
    .end local v11    # "featureXmlFile":Ljava/io/File;
    .end local v13    # "fi":Ljava/io/InputStream;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_7
    if-eqz v12, :cond_a

    .line 315
    :try_start_d
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 316
    const/4 v12, 0x0

    .line 312
    :cond_a
    :goto_8
    throw v16

    .line 303
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v10    # "featurePath":Ljava/lang/String;
    .restart local v11    # "featureXmlFile":Ljava/io/File;
    .restart local v13    # "fi":Ljava/io/InputStream;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_b
    :try_start_e
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 314
    :goto_9
    if-eqz v13, :cond_c

    .line 315
    :try_start_f
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_4

    .line 318
    :catch_6
    move-exception v5

    .line 319
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v16, "SemCscFeature"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/io/IOException;
    :cond_c
    move-object v12, v13

    .end local v13    # "fi":Ljava/io/InputStream;
    .local v12, "fi":Ljava/io/InputStream;
    goto :goto_5

    .line 304
    .end local v12    # "fi":Ljava/io/InputStream;
    .restart local v13    # "fi":Ljava/io/InputStream;
    :catch_7
    move-exception v5

    .line 305
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_10
    const-string/jumbo v16, "SemCscFeature"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_9

    .line 318
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "featurePath":Ljava/lang/String;
    .end local v11    # "featureXmlFile":Ljava/io/File;
    .end local v13    # "fi":Ljava/io/InputStream;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_8
    move-exception v5

    .line 319
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v16, "SemCscFeature"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 318
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_9
    move-exception v5

    .line 319
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v17, "SemCscFeature"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 312
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v16

    goto :goto_7

    .line 308
    .restart local v2    # "TagName":Ljava/lang/String;
    .local v3, "TagValue":Ljava/lang/String;
    .local v12, "fi":Ljava/io/InputStream;
    :catch_a
    move-exception v6

    .restart local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_3

    .line 310
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_b
    move-exception v4

    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    goto :goto_6
.end method

.method private loadNetworkFeatureFile(ZLjava/lang/String;)V
    .locals 20
    .param p1, "isOmc"    # Z
    .param p2, "targetPath"    # Ljava/lang/String;

    .prologue
    .line 327
    const/4 v14, 0x0

    .line 328
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    .line 329
    .local v12, "fi":Ljava/io/InputStream;
    const/4 v7, -0x1

    .line 330
    .local v7, "eventType":I
    const/4 v2, 0x0

    .line 331
    .local v2, "TagName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 333
    .local v3, "TagValue":Ljava/lang/String;
    const/4 v10, 0x0

    .line 338
    .local v10, "featurePath":Ljava/lang/String;
    if-eqz p1, :cond_1

    move-object/from16 v10, p2

    .line 340
    .local v10, "featurePath":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v11, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/cscfeature_network.xml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .local v11, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-gtz v15, :cond_2

    .line 353
    :cond_0
    return-void

    .line 338
    .end local v11    # "featureXmlFile":Ljava/io/File;
    .local v10, "featurePath":Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, "/system/csc"

    .local v10, "featurePath":Ljava/lang/String;
    goto :goto_0

    .line 356
    .restart local v11    # "featureXmlFile":Ljava/io/File;
    :cond_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v9

    .line 357
    .local v9, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 358
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 359
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 360
    .local v13, "fi":Ljava/io/InputStream;
    const/4 v15, 0x0

    :try_start_1
    invoke-interface {v14, v13, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 361
    .end local v12    # "fi":Ljava/io/InputStream;
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 363
    .end local v2    # "TagName":Ljava/lang/String;
    .end local v3    # "TagValue":Ljava/lang/String;
    :goto_1
    const/4 v15, 0x1

    if-eq v7, v15, :cond_8

    .line 364
    const/4 v15, 0x2

    if-ne v7, v15, :cond_4

    .line 365
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 388
    :cond_3
    :goto_2
    :try_start_2
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    goto :goto_1

    .line 367
    :cond_4
    const/4 v15, 0x4

    if-ne v7, v15, :cond_3

    .line 368
    :try_start_3
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "TagValue":Ljava/lang/String;
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 370
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v15, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v15

    if-eqz v15, :cond_6

    .line 372
    :try_start_4
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    goto :goto_1

    .line 373
    :catch_0
    move-exception v5

    .line 374
    .local v5, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v15, "SemCscFeature"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 400
    .end local v3    # "TagValue":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v12, v13

    .line 401
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "featurePath":Ljava/lang/String;
    .end local v11    # "featureXmlFile":Ljava/io/File;
    .end local v13    # "fi":Ljava/io/InputStream;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_3
    :try_start_6
    const-string/jumbo v15, "SemCscFeature"

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 406
    if-eqz v12, :cond_5

    .line 407
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 408
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    const/4 v12, 0x0

    .line 325
    :cond_5
    :goto_5
    return-void

    .line 379
    .restart local v3    # "TagValue":Ljava/lang/String;
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v10    # "featurePath":Ljava/lang/String;
    .restart local v11    # "featureXmlFile":Ljava/io/File;
    .restart local v13    # "fi":Ljava/io/InputStream;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 380
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v15, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 381
    :catch_2
    move-exception v8

    .line 382
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v15, "SemCscFeature"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 402
    .end local v3    # "TagValue":Ljava/lang/String;
    .end local v8    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .local v4, "e":Ljava/io/FileNotFoundException;
    move-object v12, v13

    .line 403
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "featurePath":Ljava/lang/String;
    .end local v11    # "featureXmlFile":Ljava/io/File;
    .end local v13    # "fi":Ljava/io/InputStream;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_6
    :try_start_a
    const-string/jumbo v15, "SemCscFeature"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 406
    if-eqz v12, :cond_5

    .line 407
    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_4

    .line 410
    :catch_4
    move-exception v5

    .line 411
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v15, "SemCscFeature"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 389
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v10    # "featurePath":Ljava/lang/String;
    .restart local v11    # "featureXmlFile":Ljava/io/File;
    .restart local v13    # "fi":Ljava/io/InputStream;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v5

    .line 390
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_c
    const-string/jumbo v15, "SemCscFeature"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 404
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    move-object v12, v13

    .line 406
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "featurePath":Ljava/lang/String;
    .end local v11    # "featureXmlFile":Ljava/io/File;
    .end local v13    # "fi":Ljava/io/InputStream;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_7
    if-eqz v12, :cond_7

    .line 407
    :try_start_d
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 408
    const/4 v12, 0x0

    .line 404
    :cond_7
    :goto_8
    throw v15

    .line 395
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v10    # "featurePath":Ljava/lang/String;
    .restart local v11    # "featureXmlFile":Ljava/io/File;
    .restart local v13    # "fi":Ljava/io/InputStream;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    :try_start_e
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 406
    :goto_9
    if-eqz v13, :cond_9

    .line 407
    :try_start_f
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_4

    .line 410
    :catch_6
    move-exception v5

    .line 411
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v15, "SemCscFeature"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/io/IOException;
    :cond_9
    move-object v12, v13

    .end local v13    # "fi":Ljava/io/InputStream;
    .local v12, "fi":Ljava/io/InputStream;
    goto :goto_5

    .line 396
    .end local v12    # "fi":Ljava/io/InputStream;
    .restart local v13    # "fi":Ljava/io/InputStream;
    :catch_7
    move-exception v5

    .line 397
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_10
    const-string/jumbo v15, "SemCscFeature"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_9

    .line 410
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "featurePath":Ljava/lang/String;
    .end local v11    # "featureXmlFile":Ljava/io/File;
    .end local v13    # "fi":Ljava/io/InputStream;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_8
    move-exception v5

    .line 411
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v15, "SemCscFeature"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 410
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_9
    move-exception v5

    .line 411
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v16, "SemCscFeature"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 404
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v15

    goto :goto_7

    .line 400
    .restart local v2    # "TagName":Ljava/lang/String;
    .local v3, "TagValue":Ljava/lang/String;
    .local v12, "fi":Ljava/io/InputStream;
    :catch_a
    move-exception v6

    .restart local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_3

    .line 402
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_b
    move-exception v4

    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    goto :goto_6
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 91
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 93
    :cond_0
    return v3

    .line 95
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    return v3
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 113
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 115
    :cond_0
    return p2

    .line 117
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 192
    :cond_0
    return v3

    .line 194
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    return v3
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 224
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 228
    :cond_0
    return p2

    .line 230
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 134
    return-object v1

    .line 136
    :cond_0
    const-string/jumbo v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 138
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 156
    return-object v1

    .line 158
    :cond_0
    return-object p2

    .line 160
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    return-object p2
.end method
