.class public Lcom/samsung/android/speech/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final CMD_ALARM:I = 0x3

.field public static final CMD_CALL:I = 0x2

.field public static final CMD_CAMERA:I = 0x7

.field public static final CMD_CANCEL:I = 0x9

.field public static final CMD_GALLERY:I = 0x8

.field public static final CMD_MUSIC:I = 0x4

.field public static final CMD_RADIO:I = 0x5

.field public static final CMD_VIDEO:I = 0x6

.field public static final CMD_VOICETALK_ALL:I = 0x0

.field public static final CMD_VOICETALK_SCHEDULE:I = 0x1

.field public static final CMD_YES_NO:I = 0xa

.field public static final COUNT_DOMAIN:I = 0xb

.field public static final COUNT_LANGUAGE:I = 0xf

.field public static final DEFAULT_EXTRA_LANG_PATH:Ljava/lang/String; = "/system/voicebargeindata/include/"

.field public static final DEFAULT_PATH:Ljava/lang/String; = "/system/voicebargeindata"

.field public static final DEFAULT_PDT_PATH:Ljava/lang/String; = "/system/voicebargeindata/samsung/"

.field public static final DEFAULT_SAMSUNG_PATH:Ljava/lang/String; = "/system/voicebargeindata/sasr/"

.field public static final DEFAULT_SENSORY_PATH:Ljava/lang/String; = "/system/voicebargeindata/sensory/"

.field public static final LANGUAGE_BRAZIL_PORTUGUEE:I = 0x9

.field public static final LANGUAGE_EU_FRENCH:I = 0x4

.field public static final LANGUAGE_EU_GERMAN:I = 0x5

.field public static final LANGUAGE_EU_ITALIAN:I = 0x6

.field public static final LANGUAGE_EU_SPAINISH:I = 0x3

.field public static final LANGUAGE_HK_CHINESE:I = 0xd

.field public static final LANGUAGE_JAPANESE:I = 0x7

.field public static final LANGUAGE_KOREAN:I = 0x0

.field public static final LANGUAGE_RUSSIAN:I = 0x8

.field public static final LANGUAGE_SG_CHINESE:I = 0xe

.field public static final LANGUAGE_TRADITIONAL_CHINESE:I = 0x2

.field public static final LANGUAGE_TW_CHINESE:I = 0xc

.field public static final LANGUAGE_UK_ENGLISH:I = 0xa

.field public static final LANGUAGE_US_ENGLISH:I = 0x1

.field public static final LANGUAGE_US_SPAINISH:I = 0xb

