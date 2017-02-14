.class public Lcom/samsung/android/audiofw/ExtDeviceInfoManager;
.super Ljava/lang/Object;
.source "ExtDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;,
        Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;
    }
.end annotation


# static fields
.field private static final ACCESSORY_LOG:Z = true

.field private static final BIT_HDMI_16_FORMAT:I = 0x10000

.field private static final BIT_HDMI_176_SAMPLERATE:I = 0x1000000

.field private static final BIT_HDMI_192_SAMPLERATE:I = 0x2000000

.field private static final BIT_HDMI_2:I = 0x2

.field private static final BIT_HDMI_20_FORMAT:I = 0x20000

.field private static final BIT_HDMI_24_FORMAT:I = 0x40000

.field private static final BIT_HDMI_32_SAMPLERATE:I = 0x80000

.field private static final BIT_HDMI_44_SAMPLERATE:I = 0x100000

.field private static final BIT_HDMI_48_SAMPLERATE:I = 0x200000

.field private static final BIT_HDMI_6:I = 0x20

.field private static final BIT_HDMI_88_SAMPLERATE:I = 0x400000

.field private static final BIT_HDMI_96_SAMPLERATE:I = 0x800000

.field private static final BIT_PCM_S16_LE:I = 0x1

.field private static final BIT_PCM_S24_3LE:I = 0x4

.field private static final BIT_PCM_S24_LE:I = 0x2

.field private static final BIT_PCM_S32_LE:I = 0x8

.field private static final DEBUG_AUDIO:Z = true

.field public static final NAME_CH_HDMI_AUDIO:Ljava/lang/String; = "ch_hdmi_audio"

.field public static final NAME_DVI_OR_NON_SPEAKER_HDMI_AUDIO:Ljava/lang/String; = "dvi_or_non_speaker_hdmi_audio"

.field private static final PCM_FORMAT_S16_LE:I = 0x0

.field private static final PCM_FORMAT_S24_3LE:I = 0x4

.field private static final PCM_FORMAT_S24_LE:I = 0x3

.field private static final PCM_FORMAT_S32_LE:I = 0x1

.field private static final SMART_DOCK_CONNECTED:Ljava/lang/String; = "10"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHdmiChannelInfo:I

.field private mHdmiFormatInfo:I

.field private mHdmiSampleRateInfo:I

.field mVUsbAudioInfo:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiFormatInfo:I

    const/high16 v1, 0x10000

    iput v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiChannelInfo:I

    const/high16 v1, 0x200000

    iput v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiSampleRateInfo:I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mVUsbAudioInfo:Ljava/util/Vector;

    iput-object p1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "ExtDeviceInfoManager"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private getFactoryMode()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string/jumbo v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "OFF"

    sget-object v2, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "cannot open file : /efs/FactoryApp/factorymode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Current mode is Factorymode, So Popup UI will not be apear"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method

