.class public Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;
.super Ljava/lang/Object;
.source "ShareAccessibilitySettingsCommonFunction.java"


# static fields
.field private static RevColorBlindTestCheck:I

.field private static is_galaxy_talkback:I

.field private static is_pagereader:I

.field private static is_switchaccess:I

.field private static is_talkback:I

.field private static mReceiveCVDType:I

.field private static mReceiveCVDseverity:F

.field private static mReceiveDominant_hand_type:I

.field private static mReceivePad_size:I

.field private static mReceivePointer_size:I

.field private static mReceivePointer_speed:I

.field private static mReceiveUserParameter:F

.field private static mTTS_DEFAULT_RATE_VALUE:Ljava/lang/String;

.field private static mTtsFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTtsFlag:I

    sput v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_talkback:I

    sput v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_switchaccess:I

    sput v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_galaxy_talkback:I

    sput v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_pagereader:I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTTS_DEFAULT_RATE_VALUE:Ljava/lang/String;

    sput v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->RevColorBlindTestCheck:I

    sput v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveDominant_hand_type:I

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_speed:I

    sput v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_size:I

    sput v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePad_size:I

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDType:I

    sput v2, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDseverity:F

    sput v2, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveUserParameter:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Ljava/util/HashMap;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    const/4 v14, 0x0

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v20, "loadValue is entered"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz p1, :cond_0

    :try_start_1
    new-instance v19, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v4, 0x0

    :try_start_2
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    :try_start_3
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v19, "SharingAccessibilitySettings"

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    if-nez v19, :cond_1

    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v20, "It is not valid sharing accessibility settings file"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_e

    :goto_2
    return-object v14

    :cond_0
    :try_start_6
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sput-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_7
    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v20, "FileNotFoundException : can\'t create FileInputStream"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_3
    return-object v14

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v9

    :try_start_9
    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v20, "It is not valid sharing accessibility settings file"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    :try_start_b
    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "not xml file. loadValue is : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_7

    :goto_5
    return-object v14

    :catch_4
    move-exception v10

    :try_start_d
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_4

    :catch_5
    move-exception v5

    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_12

    goto :goto_2

    :catch_6
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_7
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_5

    :catch_8
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_9
    move-exception v6

    :try_start_10
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_1

    :catch_a
    move-exception v7

    :try_start_11
    invoke-virtual {v7}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_11

    goto/16 :goto_2

    :catch_b
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_1
    const/4 v13, 0x0

    :goto_6
    :try_start_13
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_4

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v13

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    :goto_7
    move-object/from16 v0, v18

    invoke-virtual {v14, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_3
    const/16 v18, 0x0

    goto :goto_7

    :cond_4
    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "loadValue : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_1

    :catch_c
    move-exception v6

    :try_start_14
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_10

    goto/16 :goto_2

    :catch_d
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_e
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    :catch_f
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_10
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    :catch_11
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    :catch_12
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    :catchall_0
    move-exception v19

    :try_start_16
    sget-object v20, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_13

    :goto_8
    throw v19

    :catch_13
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_8

    :catch_14
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8
.end method

.method public static applySettings(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v20, "applySettings entered"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction$1;

    invoke-direct {v14}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction$1;-><init>()V

    new-instance v15, Landroid/speech/tts/TextToSpeech;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v14}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    const/16 v19, 0x0

    sput v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTtsFlag:I

    const/16 v19, 0x0

    sput-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTTS_DEFAULT_RATE_VALUE:Ljava/lang/String;

    const/4 v9, 0x0

    :goto_0
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_54

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_52

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "long_press_timeout"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    :try_start_0
    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "ApplySetting: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v21, v21, v9

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " Value :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v22, v22, v9

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_script_injection"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_display_magnification_enabled"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "speak_password"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "incall_power_button_behavior"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v20, "PowerbuttonTapping"

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "tts_engine"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "tts_default_synth"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v15, v14, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setTtsEngine(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;)V

    sget v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTtsFlag:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTTS_DEFAULT_RATE_VALUE:Ljava/lang/String;

    if-eqz v19, :cond_6

    const-string/jumbo v19, "tts_default_rate"

    sget-object v20, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTTS_DEFAULT_RATE_VALUE:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v15, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setTtsRate(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    sput v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTtsFlag:I

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v20, "mTTS_DEFAULT_RATE_VALUE is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "tts_default_rate"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/16 v19, 0x1

    :try_start_1
    sput v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTtsFlag:I

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    sput-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTTS_DEFAULT_RATE_VALUE:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v15, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setTtsRate(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v15, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setTtsRate(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "anykey_mode"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v20, "AnykeyTapping"

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "answering_bring_to_ear"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "answering_accessibility_tapping"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessiblity_font_switch"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setGlobalSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "font_size"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    const-string/jumbo v19, "font_scale"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_d

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v21, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string/jumbo v20, "font_scale"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setFontSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v21, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string/jumbo v20, "font_scale"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setFontSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "2"

    const-string/jumbo v21, "1.0"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setFontSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "2"

    const-string/jumbo v21, "1.0"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setFontSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "font_scale"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "mono_audio_db"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setMonoAudio(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "all_sound_off"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setTurnOffAllSound(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "assistant_menu"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setAssistantMenu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "assistant_menu_dominant_hand_type"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    sput v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveDominant_hand_type:I

    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mReceiveDominant_hand_type"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveDominant_hand_type:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v20, v9

    sget v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveDominant_hand_type:I

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_12
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "assistant_menu_pointer_speed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    sput v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_speed:I

    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mReceivePointer_speed"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_speed:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v20, v9

    sget v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_speed:I

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_13
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "assistant_menu_pointer_size"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    sput v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_size:I

    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mReceivePointer_size"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_size:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v20, v9

    sget v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_size:I

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_14
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "assistant_menu_pad_size"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    sput v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePad_size:I

    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mReceivePad_size"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePad_size:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v20, v9

    sget v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePad_size:I

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_15
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "high_contrast"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setNegativeColourGreyscale(Landroid/content/Context;)V
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setNegativeColourGreyscale(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_16
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_enabled"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    const-string/jumbo v19, "com.google.android.marvin.talkback"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setAccessibilityEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_17
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "galaxy_talkback"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    const-string/jumbo v19, "com.samsung.android.app.talkback"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setGalaxyTalkbackEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_18
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "switch_access_key"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    const-string/jumbo v19, "com.google.android.marvin.talkback"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSwitchAccessEnabled(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_19
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "color_blind"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1a
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "color_blind_test"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    sput v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->RevColorBlindTestCheck:I

    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "RevColorBlindTestCheck"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->RevColorBlindTestCheck:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1b
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "color_blind_cvdtype"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    sput v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDType:I

    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mReceiveCVDType"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDType:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v20, v9

    sget v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDType:I

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_1c
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "color_blind_cvdseverity"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    sput v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDseverity:F

    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mReceiveCVDseverity"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDseverity:F

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v20, v9

    sget v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDseverity:F

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_1

    :cond_1d
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "color_blind_user_parameter"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    sput v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveUserParameter:F

    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mReceiveUserParameter"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveUserParameter:F

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v20, v9

    sget v21, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveUserParameter:F

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_1

    :cond_1e
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "speak_password"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    sput v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveUserParameter:F

    goto/16 :goto_1

    :cond_1f
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "enable_accessibility_global_gesture_enabled"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setGlobalSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_20
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "easy_interaction"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_21

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_21
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "lcd_curtain"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_22

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_22
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "notification_reminder"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_23
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "time_key"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_24

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_24
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "notification_reminder_selectable"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_25

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_25
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "time_key_selectable"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_26

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_26
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "notification_reminder_vibrate"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_27

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_27
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "notification_reminder_led_indicator"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_28

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_28
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "notification_reminder_app_list"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_29
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "hearing_aid"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2a

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setHearingAid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2a
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_captioning_enabled"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2b

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2b
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_sec_captioning_enabled"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2c

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2c
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_captioning_font_scale"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureFloatSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2d
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_captioning_preset"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2e

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2e
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_captioning_typeface"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2f

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2f
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_captioning_foreground_color"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_30
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_captioning_edge_type"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_31

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_31
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_captioning_edge_color"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_32

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_32
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_captioning_window_color"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_33

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_33
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_captioning_background_color"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_34

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_34
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_captioning_locale"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_35

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_35
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "rapid_key_input"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_36

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_36
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "rapid_key_input_menu_checked"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_37

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_37
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "air_motion_wake_up"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_38

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->broadcastAirWakeupChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_38
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "direct_access"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_39

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_39
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "direct_accessibility"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3a

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3a
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "direct_talkback"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3b

    const-string/jumbo v19, "com.google.android.marvin.talkback"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3b
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "direct_talkback"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3c

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3c
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "direct_greyscale"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3d

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3d
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "direct_color_adjustment"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3e

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3e
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_display_inversion_enabled"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_display_daltonizer_enabled"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_display_daltonizer"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "direct_access_magnifier"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3f

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3f
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_magnifier"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_40

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_40
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "hover_zoom_value"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_41

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_41
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "hover_zoom_magnifier_size"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_42

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_42
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "smart_scroll"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_43

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_43
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "face_smart_scroll"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_44

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_44
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "smart_scroll_sensitivity"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_45

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_45
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "smart_scroll_visual_feedback_icon"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_46

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_46
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_47

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_47
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "air_motion_call_accept"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_48

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->changeAirCallAccept(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v8

    invoke-virtual {v8}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->changeAirCallAccept(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_48
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "direct_access_control"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_49

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_49
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "audio_balance"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4a

    const-string/jumbo v20, "sound_balance"

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setAudioBalance(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_4a
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "sound_balance"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4b

    const-string/jumbo v20, "sound_balance"

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setAudioBalance(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_4b
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "show_button_background"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4c

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    :cond_4c
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "greyscale_mode"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4d

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setNegativeColourGreyscale(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_4d
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "high_text_contrast_enabled"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4e

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4e
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "high_contrast_keyboard"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_51

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_4f

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_50

    :cond_4f
    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v20, "Cannot import High contrast keyboard value. There are no saved value"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_50
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    const-string/jumbo v21, "high_contrast_keyboard"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v10}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->putStringTokeyboard(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_51
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v8

    invoke-virtual {v8}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v19, v9

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_52
    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v20, "KeyList is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_captioning_locale"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_53

    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, "accessibility_captioning_typeface"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    :cond_53
    sget-object v19, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string/jumbo v20, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_7
    move-exception v8

    invoke-virtual {v8}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    :cond_54
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "color_blind"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "color_blind_cvdtype"

    const/16 v21, 0x3

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_56

    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_3
    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v13, v0, :cond_57

    const/16 v19, 0x1

    :goto_4
    and-int v19, v19, v20

    if-eqz v19, :cond_55

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "color_blind_cvdseverity"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "color_blind_user_parameter"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v16

    const-string/jumbo v19, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PowerManager;

    const v19, 0x3f19999a    # 0.6f

    cmpg-float v19, v12, v19

    if-gez v19, :cond_58

    const/16 v19, 0x1

    :goto_5
    const-string/jumbo v20, "power"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->setColorWeaknessMode(ZLandroid/os/IBinder;)V

    const-string/jumbo v19, "accessibility"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieColorBlind(ZF)Z

    :cond_55
    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.app.shareaccessibilitysettings.SHARING_COMPLETE"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "share_color_blind_value_intent"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v19, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v20, "ApplySetting is completed."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_56
    const/16 v19, 0x0

    move/from16 v20, v19

    goto/16 :goto_3

    :cond_57
    const/16 v19, 0x0

    goto/16 :goto_4

    :cond_58
    const/16 v19, 0x0

    goto :goto_5
.end method

.method public static broadcastAirCallAcceptChanged(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static broadcastAirWakeupChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static changeAirCallAccept(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "air_motion_call_accept"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p0, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->broadcastAirCallAcceptChanged(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "air_motion_call_accept"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p0, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->broadcastAirCallAcceptChanged(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static createFolder(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "saveValueToFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDirectory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public static getAvailableExternalMemorySize(Landroid/content/Context;)J
    .locals 14

    const-wide/16 v0, 0x0

    const-string/jumbo v9, "storage"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    const/4 v2, 0x0

    :goto_0
    array-length v9, v6

    if-ge v2, v9, :cond_1

    aget-object v8, v6, v2

    const-string/jumbo v9, "sd"

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "mounted"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v12, v9

    mul-long v0, v10, v12

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "unmounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "mounted_ro"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    :cond_1
    return-wide v0
.end method

.method private static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v4, ""

    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public static getExternalMemoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v6, "storage"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_0

    aget-object v5, v4, v0

    const-string/jumbo v6, "sd"

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string/jumbo v6, "ShareAccessibilitySettingsCommonFunction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mExternalStorageSdPath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getStringFromkeyboard(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string/jumbo v8, ""

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-object v8

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    if-eqz v6, :cond_1

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v7

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_2
    throw v0

    :catch_3
    move-exception v7

    goto :goto_2
.end method

.method public static isDualFolderType(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalMemoryAvailable(Landroid/content/Context;)Z
    .locals 9

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v7, "storage"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    array-length v7, v4

    if-ge v0, v7, :cond_3

    aget-object v6, v4, v0

    const-string/jumbo v7, "sd"

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "mounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)I
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/16 v1, 0x3a

    const-string/jumbo v0, "com.google.android.marvin.talkback"

    const-string/jumbo v2, "com.samsung.android.app.talkback"

    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3a

    invoke-direct {v7, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    if-nez p0, :cond_0

    return v10

    :cond_0
    const/4 v6, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    if-nez v6, :cond_2

    const-string/jumbo v6, ""

    :cond_2
    move-object v3, v7

    invoke-virtual {v7, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    return v8

    :cond_4
    const-string/jumbo v8, "com.samsung.android.app.talkback"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x2

    return v8

    :cond_5
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x16

    if-lt v8, v9, :cond_6

    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "com.google.android.marvin.talkback/com.android.switchaccess.SwitchAccessService"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    return v11

    :cond_6
    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "com.google.android.marvin.talkback/com.googlecode.eyesfree.switchcontrol.SwitchControlService"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    return v11

    :cond_7
    return v10
.end method

.method private static putStringTokeyboard(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v3, "putStringTokeyboard couldn\'t be executed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static saveValue(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_68

    :try_start_0
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "long_press_timeout"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/16 v8, 0x1f4

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_script_injection"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v5, "ShareAccessibilitySettingsCommonFunction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  value is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_display_magnification_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "speak_password"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "incall_power_button_behavior"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "com.google.android.marvin.talkback"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isTalkBackEnabled(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v9, :cond_6

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "galaxy_talkback"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v5, "com.samsung.android.app.talkback"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isTalkBackEnabled(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string/jumbo v5, "ShareAccessibilitySettingsCommonFunction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TalkBack = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isTalkBackEnabled(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_b
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "switch_access_key"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string/jumbo v5, "com.google.android.marvin.talkback"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isTalkBackEnabled(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_c

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_c
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_d
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_e
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "tts_engine"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "tts_default_synth"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_f
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "tts_default_rate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/16 v8, 0x64

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_10
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "font_scale"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "font_scale"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_11
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "high_contrast"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_12
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "greyscale_mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_13
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "color_blind"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_14
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "color_blind_test"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_15
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "color_blind_cvdtype"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_16
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "color_blind_cvdseverity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_17
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "color_blind_user_parameter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_18
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_display_inversion_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_19
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_display_daltonizer_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1a
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_display_daltonizer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1b
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "answering_accessibility_tapping"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1c
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "assistant_menu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1d
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "assistant_menu_dominant_hand_type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1e
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "assistant_menu_pointer_speed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1f
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "assistant_menu_pointer_size"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_20
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "assistant_menu_pad_size"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_21
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "access_control_use"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_22
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "access_control_power_button"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_23
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "access_control_volume_button"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_24
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "access_control_keyboard_block"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_25
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "access_control_time_set_hour"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_26
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "access_control_time_set_min"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_27
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "anykey_mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_28
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "voice_input_control_incomming_calls"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_29
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "answering_bring_to_ear"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2a
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "mono_audio_db"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2b
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "all_sound_off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2c
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "enable_accessibility_global_gesture_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2d
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "easy_interaction"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2e
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "lcd_curtain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2f
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "notification_reminder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_30
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "time_key"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_31
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "notification_reminder_selectable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_32
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "time_key_selectable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_33
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "notification_reminder_vibrate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_34
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "notification_reminder_led_indicator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_35
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "notification_reminder_app_list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_37

    :cond_36
    const-string/jumbo v5, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v6, "Default value is skip"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_37
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_38
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_magnifier"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_39
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "hover_zoom_value"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3a
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "hover_zoom_magnifier_size"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3b
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "air_motion_call_accept"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3c
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "hearing_aid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3d
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_captioning_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3e
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_sec_captioning_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3f
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_captioning_font_scale"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_40
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_captioning_preset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_41
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_captioning_typeface"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_42

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_43

    :cond_42
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_43
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_44
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_captioning_foreground_color"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_45
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_captioning_edge_type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_46
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_captioning_edge_color"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/high16 v8, -0x1000000

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_47
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_captioning_window_color"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/16 v8, 0xff

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_48
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_captioning_background_color"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/high16 v8, -0x1000000

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_49
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessibility_captioning_locale"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4b

    :cond_4a
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4b
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4c
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "rapid_key_input"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4d
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "rapid_key_input_menu_checked"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4e
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "air_motion_wake_up"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4f
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "direct_access"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_50
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "direct_accessibility"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_51
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "direct_talkback"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_52
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "smart_scroll"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_53
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "face_smart_scroll"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_54
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "smart_scroll_sensitivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_55
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "smart_scroll_visual_feedback_icon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_56
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_57
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "direct_talkback"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_58
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "direct_greyscale"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_59
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "direct_color_adjustment"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5a
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "direct_access_magnifier"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5b
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "direct_access_control"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5c
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "direct_s_talkback"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    const-string/jumbo v5, "com.samsung.android.app.talkback"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5d
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "direct_universal_switch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    const-string/jumbo v5, "com.samsung.android.universalswitch"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5e
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "audio_balance"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sound_balance"

    const/16 v8, 0x32

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5f
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "sound_balance"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sound_balance"

    const/16 v8, 0x32

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_60
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "show_button_background"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_61
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "accessiblity_font_switch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_62
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "font_size"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_63
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "high_text_contrast_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_64
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "high_contrast_keyboard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    const-string/jumbo v7, "high_contrast_keyboard"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getStringFromkeyboard(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_65

    const-string/jumbo v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    :cond_65
    const-string/jumbo v5, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v6, "Cannot export High contrast keyboard value. There are no saved value"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_66
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_67
    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_68
    const-string/jumbo v5, "ShareAccessibilitySettingsCommonFunction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SettingValue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static saveValueToFile(Ljava/util/HashMap;Ljava/io/File;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v5

    :goto_1
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v9

    const-string/jumbo v10, "UTF-8"

    invoke-interface {v9, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v10, "ro.product.model"

    const-string/jumbo v11, "Unknown"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "ShareAccessibilitySettingsCommonFunction"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "model is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "SharingAccessibilitySettings"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "Version"

    const-string/jumbo v11, "1.0"

    const/4 v12, 0x0

    invoke-interface {v9, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "Platform"

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v9, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "ModelNumber"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v9, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "[saveValueToFile]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "key : ["

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "]"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v10, 0x0

    invoke-interface {v9, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :cond_1
    :goto_3
    return-void

    :catch_1
    move-exception v2

    :try_start_6
    const-string/jumbo v10, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v11, "IOException: exception in createNewFile() method"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_1

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_3

    :catch_4
    move-exception v1

    :try_start_9
    const-string/jumbo v10, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v11, "FileNotFoundException : can\'t create FileOutputStream"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v10

    if-eqz v4, :cond_2

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :cond_2
    :goto_4
    throw v10

    :cond_3
    :try_start_b
    const-string/jumbo v10, "SharingAccessibilitySettings"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    const/4 v10, 0x0

    sput v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v4, :cond_1

    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_3

    :catch_5
    move-exception v3

    goto :goto_3

    :catch_6
    move-exception v3

    goto :goto_3

    :catch_7
    move-exception v3

    goto :goto_4
.end method

.method public static setAccessibilityEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_talkback:I

    sget v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_talkback:I

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->turnOffSoundDetector(Landroid/content/Context;)V

    const-string/jumbo v0, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static setAssistantMenu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v1, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v2, "AssistantMenu Service Start!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const-string/jumbo v1, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v2, "AssistantMenu Service Stop!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setAudioBalance(Landroid/content/Context;I)V
    .locals 4

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v1, "ShareAccessibilitySettingsCommonFunction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAudioBalance() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_balance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public static setFontSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "font_size"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x6

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0039

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isDualFolderType(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c003b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    :cond_0
    if-eqz v6, :cond_a

    array-length v7, v6

    const/4 v10, 0x3

    if-ne v7, v10, :cond_7

    const/4 v0, 0x2

    const/4 v10, 0x2

    if-le v3, v10, :cond_1

    const/4 v3, 0x2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "font_size"

    invoke-static {v10, v11, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    add-int/lit8 v10, v3, 0x1

    if-ge v7, v10, :cond_9

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    aget-object v10, v6, v0

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    cmpl-float v10, v4, v10

    if-lez v10, :cond_2

    aget-object v10, v6, v0

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    :cond_2
    :goto_2
    sget-object v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->mCurConfig:Landroid/content/res/Configuration;

    iput v4, v10, Landroid/content/res/Configuration;->fontScale:F

    const/16 v10, 0xb

    if-ne v7, v10, :cond_b

    if-le v3, v0, :cond_b

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "large_font"

    invoke-virtual {v5, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v10, "ShareAccessibilitySettingsCommonFunction"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "com.samsung.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    if-eqz v1, :cond_4

    :try_start_0
    const-string/jumbo v10, "android.app.IActivityManager"

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    :cond_4
    sget-object v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->mCurConfig:Landroid/content/res/Configuration;

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    const/16 v11, 0x88

    const/4 v12, 0x0

    invoke-interface {v10, v11, v1, v9, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    const-string/jumbo v10, "ShareAccessibilitySettingsCommonFunction"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "android.settings.FONT_SIZE_CHANGED result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :cond_6
    :goto_4
    return-void

    :cond_7
    const/16 v10, 0xb

    if-eq v7, v10, :cond_1

    const/4 v10, 0x6

    if-le v3, v10, :cond_8

    const/4 v3, 0x6

    :cond_8
    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_9
    aget-object v10, v6, v3

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto/16 :goto_1

    :cond_a
    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_b
    if-gt v8, v0, :cond_c

    if-le v3, v0, :cond_c

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "large_font"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v10, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v11, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_c
    if-le v8, v0, :cond_3

    if-gt v3, v0, :cond_3

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "large_font"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v10, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v11, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v10, "ShareAccessibilitySettingsCommonFunction"

    const-string/jumbo v11, "Unable to save font size"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_d
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    goto :goto_4

    :catchall_0
    move-exception v10

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_e
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :cond_f
    throw v10
.end method

.method public static setGalaxyTalkbackEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_galaxy_talkback:I

    sget v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_galaxy_talkback:I

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->turnOffSoundDetector(Landroid/content/Context;)V

    const-string/jumbo v0, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static setGlobalSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setHearingAid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call_hearing_aid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ON"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v2, "OFF"

    goto :goto_0
.end method

.method public static setMonoAudio(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.MONO_AUDIO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mono"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setNegativeColourGreyscale(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "high_contrast"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "greyscale_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v3, "accessibility"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    if-nez v2, :cond_0

    if-eqz v0, :cond_5

    :cond_0
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v6}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    :goto_2
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v6}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v6, v6}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v6, v5}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    goto :goto_2
.end method

.method public static setSecureFloatSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSecureStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSwitchAccessEnabled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x16

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_switchaccess:I

    sget v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_switchaccess:I

    if-ne v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    const-string/jumbo v0, "com.google.android.marvin.talkback/com.android.switchaccess.SwitchAccessService"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "com.google.android.marvin.talkback/com.googlecode.eyesfree.switchcontrol.SwitchControlService"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    const-string/jumbo v0, "com.google.android.marvin.talkback/com.android.switchaccess.SwitchAccessService"

    invoke-static {p0, v0, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "com.google.android.marvin.talkback/com.googlecode.eyesfree.switchcontrol.SwitchControlService"

    invoke-static {p0, v0, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setTtsEngine(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tts_default_synth"

    invoke-static {v2, v3, p4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ShareAccessibilitySettingsCommonFunction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to check TTS data, no activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setTtsRate(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    return-void
.end method

.method public static setTurnOffAllSound(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "mute"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sharingFileNameCheck(Ljava/io/File;)Ljava/io/File;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string/jumbo v3, ""

    const-string/jumbo v2, ""

    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "Settings of accessibility_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "ShareAccessibilitySettingsCommonFunction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "finalNameCheck : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "ShareAccessibilitySettingsCommonFunction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lastindex : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "Settings of accessibility_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "_"

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    return-object v5
.end method

.method public static startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 17

    new-instance v11, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v13, 0x3a

    invoke-direct {v11, v13}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v13

    if-ne v6, v13, :cond_0

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-interface {v6, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x3a

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-interface {v6, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->sInstalledServices:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_5

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "enabled_accessibility_services"

    invoke-static {v13, v14, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v9, :cond_7

    move-object v2, v11

    invoke-virtual {v11, v9}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v11}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v11}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v1, 0x1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "accessibility_enabled"

    if-nez v1, :cond_8

    sget v13, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_talkback:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_9

    :cond_8
    const/4 v13, 0x1

    :goto_2
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v14, "com.samsung.settings.action.talkback_toggled"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_9
    sget v13, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_galaxy_talkback:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_8

    sget v13, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_pagereader:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_8

    sget v13, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_switchaccess:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_8

    const/4 v13, 0x0

    goto :goto_2
.end method

.method public static turnOffSoundDetector(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_detector"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "doorbell_detector"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "com.samsung.android.app.sounddetector"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_detector"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.settings.action.sound_detector"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.app.sounddetector"

    const-string/jumbo v3, "com.samsung.android.app.sounddetector.service.SoundDetectService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "com.samsung.android.app.advsounddetector"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_detector"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "doorbell_detector"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.settings.action.doorbell_detector"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.app.advsounddetector"

    const-string/jumbo v3, "com.samsung.android.app.advsounddetector.service.SoundDetectService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method