.field private static final MODELS_SAMSUNG:[Ljava/lang/String;

.field public static final PDT_MAIN_SUFFIX:Ljava/lang/String; = "_v01.raw"

.field public static final PDT_SO_FILE_PATH:Ljava/lang/String; = "/system/lib/libBargeInEngine.so"

.field public static final PDT_SO_FILE_PATH_64:Ljava/lang/String; = "/system/lib64/libBargeInEngine.so"

.field public static final SAMSUNG_SO_FILE_PATH:Ljava/lang/String; = "/system/lib/libsasr-jni.so"

.field public static final SENSORY_MAIN_SUFFIX:Ljava/lang/String; = "_v2.raw"

.field public static final SENSORY_SO_FILE_PATH:Ljava/lang/String; = "/system/lib/libSensoryBargeInEngine.so"

.field public static final SENSORY_SO_FILE_PATH_64:Ljava/lang/String; = "/system/lib64/libSensoryBargeInEngine.so"

.field public static final SENSORY_SUB_SUFFIX:Ljava/lang/String; = "_v2_2.raw"

.field private static final STRING_DOMAIN:[Ljava/lang/String;

.field private static final STRING_SAMSUNG:[Ljava/lang/String;

.field private static final STRING_SENSORY:[Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "16.11.30"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "models_16k_KOR.bin"

    aput-object v1, v0, v3

    const-string/jumbo v1, "models_hci_daco.bin"

    aput-object v1, v0, v4

    const-string/jumbo v1, "models_16k_CHI.bin"

    aput-object v1, v0, v5

    const-string/jumbo v1, "models_16k_ESP.bin"

    aput-object v1, v0, v6

    const-string/jumbo v1, "models_16k_FRA.bin"

    aput-object v1, v0, v7

    const-string/jumbo v1, "models_16k_GER.bin"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "models_16k_ITA.bin"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "models_16k_JAPANESE_bi.bin"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "models_16k_RUSSIAN_bi.bin"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "models_hci_daco.bin"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "models_hci_daco.bin"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "models_16k_ESP.bin"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "models_hci_daco.bin"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "models_hci_daco.bin"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "models_hci_daco.bin"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/speech/Config;->MODELS_SAMSUNG:[Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "kor"

    aput-object v1, v0, v3

    const-string/jumbo v1, "eng"

    aput-object v1, v0, v4

    const-string/jumbo v1, "chi"

    aput-object v1, v0, v5

    const-string/jumbo v1, "spa"

    aput-object v1, v0, v6

    const-string/jumbo v1, "fra"

    aput-object v1, v0, v7

    const-string/jumbo v1, "ger"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "ita"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "jap"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "rus"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "eng"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "eng"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "spa"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "chi"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "chi"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "chi"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/speech/Config;->STRING_SAMSUNG:[Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ko_kr"

    aput-object v1, v0, v3

    const-string/jumbo v1, "en_us"

    aput-object v1, v0, v4

    const-string/jumbo v1, "zh_cn"

    aput-object v1, v0, v5

    const-string/jumbo v1, "es_es"

    aput-object v1, v0, v6

    const-string/jumbo v1, "fr_fr"

    aput-object v1, v0, v7

    const-string/jumbo v1, "de_de"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "it_it"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "ja_jp"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "ru_ru"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "pt_br"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "en_uk"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "es_la"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh_tw"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh_hk"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh_sg"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/speech/Config;->STRING_SENSORY:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "stop"

    aput-object v1, v0, v3

    const-string/jumbo v1, "schedule"

    aput-object v1, v0, v4

    const-string/jumbo v1, "call"

    aput-object v1, v0, v5

    const-string/jumbo v1, "alarm"

    aput-object v1, v0, v6

    const-string/jumbo v1, "music"

    aput-object v1, v0, v7

    const-string/jumbo v1, "radio"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "video"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "gallery"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "cancel"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "yesno"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/speech/Config;->STRING_DOMAIN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetPDTAM(II)Ljava/lang/String;
    .locals 4

    const/16 v2, 0xf

    if-lt p0, v2, :cond_0

    const/4 p0, 0x1

    :cond_0
    const/16 v2, 0xb

    if-ge p1, v2, :cond_1

    sget-object v2, Lcom/samsung/android/speech/Config;->STRING_SENSORY:[Ljava/lang/String;

    aget-object v1, v2, p0

    sget-object v2, Lcom/samsung/android/speech/Config;->STRING_DOMAIN:[Ljava/lang/String;

    aget-object v0, v2, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/system/voicebargeindata/samsung/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/samsung_bargein_am_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static GetPDTGRAMMAR(II)Ljava/lang/String;
    .locals 4

    const/16 v2, 0xf

    if-lt p0, v2, :cond_0

    const/4 p0, 0x1

    :cond_0
    const/16 v2, 0xb

    if-ge p1, v2, :cond_1

    sget-object v2, Lcom/samsung/android/speech/Config;->STRING_SENSORY:[Ljava/lang/String;

    aget-object v1, v2, p0

    sget-object v2, Lcom/samsung/android/speech/Config;->STRING_DOMAIN:[Ljava/lang/String;

    aget-object v0, v2, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/system/voicebargeindata/samsung/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/samsung_bargein_grammar_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static GetSamsungModels(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xf

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "param/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/speech/Config;->MODELS_SAMSUNG:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetSamsungNameList(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xb

    if-lt p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nameList_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/speech/Config;->STRING_DOMAIN:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "nameList_voicetalk_all.txt"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "nameList_voicetalk_schedule.txt"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static GetSamsungPath(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xf

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/system/voicebargeindata/sasr/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/speech/Config;->STRING_SAMSUNG:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/16k/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetSensoryAM(II)Ljava/lang/String;
    .locals 4

    const/16 v2, 0xf

    if-lt p0, v2, :cond_0

    const/4 p0, 0x1

    :cond_0
    const/16 v2, 0xb

    if-ge p1, v2, :cond_1

    sget-object v2, Lcom/samsung/android/speech/Config;->STRING_SENSORY:[Ljava/lang/String;

    aget-object v1, v2, p0

    sget-object v2, Lcom/samsung/android/speech/Config;->STRING_DOMAIN:[Ljava/lang/String;

    aget-object v0, v2, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/system/voicebargeindata/sensory/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/samsung_bargein_am_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static GetSensoryGRAMMAR(II)Ljava/lang/String;
    .locals 4

    const/16 v2, 0xf

    if-lt p0, v2, :cond_0

    const/4 p0, 0x1

    :cond_0
    const/16 v2, 0xb

    if-ge p1, v2, :cond_1

    sget-object v2, Lcom/samsung/android/speech/Config;->STRING_SENSORY:[Ljava/lang/String;

    aget-object v1, v2, p0

    sget-object v2, Lcom/samsung/android/speech/Config;->STRING_DOMAIN:[Ljava/lang/String;

    aget-object v0, v2, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/system/voicebargeindata/sensory/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/samsung_bargein_grammar_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