.method private getSamplingRate(Ljava/lang/String;I)I
    .locals 9

    invoke-direct {p0, p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->removeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v6, " "

    invoke-direct {v3, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    const v6, 0xbb80

    if-le v4, v6, :cond_1

    if-eqz v2, :cond_1

    sget-object v6, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not supported SamplingRate for 16 bit : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v6, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Variable SamplingRate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", so max rate setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0xbb80

    goto :goto_0

    :cond_1
    if-ge v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_2
    return v2
.end method

.method private isFactorySim()Z
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "999999999999999"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private isSmartDockConnected()Z
    .locals 15

    const/16 v14, 0x8

    const/4 v13, 0x1

    const/4 v12, 0x0

    sget-object v10, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "checkSmartDock"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v14, [C

    const-string/jumbo v0, "sys/class/sec/switch/adc"

    const/4 v7, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    const/16 v11, 0x8

    :try_start_1
    invoke-virtual {v8, v1, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v9

    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    if-le v9, v13, :cond_1

    new-instance v3, Ljava/lang/String;

    add-int/lit8 v10, v9, -0x1

    const/4 v11, 0x0

    invoke-direct {v3, v1, v11, v10}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v3

    :goto_0
    const-string/jumbo v10, "10"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return v13

    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v3, v1, v10, v9}, Ljava/lang/String;-><init>([CII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    if-eqz v8, :cond_3

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v7, v8

    :cond_4
    :goto_3
    return v12

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v6

    :goto_4
    :try_start_5
    sget-object v10, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_4

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v4

    :goto_5
    :try_start_7
    sget-object v10, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "checkSmartDock This kernel does not have wired headset support "

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v7, :cond_4

    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v10

    :goto_6
    if-eqz v7, :cond_5

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_7
    throw v10

    :catch_6
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v10

    move-object v7, v8

    goto :goto_6

    :catch_7
    move-exception v4

    move-object v7, v8

    goto :goto_5

    :catch_8
    move-exception v6

    move-object v7, v8

    goto :goto_4
.end method

.method private parseAccInfo(Ljava/lang/String;)I
    .locals 21

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mVUsbAudioInfo:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->clear()V

    const/4 v13, 0x1

    const/4 v12, 0x0

    :try_start_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    sget-object v18, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "the "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " is not exist"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    if-eqz v5, :cond_c

    const/4 v4, 0x0

    :goto_0
    return v18

    :cond_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    sget-object v18, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "####################################################"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_9

    new-instance v2, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;-><init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)V

    sget-object v18, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_6

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-set2(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Z)Z

    :goto_2
    const-string/jumbo v18, "Capture:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/4 v12, 0x1

    :cond_2
    new-instance v14, Ljava/util/StringTokenizer;

    const-string/jumbo v18, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v18, "Format"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-set1(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    sget-object v18, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Ljava/util/StringTokenizer;

    const-string/jumbo v18, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v18, "Channels"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-set0(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;I)I

    :cond_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    sget-object v18, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Ljava/util/StringTokenizer;

    const-string/jumbo v18, ":"

    invoke-direct/range {v16 .. v18}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v18, "Rates"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-set3(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mVUsbAudioInfo:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v11

    move-object v9, v10

    move-object v4, v5

    :goto_3
    :try_start_3
    sget-object v18, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "cannot create file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v13, 0x0

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :cond_4
    if-eqz v9, :cond_5

    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_4
    return v13

    :cond_6
    const/16 v18, 0x1

    :try_start_5
    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-set2(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;Z)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v18

    move-object v9, v10

    move-object v4, v5

    :goto_5
    if-eqz v4, :cond_7

    const/4 v4, 0x0

    :cond_7
    if-eqz v9, :cond_8

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_8
    :goto_6
    throw v18

    :cond_9
    :try_start_7
    sget-object v18, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "####################################################"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_b

    const/4 v4, 0x0

    :goto_7
    if-eqz v10, :cond_a

    :try_start_8
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_a
    :goto_8
    move-object v9, v10

    goto :goto_4

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v18

    goto :goto_5

    :catchall_2
    move-exception v18

    move-object v4, v5

    goto :goto_5

    :catch_4
    move-exception v11

    goto :goto_3

    :catch_5
    move-exception v11

    move-object v4, v5

    goto :goto_3

    :cond_b
    move-object v4, v5

    goto :goto_7

    :cond_c
    move-object v4, v5

    goto/16 :goto_0
.end method

.method private removeChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private final declared-synchronized sendIntentToPopupUI(IIII)I
    .locals 7

    const/16 v6, 0x20

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hdmi_audio_output"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->getFactoryMode()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->isFactorySim()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    packed-switch v1, :pswitch_data_0

    const/4 p2, 0x2

    :goto_0
    monitor-exit p0

    return p2

    :pswitch_0
    and-int/lit8 v3, p2, 0x20

    if-ne v3, v6, :cond_1

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.popupuireceiver"

    const-string/jumbo v4, "com.sec.android.app.popupuireceiver.popupAudio"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "AudioState"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "Audiochannels"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "AudioFormat"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "AudioSampleRate"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "could not find a suitable activity for launching popupuireceiver.popupAudio"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.intent.action.ACTION_HDMI_AUDIO_CH_POPUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "state"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "channels"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    goto :goto_0

    :pswitch_1
    and-int/lit8 v3, p2, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "hdmi (2ch) : discrepancy between kernel and ui settings"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p2, 0x2

    goto :goto_0

    :pswitch_2
    and-int/lit8 v3, p2, 0x20

    if-eq v3, v6, :cond_3

    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "hdmi (6ch) : discrepancy between kernel and ui settings"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_3
    const/16 p2, 0x20

    goto/16 :goto_0

    :cond_4
    const/4 p2, 0x2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAccInfo(IZZZLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;
    .locals 22

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    new-instance v2, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;-><init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/proc/asound/card"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/stream"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->parseAccInfo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->trimToSize()V

    const/16 v16, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_11

    new-instance v15, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;-><init>(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mVUsbAudioInfo:Ljava/util/Vector;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get2(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Z

    move-result v3

    move/from16 v0, p2

    if-ne v3, v0, :cond_5

    const-string/jumbo v3, "S16_LE"

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get1(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "S24_3LE"

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get1(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "S24_LE"

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get1(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "S32_LE"

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get1(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get0(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get0(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    or-int v17, v17, v3

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get3(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->getSamplingRate(Ljava/lang/String;I)I

    move-result v19

    :cond_1
    :goto_1
    const-string/jumbo v3, "S16_LE"

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get1(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    or-int/lit8 v13, v13, 0x1

    :cond_2
    :goto_2
    const-string/jumbo v3, "S24_LE"

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get1(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "S24_3LE"

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get1(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "S32_LE"

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get1(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const v3, 0x2ee00

    if-le v14, v3, :cond_f

    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sample rate limit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v18, :cond_e

    move/from16 v14, v18

    :cond_4
    :goto_3
    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "####################################################"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "### audioInfo.channels : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get0(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "### audioInfo.format   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get1(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "### 2CH SamplingRate   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "### 6CH SamplingRate   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "### 24bit SamplingRate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "####################################################"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get0(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    or-int/lit8 v17, v17, 0x2

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get3(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->getSamplingRate(Ljava/lang/String;I)I

    move-result v19

    const v3, 0xbb80

    move/from16 v0, v19

    if-le v0, v3, :cond_1

    const v19, 0xbb80

    goto/16 :goto_1

    :cond_7
    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get0(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    or-int/lit8 v17, v17, 0x20

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get3(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->getSamplingRate(Ljava/lang/String;I)I

    move-result v20

    const v3, 0xbb80

    move/from16 v0, v20

    if-le v0, v3, :cond_1

    const v20, 0xbb80

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v3, "S24_LE"

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get1(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get0(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    or-int/lit8 v17, v17, 0x2

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get3(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->getSamplingRate(Ljava/lang/String;I)I

    move-result v14

    :cond_9
    or-int/lit8 v13, v13, 0x2

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v3, "S24_3LE"

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get1(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get0(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    or-int/lit8 v17, v17, 0x2

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get3(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->getSamplingRate(Ljava/lang/String;I)I

    move-result v14

    :cond_b
    or-int/lit8 v13, v13, 0x4

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v3, "S32_LE"

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get1(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get0(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    or-int/lit8 v17, v17, 0x2

    invoke-static {v15}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;->-get3(Lcom/samsung/android/audiofw/ExtDeviceInfoManager$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->getSamplingRate(Ljava/lang/String;I)I

    move-result v14

    :cond_d
    or-int/lit8 v13, v13, 0x8

    goto/16 :goto_2

    :cond_e
    const v14, 0xbb80

    goto/16 :goto_3

    :cond_f
    const/16 v3, 0x1f40

    if-ge v14, v3, :cond_10

    sget-object v3, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sample rate limit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to 48K"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v14, 0xbb80

    goto/16 :goto_3

    :cond_10
    move/from16 v0, v18

    if-le v14, v0, :cond_4

    move/from16 v18, v14

    goto/16 :goto_3

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->isSmartDockConnected()Z

    move-result v9

    :cond_12
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v3, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v2 .. v14}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager$UsbAudioData;->setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZII)V

    return-object v2
.end method

.method public getHDMIInfo(I)Ljava/lang/String;
    .locals 10

    const/high16 v9, 0x200000

    const/high16 v8, 0x100000

    const/high16 v7, 0x80000

    const/high16 v6, 0x40000

    and-int/lit16 v0, p1, 0xff

    const/high16 v5, 0x70000

    and-int v2, p1, v5

    const/high16 v5, 0x3f80000

    and-int v4, p1, v5

    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v5, "dvi_or_non_speaker_hdmi_audio"

    return-object v5

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    if-ne v3, v5, :cond_7

    iput v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiChannelInfo:I

    iput v2, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiFormatInfo:I

    iput v4, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiSampleRateInfo:I

    :cond_2
    :goto_1
    and-int v5, v2, v6

    if-ne v5, v6, :cond_8

    const/16 v2, 0x28

    :goto_2
    const/high16 v5, 0x2000000

    and-int/2addr v5, v4

    const/high16 v6, 0x2000000

    if-ne v5, v6, :cond_9

    const v4, 0x2ee00

    :goto_3
    const/16 v5, 0x10

    if-ne v2, v5, :cond_3

    const v5, 0xbb80

    if-le v4, v5, :cond_3

    const v4, 0xbb80

    :cond_3
    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/16 v2, 0x10

    :cond_4
    const/4 v1, 0x0

    const/16 v5, 0x18

    if-eq v2, v5, :cond_5

    const/16 v5, 0x28

    if-ne v2, v5, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":48000:48000:0:0:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_7
    if-nez v3, :cond_2

    iget v0, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiChannelInfo:I

    iget v2, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiFormatInfo:I

    iget v4, p0, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;->mHdmiSampleRateInfo:I

    goto :goto_1

    :cond_8
    const/16 v2, 0x10

    goto :goto_2

    :cond_9
    const/high16 v5, 0x1000000

    and-int/2addr v5, v4

    const/high16 v6, 0x1000000

    if-ne v5, v6, :cond_a

    const v4, 0x2b110

    goto :goto_3

    :cond_a
    const/high16 v5, 0x800000

    and-int/2addr v5, v4

    const/high16 v6, 0x800000

    if-ne v5, v6, :cond_b

    const v4, 0x17700

    goto :goto_3

    :cond_b
    const/high16 v5, 0x400000

    and-int/2addr v5, v4

    const/high16 v6, 0x400000

    if-ne v5, v6, :cond_c

    const v4, 0x15888

    goto :goto_3

    :cond_c
    and-int v5, v4, v9

    if-ne v5, v9, :cond_d

    const v4, 0xbb80

    goto :goto_3

    :cond_d
    and-int v5, v4, v8

    if-ne v5, v8, :cond_e

    const v4, 0xac44

    goto/16 :goto_3

    :cond_e
    and-int v5, v4, v7

    if-ne v5, v7, :cond_f

    const/16 v4, 0x7d00

    goto/16 :goto_3

    :cond_f
    const v4, 0xbb80

    goto/16 :goto_3
.end method
