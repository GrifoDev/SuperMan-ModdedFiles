.class public Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;
.super Ljava/lang/Object;
.source "HanziToMultiPinyin.java"


# static fields
.field private static final INITIAL_CAPACITY:I = 0x64

.field private static final multiPinyinMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v0, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->multiPinyinMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCharacterGbk(C)Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, "GBK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v5, ""

    :goto_0
    return-object v5

    :cond_0
    array-length v1, v0

    packed-switch v1, :pswitch_data_0

    const-string v5, ""

    goto :goto_0

    :pswitch_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v5, ""

    goto :goto_0

    :pswitch_1
    const/4 v5, 0x0

    :try_start_1
    aget-byte v5, v0, v5

    add-int/lit16 v3, v5, 0x100

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    add-int/lit16 v4, v5, 0x100

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;
    .locals 2

    const-class v1, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->sInstance:Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;

    invoke-direct {v0}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;-><init>()V

    sput-object v0, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->sInstance:Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;

    :cond_0
    sget-object v0, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->sInstance:Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getMultiPinyinsByGBK(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->multiPinyinMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    invoke-direct {p0, p1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initHashMap(Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->multiPinyinMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private initHashMap(Ljava/lang/String;)V
    .locals 5

    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initHashMapFragment(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v2, -0x1

    goto :goto_0
.end method

.method private initHashMapFragment(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap129()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap130()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap131()V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap132()V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap133()V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap134()V

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap135()V

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap136()V

    goto :goto_0

    :pswitch_9
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap137()V

    goto :goto_0

    :pswitch_a
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap138()V

    goto :goto_0

    :pswitch_b
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap139()V

    goto :goto_0

    :pswitch_c
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap140()V

    goto :goto_0

    :pswitch_d
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap141()V

    goto :goto_0

    :pswitch_e
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap142()V

    goto :goto_0

    :pswitch_f
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap143()V

    goto :goto_0

    :pswitch_10
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap144()V

    goto :goto_0

    :pswitch_11
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap145()V

    goto :goto_0

    :pswitch_12
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap146()V

    goto :goto_0

    :pswitch_13
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap147()V

    goto :goto_0

    :pswitch_14
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap148()V

    goto :goto_0

    :pswitch_15
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap149()V

    goto :goto_0

    :pswitch_16
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap150()V

    goto :goto_0

    :pswitch_17
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap151()V

    goto :goto_0

    :pswitch_18
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap152()V

    goto :goto_0

    :pswitch_19
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap153()V

    goto :goto_0

    :pswitch_1a
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap154()V

    goto :goto_0

    :pswitch_1b
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap155()V

    goto :goto_0

    :pswitch_1c
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap156()V

    goto :goto_0

    :pswitch_1d
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap157()V

    goto :goto_0

    :pswitch_1e
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap158()V

    goto :goto_0

    :pswitch_1f
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap159()V

    goto :goto_0

    :pswitch_20
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap160()V

    goto :goto_0

    :pswitch_21
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap170()V

    goto/16 :goto_0

    :pswitch_22
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap171()V

    goto/16 :goto_0

    :pswitch_23
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap172()V

    goto/16 :goto_0

    :pswitch_24
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap173()V

    goto/16 :goto_0

    :pswitch_25
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap174()V

    goto/16 :goto_0

    :pswitch_26
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap175()V

    goto/16 :goto_0

    :pswitch_27
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap176()V

    goto/16 :goto_0

    :pswitch_28
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap177()V

    goto/16 :goto_0

    :pswitch_29
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap178()V

    goto/16 :goto_0

    :pswitch_2a
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap179()V

    goto/16 :goto_0

    :pswitch_2b
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap180()V

    goto/16 :goto_0

    :pswitch_2c
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap181()V

    goto/16 :goto_0

    :pswitch_2d
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap182()V

    goto/16 :goto_0

    :pswitch_2e
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap183()V

    goto/16 :goto_0

    :pswitch_2f
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap184()V

    goto/16 :goto_0

    :pswitch_30
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap185()V

    goto/16 :goto_0

    :pswitch_31
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap186()V

    goto/16 :goto_0

    :pswitch_32
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap187()V

    goto/16 :goto_0

    :pswitch_33
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap188()V

    goto/16 :goto_0

    :pswitch_34
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap189()V

    goto/16 :goto_0

    :pswitch_35
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap190()V

    goto/16 :goto_0

    :pswitch_36
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap191()V

    goto/16 :goto_0

    :pswitch_37
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap192()V

    goto/16 :goto_0

    :pswitch_38
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap193()V

    goto/16 :goto_0

    :pswitch_39
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap194()V

    goto/16 :goto_0

    :pswitch_3a
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap195()V

    goto/16 :goto_0

    :pswitch_3b
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap196()V

    goto/16 :goto_0

    :pswitch_3c
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap197()V

    goto/16 :goto_0

    :pswitch_3d
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap198()V

    goto/16 :goto_0

    :pswitch_3e
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap199()V

    goto/16 :goto_0

    :pswitch_3f
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap200()V

    goto/16 :goto_0

    :pswitch_40
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap201()V

    goto/16 :goto_0

    :pswitch_41
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap202()V

    goto/16 :goto_0

    :pswitch_42
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap203()V

    goto/16 :goto_0

    :pswitch_43
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap204()V

    goto/16 :goto_0

    :pswitch_44
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap205()V

    goto/16 :goto_0

    :pswitch_45
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap206()V

    goto/16 :goto_0

    :pswitch_46
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap207()V

    goto/16 :goto_0

    :pswitch_47
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap208()V

    goto/16 :goto_0

    :pswitch_48
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap209()V

    goto/16 :goto_0

    :pswitch_49
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap210()V

    goto/16 :goto_0

    :pswitch_4a
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap211()V

    goto/16 :goto_0

    :pswitch_4b
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap212()V

    goto/16 :goto_0

    :pswitch_4c
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap213()V

    goto/16 :goto_0

    :pswitch_4d
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap214()V

    goto/16 :goto_0

    :pswitch_4e
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap215()V

    goto/16 :goto_0

    :pswitch_4f
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap216()V

    goto/16 :goto_0

    :pswitch_50
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap217()V

    goto/16 :goto_0

    :pswitch_51
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap218()V

    goto/16 :goto_0

    :pswitch_52
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap219()V

    goto/16 :goto_0

    :pswitch_53
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap220()V

    goto/16 :goto_0

    :pswitch_54
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap221()V

    goto/16 :goto_0

    :pswitch_55
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap222()V

    goto/16 :goto_0

    :pswitch_56
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap223()V

    goto/16 :goto_0

    :pswitch_57
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap224()V

    goto/16 :goto_0

    :pswitch_58
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap225()V

    goto/16 :goto_0

    :pswitch_59
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap226()V

    goto/16 :goto_0

    :pswitch_5a
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap227()V

    goto/16 :goto_0

    :pswitch_5b
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap228()V

    goto/16 :goto_0

    :pswitch_5c
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap229()V

    goto/16 :goto_0

    :pswitch_5d
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap230()V

    goto/16 :goto_0

    :pswitch_5e
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap231()V

    goto/16 :goto_0

    :pswitch_5f
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap232()V

    goto/16 :goto_0

    :pswitch_60
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap233()V

    goto/16 :goto_0

    :pswitch_61
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap234()V

    goto/16 :goto_0

    :pswitch_62
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap235()V

    goto/16 :goto_0

    :pswitch_63
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap236()V

    goto/16 :goto_0

    :pswitch_64
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap237()V

    goto/16 :goto_0

    :pswitch_65
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap238()V

    goto/16 :goto_0

    :pswitch_66
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap239()V

    goto/16 :goto_0

    :pswitch_67
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap240()V

    goto/16 :goto_0

    :pswitch_68
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap241()V

    goto/16 :goto_0

    :pswitch_69
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap242()V

    goto/16 :goto_0

    :pswitch_6a
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap243()V

    goto/16 :goto_0

    :pswitch_6b
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap244()V

    goto/16 :goto_0

    :pswitch_6c
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap245()V

    goto/16 :goto_0

    :pswitch_6d
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap246()V

    goto/16 :goto_0

    :pswitch_6e
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap247()V

    goto/16 :goto_0

    :pswitch_6f
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap248()V

    goto/16 :goto_0

    :pswitch_70
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap249()V

    goto/16 :goto_0

    :pswitch_71
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap250()V

    goto/16 :goto_0

    :pswitch_72
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap251()V

    goto/16 :goto_0

    :pswitch_73
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap252()V

    goto/16 :goto_0

    :pswitch_74
    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->initMap253()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
    .end packed-switch
.end method

.method private static initMap129()V
    .locals 2

    const-string v0, "129-64"

    const-string v1, "kao,qiao,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-79"

    const-string v1, "guan,kuang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-85"

    const-string v1, "yi,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-92"

    const-string v1, "cheng,sheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-118"

    const-string v1, "zhi,luan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-133"

    const-string v1, "qi,zhai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-144"

    const-string v1, "wei,men"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-151"

    const-string v1, "jin,san"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-154"

    const-string v1, "tuo,cha,duo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-156"

    const-string v1, "gan,han"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-159"

    const-string v1, "chang,zhang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-163"

    const-string v1, "chao,miao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-166"

    const-string v1, "yao,fo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-188"

    const-string v1, "che,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-193"

    const-string v1, "xian,xuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-204"

    const-string v1, "yi,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-206"

    const-string v1, "han,gan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-212"

    const-string v1, "zhao,shao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-215"

    const-string v1, "zhan,dian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "129-221"

    const-string v1, "hui,huai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap130()V
    .locals 2

    const-string v0, "130-68"

    const-string v1, "cheng,ting"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-74"

    const-string v1, "shu,dou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-77"

    const-string v1, "tuo,tui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-101"

    const-string v1, "che,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-109"

    const-string v1, "chu,ti"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-115"

    const-string v1, "hu,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-121"

    const-string v1, "cui,zu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-122"

    const-string v1, "liang,lia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-138"

    const-string v1, "liang,jing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-160"

    const-string v1, "cheng,chen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-163"

    const-string v1, "zhong,tong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-171"

    const-string v1, "tang,dang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-184"

    const-string v1, "chou,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-198"

    const-string v1, "cai,si"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-200"

    const-string v1, "ce,ze,zhai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-204"

    const-string v1, "zan,za,zBn"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-208"

    const-string v1, "zhi,si"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-215"

    const-string v1, "jiang,gou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-223"

    const-string v1, "qian,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-224"

    const-string v1, "que,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-225"

    const-string v1, "cang,chen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-232"

    const-string v1, "ta,tan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-243"

    const-string v1, "zao,cao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-247"

    const-string v1, "chuan,zhuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "130-250"

    const-string v1, "qi,cou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap131()V
    .locals 2

    const-string v0, "131-69"

    const-string v1, "lv,lou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-71"

    const-string v1, "piao,biao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-92"

    const-string v1, "cheng,deng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-93"

    const-string v1, "zhan,zhuan,chan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-99"

    const-string v1, "tie,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-101"

    const-string v1, "jiao,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-104"

    const-string v1, "yu,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-105"

    const-string v1, "e,wu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-114"

    const-string v1, "jia,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-123"

    const-string v1, "chan,tan,shan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-140"

    const-string v1, "ni,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-168"

    const-string v1, "rang,xiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-170"

    const-string v1, "hui,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-181"

    const-string v1, "dui,rui,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-182"

    const-string v1, "dui,rui,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-184"

    const-string v1, "chang,zhang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-186"

    const-string v1, "er,ni"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-202"

    const-string v1, "yu,shu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-220"

    const-string v1, "yin,you"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "131-244"

    const-string v1, "jing,cheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap132()V
    .locals 2

    const-string v0, "132-74"

    const-string v1, "yi kB,yi kB no bo li,tB ko"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-119"

    const-string v1, "kei,ke"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-120"

    const-string v1, "cha,sha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-131"

    const-string v1, "bao,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-134"

    const-string v1, "du,zhuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-140"

    const-string v1, "zhi,duan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-145"

    const-string v1, "da,zha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-150"

    const-string v1, "tuan,zhuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-151"

    const-string v1, "lu,jiu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-164"

    const-string v1, "jiao,chao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-179"

    const-string v1, "jin,jing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-181"

    const-string v1, "xie,lie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-197"

    const-string v1, "jin,jing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-216"

    const-string v1, "weng,yang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-224"

    const-string v1, "jiao,chao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-231"

    const-string v1, "tong,dong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-240"

    const-string v1, "rang,xiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "132-252"

    const-string v1, "tao,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap133()V
    .locals 2

    const-string v0, "133-77"

    const-string v1, "zang,cang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-84"

    const-string v1, "kui,gui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-92"

    const-string v1, "ke,qia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-94"

    const-string v1, "qu,ou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-105"

    const-string v1, "shuai,lv"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-106"

    const-string v1, "guan,kuang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-110"

    const-string v1, "yang,ang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-122"

    const-string v1, "zhe,zhai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-123"

    const-string v1, "han,an"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-126"

    const-string v1, "zha,zhai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-132"

    const-string v1, "zhi,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-149"

    const-string v1, "qian,lan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-154"

    const-string v1, "gong,hong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-155"

    const-string v1, "lin,miao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-156"

    const-string v1, "rou,qiu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-162"

    const-string v1, "can,shen,cen,san"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-163"

    const-string v1, "can,shen,cen,san"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-164"

    const-string v1, "can,shen,cen,san"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-165"

    const-string v1, "ai,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-172"

    const-string v1, "zhuo,yi,li,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-176"

    const-string v1, "wei,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-186"

    const-string v1, "xuan,song"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-188"

    const-string v1, "dou,cun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-195"

    const-string v1, "jie,ge"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-197"

    const-string v1, "e,hua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-200"

    const-string v1, "na,ne"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-201"

    const-string v1, "xue,chuo,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-202"

    const-string v1, "dou,ru"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-203"

    const-string v1, "hou,hong,ou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-215"

    const-string v1, "tun,tian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-216"

    const-string v1, "hua,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-221"

    const-string v1, "wen,min"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-222"

    const-string v1, "mou,m"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-227"

    const-string v1, "tie,che"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-230"

    const-string v1, "qi,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-232"

    const-string v1, "zi,ci"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-233"

    const-string v1, "xu,hou,gou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-235"

    const-string v1, "xiao,hao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-236"

    const-string v1, "da,dan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "133-238"

    const-string v1, "xian,gan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap134()V
    .locals 2

    const-string v0, "134-65"

    const-string v1, "die,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-67"

    const-string v1, "shu,xun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-70"

    const-string v1, "huai,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-72"

    const-string v1, "e,an"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-74"

    const-string v1, "wai,he,wo,wa,gua,guo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-79"

    const-string v1, "die,di"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-84"

    const-string v1, "yuan,yun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-92"

    const-string v1, "po,ba,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-93"

    const-string v1, "liang,lang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-96"

    const-string v1, "lie,lv"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-100"

    const-string v1, "chuo,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-104"

    const-string v1, "bei,bai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-107"

    const-string v1, "jia,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-109"

    const-string v1, "dan,xian,yan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-121"

    const-string v1, "gong,hong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-126"

    const-string v1, "sha,shB"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-129"

    const-string v1, "wo,wei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-130"

    const-string v1, "jin,yin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-132"

    const-string v1, "er,wa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-135"

    const-string v1, "jie,ze,zuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-143"

    const-string v1, "zhuo,zhao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-148"

    const-string v1, "zhun,tun,xiang,dui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-151"

    const-string v1, "sha,jie,die,ti"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-156"

    const-string v1, "yue,wa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-157"

    const-string v1, "zi,ci"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-158"

    const-string v1, "bi,tu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-166"

    const-string v1, "qing,ying"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-168"

    const-string v1, "ze,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-174"

    const-string v1, "tan,chan,tuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-184"

    const-string v1, "huo,guo,xu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-185"

    const-string v1, "zan,za,zBn"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-191"

    const-string v1, "huan,yuan,xuan,he"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-193"

    const-string v1, "zhong,chuang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-198"

    const-string v1, "duo,zha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-204"

    const-string v1, "qiao,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-206"

    const-string v1, "dan,shan,chan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-207"

    const-string v1, "pen,ben"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-208"

    const-string v1, "can,sun,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-215"

    const-string v1, "zao,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-219"

    const-string v1, "he,xiao,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-223"

    const-string v1, "gong,hong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-225"

    const-string v1, "ma,mB"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-229"

    const-string v1, "wa,gu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-231"

    const-string v1, "beng,pang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-233"

    const-string v1, "xian,qian,qie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-247"

    const-string v1, "zui,sui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-248"

    const-string v1, "zhe,zhu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-253"

    const-string v1, "jiao,dao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "134-254"

    const-string v1, "kai,ge"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap135()V
    .locals 2

    const-string v0, "135-65"

    const-string v1, "shan,can"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-69"

    const-string v1, "xiao,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-78"

    const-string v1, "de,dei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-96"

    const-string v1, "fu,?"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-98"

    const-string v1, "chu,xu,shou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-99"

    const-string v1, "tan,chan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-100"

    const-string v1, "dan,tan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-104"

    const-string v1, "fan,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-109"

    const-string v1, "cu,za,he"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-112"

    const-string v1, "tun,kuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-117"

    const-string v1, "xu,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-128"

    const-string v1, "zhou,zhuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-130"

    const-string v1, "yue,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-132"

    const-string v1, "jiao,qiao,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-140"

    const-string v1, "xin,hen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-151"

    const-string v1, "huo,o"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-152"

    const-string v1, "he,xia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-155"

    const-string v1, "xiu,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-156"

    const-string v1, "zhou,chou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-157"

    const-string v1, "ji,jie,zhai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-165"

    const-string v1, "bo,pao,bao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-170"

    const-string v1, "mei,me,mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-175"

    const-string v1, "xie,hai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-212"

    const-string v1, "za,zan,can"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-217"

    const-string v1, "yan,za,nie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-236"

    const-string v1, "wei,tong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-249"

    const-string v1, "chuan,chui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "135-252"

    const-string v1, "quan,juan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap136()V
    .locals 2

    const-string v0, "136-83"

    const-string v1, "yu,zhun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-84"

    const-string v1, "qian,su"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-98"

    const-string v1, "mei,fen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-99"

    const-string v1, "rong,keng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-100"

    const-string v1, "tun,dun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-101"

    const-string v1, "ben,fen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-104"

    const-string v1, "di,lan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-109"

    const-string v1, "pan,ban"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-161"

    const-string v1, "pou,fu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-169"

    const-string v1, "beng,feng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-170"

    const-string v1, "di,fang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-171"

    const-string v1, "que,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-174"

    const-string v1, "xia,jia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-178"

    const-string v1, "qin,jin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-188"

    const-string v1, "sui,su"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-189"

    const-string v1, "qing,zheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-193"

    const-string v1, "zheng,cheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-195"

    const-string v1, "chong,shang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-199"

    const-string v1, "chu,tou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-201"

    const-string v1, "xian,kan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-203"

    const-string v1, "yi,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-233"

    const-string v1, "mao,mou,wu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "136-236"

    const-string v1, "e,ai,ye"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap137()V
    .locals 2

    const-string v0, "137-112"

    const-string v1, "ou,qiu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-113"

    const-string v1, "qian,zan,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-116"

    const-string v1, "zhuan,tuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-121"

    const-string v1, "zhi,di"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-126"

    const-string v1, "zhi,zhuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-145"

    const-string v1, "kuai,tui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-146"

    const-string v1, "tuan,dong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-148"

    const-string v1, "qiao,que"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-150"

    const-string v1, "zun,dun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-153"

    const-string v1, "duo,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-167"

    const-string v1, "qiao,ao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-169"

    const-string v1, "yi,tu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-174"

    const-string v1, "xue,bo,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-183"

    const-string v1, "xian,lan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-224"

    const-string v1, "gu,ying"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-225"

    const-string v1, "jiang,xiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-226"

    const-string v1, "feng,pang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-233"

    const-string v1, "xiong,xuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-237"

    const-string v1, "yuan,wan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-238"

    const-string v1, "mao,wan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-250"

    const-string v1, "tao,ben"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "137-252"

    const-string v1, "yan,tao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap138()V
    .locals 2

    const-string v0, "138-65"

    const-string v1, "jia,ga,xia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-68"

    const-string v1, "di,ti"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-73"

    const-string v1, "quan,juan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-76"

    const-string v1, "she,chi,zha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-81"

    const-string v1, "xun,zhui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-85"

    const-string v1, "po,ha,tai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-87"

    const-string v1, "ao,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-98"

    const-string v1, "duo,che"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-99"

    const-string v1, "ding,tian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-109"

    const-string v1, "fu,you"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-111"

    const-string v1, "hai,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-115"

    const-string v1, "keng,hang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-118"

    const-string v1, "fou,pei,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-120"

    const-string v1, "yue,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-123"

    const-string v1, "na,nan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-128"

    const-string v1, "wan,yuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-133"

    const-string v1, "ni,nai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-136"

    const-string v1, "xian,xuan,xu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-137"

    const-string v1, "zhi,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-163"

    const-string v1, "hua,huo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-165"

    const-string v1, "gou,du"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-174"

    const-string v1, "jun,xun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-175"

    const-string v1, "kua,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-183"

    const-string v1, "shen,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-191"

    const-string v1, "cheng,sheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-195"

    const-string v1, "wu,mu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-197"

    const-string v1, "chuo,lai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-203"

    const-string v1, "pou,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-204"

    const-string v1, "nei,sui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-211"

    const-string v1, "wu,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-214"

    const-string v1, "xi,ai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-220"

    const-string v1, "zhui,shui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-226"

    const-string v1, "ai,e"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-231"

    const-string v1, "pou,pei,bu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-239"

    const-string v1, "fu,fan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-247"

    const-string v1, "quan,juan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-250"

    const-string v1, "qian,jin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "138-254"

    const-string v1, "wan,wa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap139()V
    .locals 2

    const-string v0, "139-66"

    const-string v1, "zhou,chou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-67"

    const-string v1, "chuo,nao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-70"

    const-string v1, "an,n<e"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-71"

    const-string v1, "hun,kun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-78"

    const-string v1, "huB,dB tBi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-80"

    const-string v1, "dang,yang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-83"

    const-string v1, "ruo,chuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-85"

    const-string v1, "tou,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-88"

    const-string v1, "di,ti"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-92"

    const-string v1, "ruan,nen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-102"

    const-string v1, "yi,pei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-115"

    const-string v1, "tuo,duo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-129"

    const-string v1, "tou,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-131"

    const-string v1, "chu,zou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-139"

    const-string v1, "ao,yun,wo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-142"

    const-string v1, "qin,shen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-145"

    const-string v1, "jie,suo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-169"

    const-string v1, "han,nan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-205"

    const-string v1, "xian,yan,jin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-214"

    const-string v1, "huan,xuan,qiong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "139-252"

    const-string v1, "xian,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap140()V
    .locals 2

    const-string v0, "140-64"

    const-string v1, "xie,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-65"

    const-string v1, "huan,quan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-70"

    const-string v1, "zhu,chuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-73"

    const-string v1, "zi,ma"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-79"

    const-string v1, "sun,xun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-95"

    const-string v1, "tu,jia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-112"

    const-string v1, "bao,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-131"

    const-string v1, "jin,qin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-138"

    const-string v1, "ju,lou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-156"

    const-string v1, "l<e,luo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-161"

    const-string v1, "kei,ke"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-165"

    const-string v1, "shu,zhu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-168"

    const-string v1, "jie,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-180"

    const-string v1, "long,mang,meng,pang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-206"

    const-string v1, "ping,bing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-209"

    const-string v1, "xie,ti"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-217"

    const-string v1, "shu,zhu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-219"

    const-string v1, "ni,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-226"

    const-string v1, "hong,long"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "140-229"

    const-string v1, "han,an"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap141()V
    .locals 2

    const-string v0, "141-75"

    const-string v1, "zBi,ze mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-81"

    const-string v1, "ke,ba"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-84"

    const-string v1, "fu,nie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-108"

    const-string v1, "xie,ye"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-140"

    const-string v1, "zu,cui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-154"

    const-string v1, "pi,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-164"

    const-string v1, "yang,dang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-170"

    const-string v1, "zhi,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-171"

    const-string v1, "shi,die"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-174"

    const-string v1, "kan,zhan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-182"

    const-string v1, "wu,mao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-186"

    const-string v1, "ke,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-201"

    const-string v1, "dang,tang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-202"

    const-string v1, "rong,ying"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-204"

    const-string v1, "kai,ai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-207"

    const-string v1, "kao,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-210"

    const-string v1, "qin,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-222"

    const-string v1, "die,di"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-227"

    const-string v1, "zhan,chan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-228"

    const-string v1, "zhan,chan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-239"

    const-string v1, "pi,pei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "141-254"

    const-string v1, "jiao,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap142()V
    .locals 2

    const-string v0, "142-64"

    const-string v1, "jue,gui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-69"

    const-string v1, "zhan,shan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-79"

    const-string v1, "xie,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-80"

    const-string v1, "ke,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-81"

    const-string v1, "gui,xi,juan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-95"

    const-string v1, "li,lie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-96"

    const-string v1, "gui,xi,juan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-99"

    const-string v1, "ying,hong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-121"

    const-string v1, "jing,xing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-146"

    const-string v1, "mo,wa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-165"

    const-string v1, "jian,san"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-168"

    const-string v1, "sha,qie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-169"

    const-string v1, "qi,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-187"

    const-string v1, "shan,qiao,shen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-206"

    const-string v1, "chou,dao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-219"

    const-string v1, "me,mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-221"

    const-string v1, "dun,tun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-223"

    const-string v1, "bai,ting"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-237"

    const-string v1, "mang,meng,pang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-240"

    const-string v1, "bing,ping"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "142-243"

    const-string v1, "ji,cuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap143()V
    .locals 2

    const-string v0, "143-64"

    const-string v1, "gui,wei,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-66"

    const-string v1, "sha,xia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-90"

    const-string v1, "qiang,se"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-103"

    const-string v1, "po,pai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-123"

    const-string v1, "jue,zhang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-131"

    const-string v1, "juan,quan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-133"

    const-string v1, "xuan,yuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-138"

    const-string v1, "qiang,jiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-142"

    const-string v1, "dan,tan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-151"

    const-string v1, "dan,tan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-153"

    const-string v1, "qiang,jiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-176"

    const-string v1, "zhuo,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-177"

    const-string v1, "tuo,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-186"

    const-string v1, "wang,jia,wa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-187"

    const-string v1, "cheng,zheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-196"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-202"

    const-string v1, "shi,ti"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-203"

    const-string v1, "jia,xia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-211"

    const-string v1, "ti,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-213"

    const-string v1, "zhi,zheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-215"

    const-string v1, "zhong,chong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-217"

    const-string v1, "jiao,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-223"

    const-string v1, "qu,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-226"

    const-string v1, "ding,ting"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-229"

    const-string v1, "gan,han"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-230"

    const-string v1, "yi,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-231"

    const-string v1, "shi,tai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-232"

    const-string v1, "xi,lie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-235"

    const-string v1, "min,wen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-236"

    const-string v1, "min,wen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-243"

    const-string v1, "yu,shu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-244"

    const-string v1, "qi,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-247"

    const-string v1, "tun,zhun,dun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-248"

    const-string v1, "qian,qin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-251"

    const-string v1, "kuang,wang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "143-253"

    const-string v1, "kang,hang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap144()V
    .locals 2

    const-string v0, "144-66"

    const-string v1, "min,men"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-68"

    const-string v1, "kou,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-70"

    const-string v1, "nao,niu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-71"

    const-string v1, "tie,zhan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-72"

    const-string v1, "hu,gu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-73"

    const-string v1, "cu,ju,zu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-74"

    const-string v1, "you,chou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-76"

    const-string v1, "tu,die"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-81"

    const-string v1, "you,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-86"

    const-string v1, "xu,xue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-87"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-89"

    const-string v1, "xi,shu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-102"

    const-string v1, "tiao,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-106"

    const-string v1, "xi,qi,xu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-107"

    const-string v1, "xiao,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-109"

    const-string v1, "hu,kua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-119"

    const-string v1, "quan,zhuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-128"

    const-string v1, "yuan,juan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-131"

    const-string v1, "yu,shu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-133"

    const-string v1, "jie,ke"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-136"

    const-string v1, "hao,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-142"

    const-string v1, "man,men"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-150"

    const-string v1, "yi,nian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-173"

    const-string v1, "yuan,wan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-176"

    const-string v1, "lan,lin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-177"

    const-string v1, "yu,xu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-179"

    const-string v1, "juan,quan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-180"

    const-string v1, "tan,dan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-183"

    const-string v1, "chuo,chui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-184"

    const-string v1, "hun,men"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-186"

    const-string v1, "e,wu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-187"

    const-string v1, "suo,rui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-201"

    const-string v1, "ti,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-212"

    const-string v1, "qi,kai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-213"

    const-string v1, "dang,shang,tang,yang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-215"

    const-string v1, "chen,xin,dan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-217"

    const-string v1, "ke,qia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-223"

    const-string v1, "cong,song"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-224"

    const-string v1, "sai,si"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-227"

    const-string v1, "gong,hong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-229"

    const-string v1, "su,shuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-247"

    const-string v1, "kai,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-248"

    const-string v1, "xi,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "144-253"

    const-string v1, "cao,sao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap145()V
    .locals 2

    const-string v0, "145-65"

    const-string v1, "xu,chu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-69"

    const-string v1, "gong,hong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-70"

    const-string v1, "cao,cong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-91"

    const-string v1, "qin,jin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-100"

    const-string v1, "di,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-101"

    const-string v1, "zhi,zhe"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-102"

    const-string v1, "lou,lv"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-126"

    const-string v1, "cheng,deng,zheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-132"

    const-string v1, "dan,da"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-135"

    const-string v1, "dui,dun,tun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-139"

    const-string v1, "xiao,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-157"

    const-string v1, "nao,nang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-162"

    const-string v1, "jiao,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-164"

    const-string v1, "xuan,huan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-168"

    const-string v1, "cao,sao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-185"

    const-string v1, "ai,yi,ni"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-188"

    const-string v1, "qi,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-190"

    const-string v1, "lan,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-222"

    const-string v1, "gang,zhuang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-223"

    const-string v1, "gang,zhuang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-239"

    const-string v1, "xi,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-241"

    const-string v1, "xi,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-242"

    const-string v1, "xi,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "145-251"

    const-string v1, "shang,jiong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap146()V
    .locals 2

    const-string v0, "146-65"

    const-string v1, "le,li,cai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-66"

    const-string v1, "fan,fu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-70"

    const-string v1, "diao,di,yue,li"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-71"

    const-string v1, "yu,wu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-72"

    const-string v1, "yu,wu,ku"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-76"

    const-string v1, "tuo,chi,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-77"

    const-string v1, "gu,xi,ge,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-81"

    const-string v1, "xi,cha,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-82"

    const-string v1, "qian,qin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-85"

    const-string v1, "ba,ao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-86"

    const-string v1, "xi,zhe"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-88"

    const-string v1, "zhi,sun,kan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-91"

    const-string v1, "kuang,wang,zai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-95"

    const-string v1, "hu,gu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-98"

    const-string v1, "dan,shen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-102"

    const-string v1, "ne,ni,rui,na"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-104"

    const-string v1, "pou,fu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-106"

    const-string v1, "ao,niu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-107"

    const-string v1, "ze,zhBi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-110"

    const-string v1, "zhi,zhai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-112"

    const-string v1, "bu,pu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-113"

    const-string v1, "yao,tao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-117"

    const-string v1, "he,qia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-121"

    const-string v1, "pi,pei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-126"

    const-string v1, "jia,ya"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-142"

    const-string v1, "cun,zun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-143"

    const-string v1, "yi,chi,hai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-145"

    const-string v1, "ce,se,chuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-149"

    const-string v1, "kuo,guang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-157"

    const-string v1, "ru,na"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-161"

    const-string v1, "die,she"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-163"

    const-string v1, "lie ri"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-168"

    const-string v1, "tuo,shui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-173"

    const-string v1, "suo,sB,shB"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-174"

    const-string v1, "keng,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-178"

    const-string v1, "bang,peng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-182"

    const-string v1, "xie,jia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-185"

    const-string v1, "jiao,ku"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-187"

    const-string v1, "huo,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-188"

    const-string v1, "tu,shu,cha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-189"

    const-string v1, "pou,fu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-191"

    const-string v1, "shu,song,sou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-192"

    const-string v1, "ye,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-193"

    const-string v1, "jue,zhuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-195"

    const-string v1, "bu,pu,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-201"

    const-string v1, "tuo,shui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-204"

    const-string v1, "wan,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-209"

    const-string v1, "fu,bu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-211"

    const-string v1, "wo,luo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-212"

    const-string v1, "juan,quan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-218"

    const-string v1, "ruo,wei,re"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-220"

    const-string v1, "wo,xia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-225"

    const-string v1, "qing,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-231"

    const-string v1, "qian,wan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-237"

    const-string v1, "ni,nie,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-238"

    const-string v1, "huo,xu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-239"

    const-string v1, "shan,yan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-240"

    const-string v1, "zheng,ding"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "146-244"

    const-string v1, "zou,zhou,chou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap147()V
    .locals 2

    const-string v0, "147-64"

    const-string v1, "zheng,keng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-65"

    const-string v1, "jiu,you"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-70"

    const-string v1, "pi,che"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-72"

    const-string v1, "sai,zong,cai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-75"

    const-string v1, "zong,song"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-78"

    const-string v1, "huang,yong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-83"

    const-string v1, "zan,zuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-84"

    const-string v1, "xu,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-85"

    const-string v1, "ke,qia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-87"

    const-string v1, "ti,di"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-95"

    const-string v1, "chong,dong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-98"

    const-string v1, "qian,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-111"

    const-string v1, "chou,zou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-114"

    const-string v1, "rong,nang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-115"

    const-string v1, "bang,peng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-120"

    const-string v1, "nu,nuo,nou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-121"

    const-string v1, "la,xie,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-131"

    const-string v1, "jie,zhe"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-132"

    const-string v1, "pan,ban,po"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-135"

    const-string v1, "hu,ku"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-136"

    const-string v1, "zhi,nai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-140"

    const-string v1, "qiang,cheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-141"

    const-string v1, "tian,shen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-144"

    const-string v1, "na,nuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-151"

    const-string v1, "sa,sha,shai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-152"

    const-string v1, "chan,sun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-154"

    const-string v1, "jiu,liu,liao,jiao,nao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-158"

    const-string v1, "feng,peng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-159"

    const-string v1, "di,tu,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-160"

    const-string v1, "qi,ji,cha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-161"

    const-string v1, "sou,song"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-169"

    const-string v1, "gai,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-170"

    const-string v1, "hu,chu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-175"

    const-string v1, "zhi,nai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-176"

    const-string v1, "jiang,qiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-179"

    const-string v1, "ao,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-181"

    const-string v1, "nie,che"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-183"

    const-string v1, "chan,can"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-186"

    const-string v1, "se,mi,su"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-188"

    const-string v1, "jiao,chao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-189"

    const-string v1, "chan,xian,can,shan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-190"

    const-string v1, "keng,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-203"

    const-string v1, "zan,zen,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-209"

    const-string v1, "heng,guang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-213"

    const-string v1, "zheng,cheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-214"

    const-string v1, "hui,wei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-219"

    const-string v1, "dan,shan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-223"

    const-string v1, "xiao,sou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-227"

    const-string v1, "wei,tuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-234"

    const-string v1, "qiao,yao,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-235"

    const-string v1, "zhua,wo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-241"

    const-string v1, "ze,zhai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-247"

    const-string v1, "qing,jing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "147-252"

    const-string v1, "qia,jia,ye"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap148()V
    .locals 2

    const-string v0, "148-84"

    const-string v1, "zhi,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-89"

    const-string v1, "lie,la"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-94"

    const-string v1, "li,luo,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-96"

    const-string v1, "ti,zhi,zhai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-99"

    const-string v1, "ca,sa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-104"

    const-string v1, "jun,pei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-105"

    const-string v1, "li,luo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-106"

    const-string v1, "la,lai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-109"

    const-string v1, "lu,luo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-115"

    const-string v1, "xian,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-122"

    const-string v1, "she,nie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-125"

    const-string v1, "mi,mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-128"

    const-string v1, "zan,cuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-131"

    const-string v1, "li,shai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-137"

    const-string v1, "li,luo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-140"

    const-string v1, "qi,yi,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-144"

    const-string v1, "gan,han"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-150"

    const-string v1, "wu,mou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-153"

    const-string v1, "chu,shou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-154"

    const-string v1, "ge,guo,e"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-159"

    const-string v1, "duo,dui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-163"

    const-string v1, "duo,dui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-166"

    const-string v1, "duo,que"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-170"

    const-string v1, "qi,yi,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-172"

    const-string v1, "xiao,xue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-173"

    const-string v1, "duo,que"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-177"

    const-string v1, "ai,zhu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-178"

    const-string v1, "ai,zhu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-181"

    const-string v1, "shu,shuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-184"

    const-string v1, "xiong,xuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-189"

    const-string v1, "zhuo,zhu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-190"

    const-string v1, "yi,du"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-193"

    const-string v1, "li,tai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-199"

    const-string v1, "jue,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-203"

    const-string v1, "yu,zhong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-205"

    const-string v1, "wei,men"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-211"

    const-string v1, "tou,tiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-213"

    const-string v1, "yin,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-226"

    const-string v1, "chan,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-229"

    const-string v1, "liu,you"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "148-232"

    const-string v1, "pi,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap149()V
    .locals 2

    const-string v0, "149-64"

    const-string v1, "tai,ying"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "149-65"

    const-string v1, "di,de"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "149-72"

    const-string v1, "tun,zhun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "149-105"

    const-string v1, "die,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "149-118"

    const-string v1, "xu,kua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "149-146"

    const-string v1, "qi,du"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "149-149"

    const-string v1, "an,yan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "149-164"

    const-string v1, "shu,du"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "149-169"

    const-string v1, "jian,lan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "149-251"

    const-string v1, "zeng,ceng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "149-252"

    const-string v1, "can,qian,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "149-254"

    const-string v1, "hui,kuai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap150()V
    .locals 2

    const-string v0, "150-65"

    const-string v1, "qie,he"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-67"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-68"

    const-string v1, "fen,ban"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-70"

    const-string v1, "fei,ku"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-72"

    const-string v1, "nv,ga"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-75"

    const-string v1, "juan,zui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-77"

    const-string v1, "huang,mang,wang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-83"

    const-string v1, "tong,chuang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-88"

    const-string v1, "shu,zhu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-93"

    const-string v1, "dao,tiao,mu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-95"

    const-string v1, "qiu,gui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-102"

    const-string v1, "yu,wu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-107"

    const-string v1, "ren,er"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-108"

    const-string v1, "tuo,zhe"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-109"

    const-string v1, "di,duo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-113"

    const-string v1, "gu,gai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-115"

    const-string v1, "yi,li,duo,tuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-121"

    const-string v1, "si,zhi,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-122"

    const-string v1, "yuan,wan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-123"

    const-string v1, "fei,bei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-128"

    const-string v1, "shu,dui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-131"

    const-string v1, "niu,chou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-134"

    const-string v1, "wo,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-138"

    const-string v1, "pi,mi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-144"

    const-string v1, "hu,di"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-154"

    const-string v1, "di,duo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-156"

    const-string v1, "song,mB ti su"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-158"

    const-string v1, "xian,zhen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-159"

    const-string v1, "si,tai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-162"

    const-string v1, "bao,fu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-164"

    const-string v1, "yi,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-170"

    const-string v1, "yi,duo,li"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-171"

    const-string v1, "ni,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-174"

    const-string v1, "pan,ban"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-179"

    const-string v1, "yang,ying"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-187"

    const-string v1, "zhi,die"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-188"

    const-string v1, "zha,zu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-191"

    const-string v1, "bu,pu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-194"

    const-string v1, "ba,fu,pei,bo,bie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-195"

    const-string v1, "duo,zuo,wu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-196"

    const-string v1, "bi,bie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-200"

    const-string v1, "bei,pei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-201"

    const-string v1, "shi,fei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-203"

    const-string v1, "cha,zha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-214"

    const-string v1, "qi,qie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-222"

    const-string v1, "ben,bing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-229"

    const-string v1, "yi,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-231"

    const-string v1, "jian,zun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-235"

    const-string v1, "you,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-241"

    const-string v1, "zhi,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-245"

    const-string v1, "yi,ti"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-252"

    const-string v1, "yu,mou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-253"

    const-string v1, "za,zan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "150-254"

    const-string v1, "kB sei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap151()V
    .locals 2

    const-string v0, "151-70"

    const-string v1, "chen,zhen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-72"

    const-string v1, "ting,ying"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-76"

    const-string v1, "ben,fan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-86"

    const-string v1, "su,yin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-93"

    const-string v1, "xuan,juan,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-94"

    const-string v1, "tu,cha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-96"

    const-string v1, "ao,you"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-101"

    const-string v1, "ren,er"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-116"

    const-string v1, "si,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-123"

    const-string v1, "chan,yan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-128"

    const-string v1, "bin,bing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-131"

    const-string v1, "chou,tao,dao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-140"

    const-string v1, "cong,song"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-145"

    const-string v1, "de,zhe"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-147"

    const-string v1, "pai,bei,pei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-148"

    const-string v1, "bang,pou,bei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-152"

    const-string v1, "li,lie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-168"

    const-string v1, "quan,juan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-170"

    const-string v1, "ren,shen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-173"

    const-string v1, "fu,su"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-175"

    const-string v1, "zou,sou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-184"

    const-string v1, "jie,qie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-185"

    const-string v1, "chou,zhou,diao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-188"

    const-string v1, "cheng,sheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-189"

    const-string v1, "zu,cui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-190"

    const-string v1, "qiang,kong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-209"

    const-string v1, "quan,juan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-210"

    const-string v1, "mi eng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-217"

    const-string v1, "duo,chuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-219"

    const-string v1, "wei,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-223"

    const-string v1, "jian,han"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-226"

    const-string v1, "yan,ya"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-235"

    const-string v1, "guo,kua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-249"

    const-string v1, "ji,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "151-252"

    const-string v1, "ku,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap152()V
    .locals 2

    const-string v0, "152-66"

    const-string v1, "song,cong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-67"

    const-string v1, "xuan,yuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-68"

    const-string v1, "yang,ying"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-71"

    const-string v1, "die,ye"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-74"

    const-string v1, "shun,dun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-78"

    const-string v1, "di,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-83"

    const-string v1, "le,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-88"

    const-string v1, "wen,yun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-91"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-94"

    const-string v1, "zhan,nian,zhen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-95"

    const-string v1, "fu,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-99"

    const-string v1, "jian,jin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-102"

    const-string v1, "sha,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-141"

    const-string v1, "qian,lian,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-149"

    const-string v1, "dian,zhen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-155"

    const-string v1, "xi,die"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-156"

    const-string v1, "ji,gui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-159"

    const-string v1, "rong,yong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-164"

    const-string v1, "tuan,shuan,quan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-167"

    const-string v1, "cui,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-169"

    const-string v1, "you,chao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-180"

    const-string v1, "man,wan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-183"

    const-string v1, "le,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-186"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-187"

    const-string v1, "li,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-200"

    const-string v1, "chao,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-205"

    const-string v1, "jiu,liao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-210"

    const-string v1, "niao,mu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-215"

    const-string v1, "sha,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-236"

    const-string v1, "fa,fei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-239"

    const-string v1, "rao,nao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-246"

    const-string v1, "zhan,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-250"

    const-string v1, "tui,dun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-252"

    const-string v1, "tang,cheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "152-254"

    const-string v1, "su,qiu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap153()V
    .locals 2

    const-string v0, "153-65"

    const-string v1, "tan,dian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-72"

    const-string v1, "tong,chuang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-73"

    const-string v1, "zeng,ceng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-74"

    const-string v1, "fen,fei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-76"

    const-string v1, "ran,yan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-91"

    const-string v1, "cu,chu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-93"

    const-string v1, "shu,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-113"

    const-string v1, "ping,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-117"

    const-string v1, "gui,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-121"

    const-string v1, "zhai,shi,tu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-132"

    const-string v1, "chou,tao,dao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-137"

    const-string v1, "bin,bing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-140"

    const-string v1, "qian,lian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-141"

    const-string v1, "ni,mi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-145"

    const-string v1, "jian,kan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-147"

    const-string v1, "nou,ruan,ru"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-164"

    const-string v1, "huang,guo,gu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-172"

    const-string v1, "lv,chu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-173"

    const-string v1, "mie,mei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-181"

    const-string v1, "li,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-183"

    const-string v1, "zhuo,zhu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-195"

    const-string v1, "jue,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-198"

    const-string v1, "huai,gui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-202"

    const-string v1, "la,lai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-217"

    const-string v1, "chan,zhan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-222"

    const-string v1, "wei,zui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-246"

    const-string v1, "yu,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-247"

    const-string v1, "qian,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-250"

    const-string v1, "chu,qu,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-252"

    const-string v1, "ke,ai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "153-253"

    const-string v1, "yi,yin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap154()V
    .locals 2

    const-string v0, "154-64"

    const-string v1, "xi,kai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-70"

    const-string v1, "shuo,sou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-71"

    const-string v1, "ei,ai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-72"

    const-string v1, "xu,chua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-73"

    const-string v1, "chi,chuai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-75"

    const-string v1, "kan,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-77"

    const-string v1, "kan,ke"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-80"

    const-string v1, "yan,yin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-86"

    const-string v1, "jin,qun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-97"

    const-string v1, "lian,han"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-108"

    const-string v1, "zhi,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-111"

    const-string v1, "se,sha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-122"

    const-string v1, "mo,wen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-132"

    const-string v1, "qing,jing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-134"

    const-string v1, "fou,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-135"

    const-string v1, "ye,yan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-137"

    const-string v1, "hun,mei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-149"

    const-string v1, "kui,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-160"

    const-string v1, "qing,keng,sheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-163"

    const-string v1, "ke,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-164"

    const-string v1, "ke,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-165"

    const-string v1, "xiao,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-175"

    const-string v1, "guan,wan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-195"

    const-string v1, "dou,nuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-203"

    const-string v1, "sai,sui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-222"

    const-string v1, "yang,ri"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-233"

    const-string v1, "zheng,cheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-240"

    const-string v1, "gui,jiu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-241"

    const-string v1, "bin,pa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "154-245"

    const-string v1, "zhuo,que"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap155()V
    .locals 2

    const-string v0, "155-68"

    const-string v1, "zhi,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-78"

    const-string v1, "gan,han,cen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-80"

    const-string v1, "fang,pang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-82"

    const-string v1, "hu,huang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-83"

    const-string v1, "niu,you"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-92"

    const-string v1, "nv,niu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-93"

    const-string v1, "mei,mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-94"

    const-string v1, "mi,wu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-96"

    const-string v1, "hong,pang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-100"

    const-string v1, "zhui,zi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-107"

    const-string v1, "tuo,duo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-109"

    const-string v1, "mi,li"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-110"

    const-string v1, "yi,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-117"

    const-string v1, "yi,die"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-123"

    const-string v1, "chu,she"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-124"

    const-string v1, "you,ao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-128"

    const-string v1, "peng,ping"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-135"

    const-string v1, "yue,sa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-137"

    const-string v1, "jue,xue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-155"

    const-string v1, "se,qi,zi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-161"

    const-string v1, "an,yan,e"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-171"

    const-string v1, "su,shuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-173"

    const-string v1, "qie,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-193"

    const-string v1, "you,di"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-198"

    const-string v1, "ying,cheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-205"

    const-string v1, "feng,hong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-212"

    const-string v1, "sui,nei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-226"

    const-string v1, "tun,yun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-236"

    const-string v1, "shou,tao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-239"

    const-string v1, "kong,nang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-240"

    const-string v1, "wan,wo,yuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-249"

    const-string v1, "qie,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "155-253"

    const-string v1, "guo,guan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap156()V
    .locals 2

    const-string v0, "156-75"

    const-string v1, "ping,peng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-77"

    const-string v1, "yu,xu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-81"

    const-string v1, "jing,cheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-86"

    const-string v1, "nian,shen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-87"

    const-string v1, "biao,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-98"

    const-string v1, "wen,min"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-99"

    const-string v1, "ruo,re,luo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-114"

    const-string v1, "qiu,wu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-117"

    const-string v1, "wo,guo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-118"

    const-string v1, "ti,di"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-130"

    const-string v1, "hong,qing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-147"

    const-string v1, "hui,min,xu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-161"

    const-string v1, "min,hun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-168"

    const-string v1, "tuan,nuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-169"

    const-string v1, "qiu,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-171"

    const-string v1, "tang,shang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-176"

    const-string v1, "ban,pan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-179"

    const-string v1, "zhuang,hun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-189"

    const-string v1, "feng,hong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-196"

    const-string v1, "yan,gui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-199"

    const-string v1, "lian,nian,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-205"

    const-string v1, "da,ta"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-228"

    const-string v1, "chu,xu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-233"

    const-string v1, "hao,xue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-235"

    const-string v1, "qi,xi,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-238"

    const-string v1, "xing,ying"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "156-245"

    const-string v1, "ze,hao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap157()V
    .locals 2

    const-string v0, "157-71"

    const-string v1, "hu,xu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-89"

    const-string v1, "cong,song"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-96"

    const-string v1, "tuan,zhuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-109"

    const-string v1, "feng,peng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-112"

    const-string v1, "ben,peng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-114"

    const-string v1, "chong,zhuang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-116"

    const-string v1, "huo,kuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-120"

    const-string v1, "liao,liu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-124"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-131"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-135"

    const-string v1, "pi,pie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-137"

    const-string v1, "jiao,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-139"

    const-string v1, "dang,xiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-148"

    const-string v1, "xi,ya"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-156"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-160"

    const-string v1, "tan,shan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-162"

    const-string v1, "kui,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-164"

    const-string v1, "tu,zha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-165"

    const-string v1, "san,sa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-185"

    const-string v1, "hong,gong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-198"

    const-string v1, "mian,sheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-201"

    const-string v1, "ze,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-207"

    const-string v1, "wan,man"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-210"

    const-string v1, "kuai,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-227"

    const-string v1, "guo,wo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-229"

    const-string v1, "fen,pen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-231"

    const-string v1, "ji,sha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-232"

    const-string v1, "hui,huo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-236"

    const-string v1, "ding,ting"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-240"

    const-string v1, "mi,ni"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "157-251"

    const-string v1, "cui,zui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap158()V
    .locals 2

    const-string v0, "158-67"

    const-string v1, "huo,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-70"

    const-string v1, "jun,xun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-71"

    const-string v1, "ai,kai,ke"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-83"

    const-string v1, "wei,dui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-84"

    const-string v1, "luo,po"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-85"

    const-string v1, "zan,cuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-94"

    const-string v1, "du,dou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-102"

    const-string v1, "mie,mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-106"

    const-string v1, "cheng,deng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-119"

    const-string v1, "wei,dui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-120"

    const-string v1, "huai,wai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-123"

    const-string v1, "long,shuang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-136"

    const-string v1, "jian,zun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-143"

    const-string v1, "rang,nang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-149"

    const-string v1, "zhuo,jiao,ze"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-163"

    const-string v1, "zan,cuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-170"

    const-string v1, "dang,tang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-181"

    const-string v1, "xun,quan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-193"

    const-string v1, "zha,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-199"

    const-string v1, "fen,ben"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-208"

    const-string v1, "pang,feng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-227"

    const-string v1, "zhuo,chu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-228"

    const-string v1, "pao,fou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-232"

    const-string v1, "shan,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-236"

    const-string v1, "jiao,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "158-250"

    const-string v1, "tong,dong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap159()V
    .locals 2

    const-string v0, "159-74"

    const-string v1, "fu,pao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-76"

    const-string v1, "xie,che"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-91"

    const-string v1, "xun,hun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-93"

    const-string v1, "juan,ye"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-97"

    const-string v1, "qu,jun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-99"

    const-string v1, "xie,che"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-100"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-113"

    const-string v1, "chao,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-115"

    const-string v1, "wo,ai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-116"

    const-string v1, "zong,cong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-121"

    const-string v1, "xi,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-130"

    const-string v1, "xiong,ying"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-135"

    const-string v1, "xiong,ying"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-144"

    const-string v1, "hui,yun,xun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-154"

    const-string v1, "shan,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-155"

    const-string v1, "xi,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-164"

    const-string v1, "ye,zha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-184"

    const-string v1, "en,yun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-192"

    const-string v1, "he,xiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-208"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-209"

    const-string v1, "lu,ao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-212"

    const-string v1, "peng,feng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-213"

    const-string v1, "sui,cui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-223"

    const-string v1, "han,ran"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-237"

    const-string v1, "chan,dan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-247"

    const-string v1, "jiao,qiao,jue,zhuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "159-252"

    const-string v1, "tong,dong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap160()V
    .locals 2

    const-string v0, "160-77"

    const-string v1, "tai,lie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-104"

    const-string v1, "rong,ying"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-105"

    const-string v1, "li,lie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-109"

    const-string v1, "la,lie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-112"

    const-string v1, "kuang,huang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-119"

    const-string v1, "yan,xun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-141"

    const-string v1, "zhao,zhua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-144"

    const-string v1, "cheng,chen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-164"

    const-string v1, "bian,mian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-168"

    const-string v1, "you,yong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-172"

    const-string v1, "jiu,le"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-179"

    const-string v1, "ge,qiu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-182"

    const-string v1, "you,chou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-195"

    const-string v1, "zhi,te"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-211"

    const-string v1, "mao,li"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-227"

    const-string v1, "quan,ba"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-230"

    const-string v1, "zhuo,bao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-232"

    const-string v1, "kang,gang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-233"

    const-string v1, "pei,fei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-237"

    const-string v1, "huan,fan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-244"

    const-string v1, "yi,quan,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-245"

    const-string v1, "sheng,xing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "160-246"

    const-string v1, "tuo,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap170()V
    .locals 2

    const-string v0, "170-72"

    const-string v1, "ta,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "170-73"

    const-string v1, "tong,dong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "170-75"

    const-string v1, "mang,dou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "170-76"

    const-string v1, "xi,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "170-87"

    const-string v1, "bai,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "170-92"

    const-string v1, "jian,yan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "170-99"

    const-string v1, "ya,wei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "170-109"

    const-string v1, "ya,jia,qie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "170-110"

    const-string v1, "xie,he,ge,hai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "170-112"

    const-string v1, "bian,pian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "170-116"

    const-string v1, "bo,po"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "170-130"

    const-string v1, "hao,gao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "170-146"

    const-string v1, "yao,xiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "170-147"

    const-string v1, "shuo,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "170-152"

    const-string v1, "ge,lie,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "170-160"

    const-string v1, "bian,pian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap171()V
    .locals 2

    const-string v0, "171-65"

    const-string v1, "nou,ru"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "171-68"

    const-string v1, "nao,you"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "171-76"

    const-string v1, "nao,you"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "171-96"

    const-string v1, "chang,yang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "171-106"

    const-string v1, "men,yun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "171-108"

    const-string v1, "jian,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "171-111"

    const-string v1, "qiang,cang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "171-113"

    const-string v1, "an,gan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "171-116"

    const-string v1, "xuan,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "171-125"

    const-string v1, "yi,tai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "171-126"

    const-string v1, "zu,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "171-144"

    const-string v1, "yin,ken"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "171-159"

    const-string v1, "di,ti"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap172()V
    .locals 2

    const-string v0, "172-73"

    const-string v1, "xuan,qiong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "172-86"

    const-string v1, "pin,bing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "172-88"

    const-string v1, "cui,se"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "172-94"

    const-string v1, "wei,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "172-97"

    const-string v1, "beng,pei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "172-113"

    const-string v1, "hun,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "172-128"

    const-string v1, "xie,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "172-132"

    const-string v1, "chang,yang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "172-153"

    const-string v1, "tian,zhen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "172-154"

    const-string v1, "qiang,cang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "172-158"

    const-string v1, "bin,pian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "172-159"

    const-string v1, "tu,shu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap173()V
    .locals 2

    const-string v0, "173-70"

    const-string v1, "zao,suo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "173-87"

    const-string v1, "qiong,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "173-103"

    const-string v1, "hui,kuai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "173-111"

    const-string v1, "lu,fu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "173-112"

    const-string v1, "bin,pian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "173-117"

    const-string v1, "ji,zi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "173-140"

    const-string v1, "mi,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "173-142"

    const-string v1, "qiong,wei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "173-146"

    const-string v1, "huan,ye,ya"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "173-148"

    const-string v1, "bo,pao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "173-149"

    const-string v1, "zhi,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "173-152"

    const-string v1, "xiang,hong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "173-160"

    const-string v1, "ki ro ton,mao wa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap174()V
    .locals 2

    const-string v0, "174-107"

    const-string v1, "ting,ding"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "174-110"

    const-string v1, "bi,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "174-119"

    const-string v1, "fu,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "174-125"

    const-string v1, "da,fu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "174-130"

    const-string v1, "ce,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "174-131"

    const-string v1, "zai,zi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "174-135"

    const-string v1, "zhi,chou,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "174-137"

    const-string v1, "fan,pan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "174-140"

    const-string v1, "she,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap175()V
    .locals 2

    const-string v0, "175-67"

    const-string v1, "jie,qie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-70"

    const-string v1, "zhi,di"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-78"

    const-string v1, "jue,xue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-80"

    const-string v1, "ya,xia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-86"

    const-string v1, "fa,bian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-90"

    const-string v1, "shan,dian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-92"

    const-string v1, "teng,chong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-95"

    const-string v1, "wei,you,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-97"

    const-string v1, "tan,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-110"

    const-string v1, "beng,peng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-114"

    const-string v1, "ma,lin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-116"

    const-string v1, "tian,dian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-117"

    const-string v1, "an,ye,e"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-122"

    const-string v1, "ke,e"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-128"

    const-string v1, "zhi,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-144"

    const-string v1, "hui,lei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-145"

    const-string v1, "n<e,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-146"

    const-string v1, "dian,chen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "175-160"

    const-string v1, "qiao,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap176()V
    .locals 2

    const-string v0, "176-73"

    const-string v1, "gui,wei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-79"

    const-string v1, "li,lai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-110"

    const-string v1, "ji,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-113"

    const-string v1, "pa,ba"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-119"

    const-string v1, "gao,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-141"

    const-string v1, "li,luo,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-154"

    const-string v1, "zha,cu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-156"

    const-string v1, "zhao,zhan,dan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-162"

    const-string v1, "a,e"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-188"

    const-string v1, "ao,wa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-194"

    const-string v1, "ao,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-199"

    const-string v1, "ba,pa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-210"

    const-string v1, "ba,pa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-213"

    const-string v1, "ba,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-216"

    const-string v1, "bai,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-232"

    const-string v1, "ban,pan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-245"

    const-string v1, "bang,pang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-246"

    const-string v1, "bang,beng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "176-254"

    const-string v1, "bao,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap177()V
    .locals 2

    const-string v0, "177-84"

    const-string v1, "zhou,chou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-90"

    const-string v1, "mang,wang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-93"

    const-string v1, "xian,tian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-95"

    const-string v1, "xi,pan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-100"

    const-string v1, "yun,hun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-106"

    const-string v1, "yang,ying"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-108"

    const-string v1, "yao,ao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-114"

    const-string v1, "ju,xu,kou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-117"

    const-string v1, "mo,mie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-121"

    const-string v1, "die,ti"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-125"

    const-string v1, "bing,fang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-126"

    const-string v1, "pang,pan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-130"

    const-string v1, "die,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-134"

    const-string v1, "xuan,shun,xun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-141"

    const-string v1, "qiao,shao,xiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-145"

    const-string v1, "cuo,zhuai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-161"

    const-string v1, "bao,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-164"

    const-string v1, "bao,bu,pu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-169"

    const-string v1, "bao,pu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-187"

    const-string v1, "bei,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-217"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-219"

    const-string v1, "bi,bei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-226"

    const-string v1, "bian,pian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "177-227"

    const-string v1, "bian,pian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap178()V
    .locals 2

    const-string v0, "178-66"

    const-string v1, "sui,zui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-71"

    const-string v1, "yi,ze,gao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-90"

    const-string v1, "gui,wei,kui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-93"

    const-string v1, "kou,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-96"

    const-string v1, "qiong,huan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-102"

    const-string v1, "diao,dou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-107"

    const-string v1, "lou,lv"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-109"

    const-string v1, "man,men"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-112"

    const-string v1, "run,shun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-118"

    const-string v1, "xian,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-121"

    const-string v1, "wu,mi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-122"

    const-string v1, "gui,kui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-133"

    const-string v1, "ning,cheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-136"

    const-string v1, "huo,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-142"

    const-string v1, "kuang,guo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-149"

    const-string v1, "guan,quan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-155"

    const-string v1, "jin,qin,guan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-156"

    const-string v1, "yu,xu,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-170"

    const-string v1, "bo,bei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-174"

    const-string v1, "bo,bai,ba"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-180"

    const-string v1, "bo,po"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-183"

    const-string v1, "bu,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-187"

    const-string v1, "bu,fou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-190"

    const-string v1, "bu,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-206"

    const-string v1, "can,shen,cen,san"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-216"

    const-string v1, "cang,zang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-224"

    const-string v1, "ce,ze,zhai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-233"

    const-string v1, "cha,zha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-238"

    const-string v1, "cha,chai,ci"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-240"

    const-string v1, "chai,ca"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-244"

    const-string v1, "chan,xian,can,shan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "178-252"

    const-string v1, "chan,zhan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap179()V
    .locals 2

    const-string v0, "179-77"

    const-string v1, "gang,qiang,kong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-87"

    const-string v1, "pin,bin,fen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-96"

    const-string v1, "ke,luo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-113"

    const-string v1, "kuang,guang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-117"

    const-string v1, "wei,gui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-119"

    const-string v1, "ken,xian,gun,yin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-121"

    const-string v1, "peng,ping"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-125"

    const-string v1, "wei,ai,gai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-130"

    const-string v1, "que,ke,ku"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-137"

    const-string v1, "mang,bang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-138"

    const-string v1, "luo,long"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-139"

    const-string v1, "yong,tong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-155"

    const-string v1, "zhui,chui,duo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-159"

    const-string v1, "zong,cong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-164"

    const-string v1, "chang,zhang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-167"

    const-string v1, "chang,an,han"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-175"

    const-string v1, "zhao,chao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-176"

    const-string v1, "chao,zhao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-181"

    const-string v1, "che,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-198"

    const-string v1, "cheng,chen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-203"

    const-string v1, "cheng,sheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-206"

    const-string v1, "cheng,deng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-215"

    const-string v1, "chi,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-223"

    const-string v1, "chi,che"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-240"

    const-string v1, "chou,qiu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "179-244"

    const-string v1, "chou,xiu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap180()V
    .locals 2

    const-string v0, "180-68"

    const-string v1, "jian,zhan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-70"

    const-string v1, "que,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-76"

    const-string v1, "nao,gang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-84"

    const-string v1, "shuo,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-89"

    const-string v1, "ti,di"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-96"

    const-string v1, "que,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-99"

    const-string v1, "su,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-102"

    const-string v1, "si,ti"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-104"

    const-string v1, "hua,ke,gu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-106"

    const-string v1, "kui,wei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-108"

    const-string v1, "xia,qia,ya"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-110"

    const-string v1, "lian,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-111"

    const-string v1, "wei,ai,gai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-120"

    const-string v1, "ao,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-132"

    const-string v1, "qi,zhu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-139"

    const-string v1, "lao,luo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-145"

    const-string v1, "pan,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-146"

    const-string v1, "ji,she"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-157"

    const-string v1, "he,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-158"

    const-string v1, "ke,huo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-167"

    const-string v1, "chuai,tuan,zhui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-171"

    const-string v1, "chuan,zhuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-177"

    const-string v1, "chuang,zhuang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-190"

    const-string v1, "chun,zhun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-194"

    const-string v1, "chuo,chao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-211"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-233"

    const-string v1, "cuo,zuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-241"

    const-string v1, "da,dB"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "180-243"

    const-string v1, "da,dai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap181()V
    .locals 2

    const-string v0, "181-67"

    const-string v1, "que,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-74"

    const-string v1, "e,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-85"

    const-string v1, "xian,xin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-111"

    const-string v1, "zhi,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-112"

    const-string v1, "beng,fang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-122"

    const-string v1, "mi,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-136"

    const-string v1, "shui,lei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-150"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-153"

    const-string v1, "you,chao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-165"

    const-string v1, "dan,shan,chan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-167"

    const-string v1, "dan,shan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-172"

    const-string v1, "dan,da"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-175"

    const-string v1, "dan,tan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-195"

    const-string v1, "de,dei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-196"

    const-string v1, "di,de"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-212"

    const-string v1, "di,zhai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-215"

    const-string v1, "di,de"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-216"

    const-string v1, "di,de"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-220"

    const-string v1, "di,ti,tui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-232"

    const-string v1, "dian,tian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-233"

    const-string v1, "dian,tian,sheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "181-247"

    const-string v1, "tiao,diao,zhou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap182()V
    .locals 2

    const-string v0, "182-64"

    const-string v1, "shang,yang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-65"

    const-string v1, "ti,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-85"

    const-string v1, "shan,chan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-103"

    const-string v1, "cha,na"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-104"

    const-string v1, "yi,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-109"

    const-string v1, "hao,mao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-129"

    const-string v1, "huo,kuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-131"

    const-string v1, "shi,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-132"

    const-string v1, "huo,kuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-141"

    const-string v1, "fu,pu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-143"

    const-string v1, "xun,ze"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-149"

    const-string v1, "tu,shu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-157"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-160"

    const-string v1, "leng,ling"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-161"

    const-string v1, "ding,zheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-177"

    const-string v1, "dong,tong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-188"

    const-string v1, "du,dou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-190"

    const-string v1, "du,dai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-193"

    const-string v1, "du,dou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-200"

    const-string v1, "du,duo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-210"

    const-string v1, "dui,rui,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-216"

    const-string v1, "dun,dui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-218"

    const-string v1, "dun,tun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-233"

    const-string v1, "duo,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-234"

    const-string v1, "e,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "182-241"

    const-string v1, "e,wu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap183()V
    .locals 2

    const-string v0, "183-66"

    const-string v1, "zui,zu,su"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-71"

    const-string v1, "xi,qie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-75"

    const-string v1, "pi,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-81"

    const-string v1, "cheng,chen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-83"

    const-string v1, "xian,jian,lian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-84"

    const-string v1, "zi,jiu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-95"

    const-string v1, "can,shan,cen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-96"

    const-string v1, "men,mei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-110"

    const-string v1, "xiao,rao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-113"

    const-string v1, "zhuo,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-114"

    const-string v1, "tong,zhong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-129"

    const-string v1, "cheng,chen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-133"

    const-string v1, "biao,pao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-135"

    const-string v1, "zhuo,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-137"

    const-string v1, "cuan,zan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-148"

    const-string v1, "zhu,ku"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-149"

    const-string v1, "jiao,liao,liu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-152"

    const-string v1, "wa,gui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-172"

    const-string v1, "fan,pan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-177"

    const-string v1, "fan,po"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-221"

    const-string v1, "fen,bin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-235"

    const-string v1, "feng,ping"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-240"

    const-string v1, "fo,fu,bi,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-241"

    const-string v1, "fou,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "183-247"

    const-string v1, "fu,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap184()V
    .locals 2

    const-string v0, "184-69"

    const-string v1, "ya,ye"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-75"

    const-string v1, "tian,dian,yan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-83"

    const-string v1, "chao,ke"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-84"

    const-string v1, "kuan,cuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-85"

    const-string v1, "kuan,cuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-101"

    const-string v1, "chu,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-108"

    const-string v1, "qu,kou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-116"

    const-string v1, "jing,zhen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-125"

    const-string v1, "ceng,zeng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-133"

    const-string v1, "le,jin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-143"

    const-string v1, "zhui,rui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-146"

    const-string v1, "cen,jin,han"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-147"

    const-string v1, "pi,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-151"

    const-string v1, "da,xia,na"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-177"

    const-string v1, "fu,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-199"

    const-string v1, "gai,ge,he"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-219"

    const-string v1, "gang,jiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-222"

    const-string v1, "gao,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-237"

    const-string v1, "ge,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-239"

    const-string v1, "ge,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-242"

    const-string v1, "ge,ha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "184-248"

    const-string v1, "gei,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap185()V
    .locals 2

    const-string v0, "185-65"

    const-string v1, "fu,fei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "185-114"

    const-string v1, "pou,bu,fu,pu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "185-117"

    const-string v1, "pai,bei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "185-120"

    const-string v1, "tai,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "185-121"

    const-string v1, "guai,dai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "185-124"

    const-string v1, "zhao,dao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "185-132"

    const-string v1, "jun,qun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "185-149"

    const-string v1, "shi,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "185-150"

    const-string v1, "yue,yao,chuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "185-155"

    const-string v1, "shuo,xiao,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "185-227"

    const-string v1, "guang,an"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "185-234"

    const-string v1, "gui,jun,qiu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "185-241"

    const-string v1, "gui,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "185-247"

    const-string v1, "gun,hun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap186()V
    .locals 2

    const-string v0, "186-84"

    const-string v1, "gong,gan,long"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-85"

    const-string v1, "peng,pang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-87"

    const-string v1, "zhuo,huo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-91"

    const-string v1, "qiang,cang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-97"

    const-string v1, "zhu,di"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-100"

    const-string v1, "cen,zan,can"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-101"

    const-string v1, "zhuan,zuan,suan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-103"

    const-string v1, "piao,biao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-105"

    const-string v1, "tuan,zhuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-108"

    const-string v1, "guo,gui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-117"

    const-string v1, "ce,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-128"

    const-string v1, "mi,mie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-129"

    const-string v1, "shai,si"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-139"

    const-string v1, "sun,zhuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-187"

    const-string v1, "hang,ben"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-199"

    const-string v1, "he,a,ke"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-200"

    const-string v1, "he,ye"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-203"

    const-string v1, "he,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-205"

    const-string v1, "he,huo,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-207"

    const-string v1, "he,ge"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-209"

    const-string v1, "he,hao,mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-217"

    const-string v1, "hei,mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-223"

    const-string v1, "heng,hng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-224"

    const-string v1, "heng,peng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "186-236"

    const-string v1, "hong,gong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap187()V
    .locals 2

    const-string v0, "187-69"

    const-string v1, "zhen,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "187-79"

    const-string v1, "fan,pan,bian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "187-80"

    const-string v1, "sou,shu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "187-93"

    const-string v1, "shen shi,sen si,qie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "187-125"

    const-string v1, "sha,chao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "187-126"

    const-string v1, "kang,jing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "187-144"

    const-string v1, "ce,se"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "187-163"

    const-string v1, "hu,xia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "187-181"

    const-string v1, "huai,pei,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "187-185"

    const-string v1, "huan,hai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "187-225"

    const-string v1, "hui,kuai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "187-252"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap188()V
    .locals 2

    const-string v0, "188-77"

    const-string v1, "gu,gou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-82"

    const-string v1, "san,shen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-86"

    const-string v1, "san,shen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-115"

    const-string v1, "yue,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-116"

    const-string v1, "hong,gong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-118"

    const-string v1, "he,ge"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-129"

    const-string v1, "ji,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-146"

    const-string v1, "zha,za"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-153"

    const-string v1, "zha,za"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-158"

    const-string v1, "bo,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-169"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-191"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-192"

    const-string v1, "ji,zhai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-208"

    const-string v1, "jia,ga,xia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-210"

    const-string v1, "jia,jiB"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-214"

    const-string v1, "jia,gu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-219"

    const-string v1, "jia,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-247"

    const-string v1, "jian,kan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "188-251"

    const-string v1, "jian,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap189()V
    .locals 2

    const-string v0, "189-71"

    const-string v1, "zhen,tian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-92"

    const-string v1, "gua,kua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-93"

    const-string v1, "bai,mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-98"

    const-string v1, "huan,geng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-101"

    const-string v1, "xie,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-104"

    const-string v1, "quan,shuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-105"

    const-string v1, "gai,ai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-106"

    const-string v1, "luo,lao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-108"

    const-string v1, "beng,bing,peng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-111"

    const-string v1, "gei,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-112"

    const-string v1, "tong,dong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-114"

    const-string v1, "tiao,diao,dao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-119"

    const-string v1, "gai,hai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-130"

    const-string v1, "chi,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-131"

    const-string v1, "mian,wen,man,wan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-140"

    const-string v1, "huan,wan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-141"

    const-string v1, "qin,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-158"

    const-string v1, "yan,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-174"

    const-string v1, "jiang,qiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-192"

    const-string v1, "jiao,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-196"

    const-string v1, "jiao,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-199"

    const-string v1, "jiao,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-201"

    const-string v1, "jiao,zhuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-203"

    const-string v1, "jiao,chao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-210"

    const-string v1, "jie,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-219"

    const-string v1, "jie,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-226"

    const-string v1, "jie,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-229"

    const-string v1, "jie,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-230"

    const-string v1, "jie,gai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "189-367"

    const-string v1, "gei,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap190()V
    .locals 2

    const-string v0, "190-67"

    const-string v1, "zong,zeng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-68"

    const-string v1, "lin,chen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-70"

    const-string v1, "li,lie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-78"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-80"

    const-string v1, "qian,qing,zheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-93"

    const-string v1, "lun,guan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-98"

    const-string v1, "chuo,chao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-103"

    const-string v1, "tian,tan,chan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-118"

    const-string v1, "lv,lu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-131"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-133"

    const-string v1, "chong,zhong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-136"

    const-string v1, "miao,mao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-138"

    const-string v1, "xie,ye"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-150"

    const-string v1, "tou,xu,shu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-156"

    const-string v1, "bian,pian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-157"

    const-string v1, "gun,yun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-160"

    const-string v1, "gua,wo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-162"

    const-string v1, "jin,jing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-176"

    const-string v1, "jing,ying"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-177"

    const-string v1, "jing,geng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-187"

    const-string v1, "jing,cheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-208"

    const-string v1, "ju,gou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-215"

    const-string v1, "ju,zui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-228"

    const-string v1, "ju,gou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "190-245"

    const-string v1, "jue,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap191()V
    .locals 2

    const-string v0, "191-65"

    const-string v1, "yun,wen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-87"

    const-string v1, "ci,cuo,suo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-90"

    const-string v1, "yun,wen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-92"

    const-string v1, "cui,sui,shuai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-102"

    const-string v1, "zai,zeng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-104"

    const-string v1, "xian,xuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-115"

    const-string v1, "suo,su"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-116"

    const-string v1, "yan,yin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-120"

    const-string v1, "zhuan,juan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-125"

    const-string v1, "mu,mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-138"

    const-string v1, "mou,miu,miao,mu,liao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-155"

    const-string v1, "ju,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-163"

    const-string v1, "jun,xun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-167"

    const-string v1, "ka,ga"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-168"

    const-string v1, "qia,ka"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-169"

    const-string v1, "ka,luo,lo,ge"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-172"

    const-string v1, "kai,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-184"

    const-string v1, "kang,gang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-193"

    const-string v1, "ke,he"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-199"

    const-string v1, "ke,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-200"

    const-string v1, "ke,hai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-212"

    const-string v1, "hang,keng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-230"

    const-string v1, "kua,ku"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "191-254"

    const-string v1, "kui,gui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap192()V
    .locals 2

    const-string v0, "192-77"

    const-string v1, "xi,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-82"

    const-string v1, "qiao,sao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-85"

    const-string v1, "jiao,zhuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-87"

    const-string v1, "dan,tan,chan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-98"

    const-string v1, "pu,fu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-102"

    const-string v1, "yao,li"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-118"

    const-string v1, "xiang,rang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-123"

    const-string v1, "li,xi,sa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-136"

    const-string v1, "yun,wen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-138"

    const-string v1, "cui,sui,shuai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-163"

    const-string v1, "kui,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-168"

    const-string v1, "kuo,gua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-178"

    const-string v1, "lB,la"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-209"

    const-string v1, "mu,lao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-211"

    const-string v1, "lao,luo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-213"

    const-string v1, "le,lei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-214"

    const-string v1, "le,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-223"

    const-string v1, "lei,le"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192-226"

    const-string v1, "leng,ling"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap193()V
    .locals 2

    const-string v0, "193-76"

    const-string v1, "guai,gua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "193-84"

    const-string v1, "ba,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "193-102"

    const-string v1, "yang,xiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "193-111"

    const-string v1, "mei,gao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "193-112"

    const-string v1, "yi,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "193-122"

    const-string v1, "qiang,kong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "193-123"

    const-string v1, "qian,xian,yan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "193-135"

    const-string v1, "hong,gong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "193-145"

    const-string v1, "pi,bi,po"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "193-148"

    const-string v1, "qu,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "193-159"

    const-string v1, "dao,zhou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "193-165"

    const-string v1, "li,dai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "193-169"

    const-string v1, "liang,lia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "193-202"

    const-string v1, "lao,liao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "193-203"

    const-string v1, "liao,le"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "193-249"

    const-string v1, "liu,lu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap194()V
    .locals 2

    const-string v0, "194-74"

    const-string v1, "hou,qu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-88"

    const-string v1, "ruan,nuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-89"

    const-string v1, "er,nai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-90"

    const-string v1, "duan,zhuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-93"

    const-string v1, "si,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-94"

    const-string v1, "qu,chu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-99"

    const-string v1, "ji,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-100"

    const-string v1, "zha,ze"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-109"

    const-string v1, "yun,ying"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-118"

    const-string v1, "wa,tui,zhuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-120"

    const-string v1, "er,nv"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-122"

    const-string v1, "tie,zhe"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-130"

    const-string v1, "di,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-158"

    const-string v1, "ni,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-181"

    const-string v1, "lu,liu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-202"

    const-string v1, "shuai,lv"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-204"

    const-string v1, "lv,lu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-218"

    const-string v1, "lun,guan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-228"

    const-string v1, "luo,la,lao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-231"

    const-string v1, "luo,lao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-240"

    const-string v1, "ma,mB"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-241"

    const-string v1, "mai,man"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-247"

    const-string v1, "man,men"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "194-251"

    const-string v1, "man,wan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap195()V
    .locals 2

    const-string v0, "195-74"

    const-string v1, "bo,di"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-81"

    const-string v1, "qin,han"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-84"

    const-string v1, "pang,pan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-89"

    const-string v1, "pi,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-94"

    const-string v1, "fei,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-99"

    const-string v1, "zi,fei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-100"

    const-string v1, "fei,ku"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-103"

    const-string v1, "ping,peng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-105"

    const-string v1, "fu,zhou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-118"

    const-string v1, "gui,kui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-165"

    const-string v1, "meng,mang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-176"

    const-string v1, "mao,mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-180"

    const-string v1, "me,yao,mB"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-187"

    const-string v1, "mei,mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-211"

    const-string v1, "mi,mei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-216"

    const-string v1, "mi,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "195-218"

    const-string v1, "mi,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap196()V
    .locals 2

    const-string v0, "196-114"

    const-string v1, "lu,biao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-120"

    const-string v1, "zhuan,chuan,chun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-135"

    const-string v1, "fan,pan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-138"

    const-string v1, "hu,wu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-151"

    const-string v1, "la,ge"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-159"

    const-string v1, "wo,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-163"

    const-string v1, "mo,mu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-166"

    const-string v1, "mo,ma"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-168"

    const-string v1, "mo,ma"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-170"

    const-string v1, "mo,mu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-178"

    const-string v1, "mou,mu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-196"

    const-string v1, "na,nei,nB,ne"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-197"

    const-string v1, "na,ne"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-199"

    const-string v1, "na,nei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-200"

    const-string v1, "na,nuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-207"

    const-string v1, "nan,na"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-209"

    const-string v1, "nan,nuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-215"

    const-string v1, "nao,chuo,zhuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-218"

    const-string v1, "nei,na"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-220"

    const-string v1, "neng,nai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-231"

    const-string v1, "ni,niao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-237"

    const-string v1, "nian,nie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-242"

    const-string v1, "niao,sui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "196-254"

    const-string v1, "ning,zhu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap197()V
    .locals 2

    const-string v0, "197-77"

    const-string v1, "ni,luan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "197-79"

    const-string v1, "qian,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "197-81"

    const-string v1, "guang,jiong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "197-83"

    const-string v1, "guang,jiong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "197-88"

    const-string v1, "mian,bian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "197-92"

    const-string v1, "die,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "197-93"

    const-string v1, "zhi,jin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "197-154"

    const-string v1, "qiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "197-170"

    const-string v1, "nong,long"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "197-177"

    const-string v1, "n<e,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "197-212"

    const-string v1, "pang,bang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "197-214"

    const-string v1, "pang,pan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "197-217"

    const-string v1, "pao,bao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "197-218"

    const-string v1, "pao,bao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "197-237"

    const-string v1, "peng,bang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap198()V
    .locals 2

    const-string v0, "198-79"

    const-string v1, "chai,cha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-83"

    const-string v1, "hu,xia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-85"

    const-string v1, "hui,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-88"

    const-string v1, "tun,chun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-94"

    const-string v1, "xu,zhu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-95"

    const-string v1, "lun,hua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-103"

    const-string v1, "chan,yin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-108"

    const-string v1, "di,ti"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-114"

    const-string v1, "zhu,ning"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-116"

    const-string v1, "pa,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-122"

    const-string v1, "zuo,zha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-129"

    const-string v1, "sheng,rui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-181"

    const-string v1, "pin,bin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-187"

    const-string v1, "ping,peng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-193"

    const-string v1, "ping,bing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-200"

    const-string v1, "po,pai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-210"

    const-string v1, "pu,bu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-211"

    const-string v1, "piao,pu,po"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-216"

    const-string v1, "pu,bao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-217"

    const-string v1, "pu,bao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-218"

    const-string v1, "qi,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-220"

    const-string v1, "qi,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-228"

    const-string v1, "qi,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-230"

    const-string v1, "qi,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-241"

    const-string v1, "qi,kai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-245"

    const-string v1, "qi,qie,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "198-246"

    const-string v1, "qi,qie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap199()V
    .locals 2

    const-string v0, "199-108"

    const-string v1, "peng,feng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-120"

    const-string v1, "su,you"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-122"

    const-string v1, "shao,xiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-124"

    const-string v1, "wen,wan,mian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-136"

    const-string v1, "zou,chu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-140"

    const-string v1, "nie,ren"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-143"

    const-string v1, "zi,zai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-157"

    const-string v1, "jie,sha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-159"

    const-string v1, "qiao,zhao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-160"

    const-string v1, "tai,zhi,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-166"

    const-string v1, "qian,yan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-172"

    const-string v1, "qian,gan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-179"

    const-string v1, "qian,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-181"

    const-string v1, "qian,zan,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-182"

    const-string v1, "qian,kan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-191"

    const-string v1, "qiang,jiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-192"

    const-string v1, "qiang,cheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-202"

    const-string v1, "qiao,shao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-206"

    const-string v1, "qiao,xiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-209"

    const-string v1, "jia,qie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-210"

    const-string v1, "qie,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-215"

    const-string v1, "qin,qing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-247"

    const-string v1, "qu,cu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-248"

    const-string v1, "qu,ou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "199-254"

    const-string v1, "qu,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap200()V
    .locals 2

    const-string v0, "200-66"

    const-string v1, "qin,jin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "200-72"

    const-string v1, "lin,ma"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "200-164"

    const-string v1, "qu,cu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "200-166"

    const-string v1, "quan,juan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "200-175"

    const-string v1, "quan,xuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "200-184"

    const-string v1, "que,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "200-244"

    const-string v1, "ruo,re"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "200-247"

    const-string v1, "sa,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "200-250"

    const-string v1, "sai,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "200-251"

    const-string v1, "sai,se"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap201()V
    .locals 2

    const-string v0, "201-83"

    const-string v1, "ru,na"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-86"

    const-string v1, "yuan,huan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-91"

    const-string v1, "xu,shu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-119"

    const-string v1, "gai,ge,he"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-124"

    const-string v1, "yao,zhuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-137"

    const-string v1, "diao,tiao,di"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-146"

    const-string v1, "qiu,xu,fu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-155"

    const-string v1, "zi,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-175"

    const-string v1, "suo,sha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-178"

    const-string v1, "cha,sha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-188"

    const-string v1, "shan,sha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-209"

    const-string v1, "chang,shBng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-210"

    const-string v1, "shao,sao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-223"

    const-string v1, "she,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-227"

    const-string v1, "she,nie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-228"

    const-string v1, "she,ye,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "201-242"

    const-string v1, "shen,chen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap202()V
    .locals 2

    const-string v0, "202-161"

    const-string v1, "sheng,xing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "202-162"

    const-string v1, "sheng,cheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "202-175"

    const-string v1, "shi,dan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "202-176"

    const-string v1, "shi,she"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "202-178"

    const-string v1, "shi,shen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "202-179"

    const-string v1, "shi,si,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "202-182"

    const-string v1, "shi,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "202-207"

    const-string v1, "shi,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "202-244"

    const-string v1, "shu,zhu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "202-245"

    const-string v1, "shu,zhu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "202-253"

    const-string v1, "shu,shuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap203()V
    .locals 2

    const-string v0, "203-64"

    const-string v1, "xi,xiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-72"

    const-string v1, "wan,luan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-78"

    const-string v1, "qiang,se"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-87"

    const-string v1, "xian,lian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-94"

    const-string v1, "hao,kao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-101"

    const-string v1, "yuan,wei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-103"

    const-string v1, "chou,zhou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-104"

    const-string v1, "mai,wo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-114"

    const-string v1, "xiao,hao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-121"

    const-string v1, "diao,zhuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-142"

    const-string v1, "yao,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-145"

    const-string v1, "biao,pao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-160"

    const-string v1, "zhu,chu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-181"

    const-string v1, "shuo,shui,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-182"

    const-string v1, "shuo,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-188"

    const-string v1, "si,sai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-197"

    const-string v1, "si,ci"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-198"

    const-string v1, "si,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-222"

    const-string v1, "su,xiu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-229"

    const-string v1, "sui,duo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-239"

    const-string v1, "sun,xun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-245"

    const-string v1, "suo,su"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "203-253"

    const-string v1, "ta,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap204()V
    .locals 2

    const-string v0, "204-192"

    const-string v1, "tang,shang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "204-200"

    const-string v1, "tang,chang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "204-202"

    const-string v1, "tang,chang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "204-225"

    const-string v1, "ti,di"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "204-238"

    const-string v1, "tian,zhen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "204-248"

    const-string v1, "tiao,tao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap205()V
    .locals 2

    const-string v0, "205-75"

    const-string v1, "fang,bang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-86"

    const-string v1, "qi,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-87"

    const-string v1, "yuan,wan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-88"

    const-string v1, "jue,que"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-90"

    const-string v1, "qin,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-102"

    const-string v1, "dai,de"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-109"

    const-string v1, "gou,qu,xu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-111"

    const-string v1, "pi,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-120"

    const-string v1, "ge,luo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-123"

    const-string v1, "mang,bang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-130"

    const-string v1, "yi,xu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-137"

    const-string v1, "qie,ni"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-205"

    const-string v1, "tun,zhun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-216"

    const-string v1, "tuo,ta,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-219"

    const-string v1, "wa,wB"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-240"

    const-string v1, "wan,yuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-242"

    const-string v1, "wan,mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "205-246"

    const-string v1, "wang,wu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap206()V
    .locals 2

    const-string v0, "206-151"

    const-string v1, "nai,neng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "206-152"

    const-string v1, "he,xia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "206-154"

    const-string v1, "gui,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "206-178"

    const-string v1, "wei,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "206-190"

    const-string v1, "wei,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "206-206"

    const-string v1, "zhua,wo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "206-208"

    const-string v1, "wo,guo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "206-211"

    const-string v1, "wo,guan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "206-225"

    const-string v1, "wu,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap207()V
    .locals 2

    const-string v0, "207-72"

    const-string v1, "die,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-74"

    const-string v1, "qu,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-77"

    const-string v1, "chan,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-110"

    const-string v1, "fei,ben"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-111"

    const-string v1, "lao,liao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-114"

    const-string v1, "yin,xun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-179"

    const-string v1, "xian,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-180"

    const-string v1, "xi,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-181"

    const-string v1, "xi,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-183"

    const-string v1, "xi,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-195"

    const-string v1, "sha,xia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-197"

    const-string v1, "xia,he"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-203"

    const-string v1, "xian,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-216"

    const-string v1, "xian,xuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-234"

    const-string v1, "xiang,yang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-239"

    const-string v1, "xiang,hang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "207-247"

    const-string v1, "xiao,xue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap208()V
    .locals 2

    const-string v0, "208-136"

    const-string v1, "bao,pao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "208-141"

    const-string v1, "ju,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "208-142"

    const-string v1, "he,ke"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "208-156"

    const-string v1, "na,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "208-163"

    const-string v1, "xiao,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "208-169"

    const-string v1, "xie,suo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "208-174"

    const-string v1, "xie,jia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "208-176"

    const-string v1, "xie,ya,ye,yu,xu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "208-185"

    const-string v1, "xie,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "208-197"

    const-string v1, "xin,shen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "208-208"

    const-string v1, "xing,hang,heng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "208-221"

    const-string v1, "xiu,xu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "208-234"

    const-string v1, "xu,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "208-237"

    const-string v1, "xu,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "208-243"

    const-string v1, "xu,chu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap209()V
    .locals 2

    const-string v0, "209-68"

    const-string v1, "chi,nuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "209-69"

    const-string v1, "chi,qi,duo,nuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "209-73"

    const-string v1, "jian,zun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "209-74"

    const-string v1, "bo,mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "209-79"

    const-string v1, "gui,gua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "209-92"

    const-string v1, "ge,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "209-110"

    const-string v1, "chou,dao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "209-114"

    const-string v1, "yuan,gun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "209-115"

    const-string v1, "yan,an"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "209-189"

    const-string v1, "ya,yB"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "209-202"

    const-string v1, "yan,ye"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "209-242"

    const-string v1, "yang,xiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "209-246"

    const-string v1, "yang,ang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap210()V
    .locals 2

    const-string v0, "210-134"

    const-string v1, "ba,po"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "210-138"

    const-string v1, "jian,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "210-143"

    const-string v1, "jue,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "210-148"

    const-string v1, "pie,mie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "210-153"

    const-string v1, "jue,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "210-182"

    const-string v1, "ye,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "210-201"

    const-string v1, "yi,ni"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "210-243"

    const-string v1, "yin,yan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap211()V
    .locals 2

    const-string v0, "211-72"

    const-string v1, "qin,qing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "211-83"

    const-string v1, "jian,bian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "211-84"

    const-string v1, "luo,luan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "211-88"

    const-string v1, "jue,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "211-105"

    const-string v1, "hua,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "211-110"

    const-string v1, "jie,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "211-115"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "211-123"

    const-string v1, "xue,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "211-128"

    const-string v1, "li,lu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "211-191"

    const-string v1, "yong,chong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "211-225"

    const-string v1, "yu,shu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "211-228"

    const-string v1, "yu,tou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "211-245"

    const-string v1, "xu,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap212()V
    .locals 2

    const-string v0, "212-177"

    const-string v1, "yuan,yun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "212-188"

    const-string v1, "yue,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "212-191"

    const-string v1, "yue,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "212-219"

    const-string v1, "zan,za,zBn"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "212-220"

    const-string v1, "zan,cuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "212-241"

    const-string v1, "ze,zhai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "212-243"

    const-string v1, "ze,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "212-248"

    const-string v1, "zeng,ceng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "212-250"

    const-string v1, "za,zha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "212-251"

    const-string v1, "zha,cha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap213()V
    .locals 2

    const-string v0, "213-65"

    const-string v1, "tiao,diao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-66"

    const-string v1, "yi,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-79"

    const-string v1, "ei,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-82"

    const-string v1, "bei,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-102"

    const-string v1, "shuo,shui,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-104"

    const-string v1, "shuo,shui,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-108"

    const-string v1, "shui,shei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-111"

    const-string v1, "qu,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-118"

    const-string v1, "chi,lai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-121"

    const-string v1, "ni,na"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-123"

    const-string v1, "diao,tiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-124"

    const-string v1, "pi,bei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-139"

    const-string v1, "ze,zuo,zha,cuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-145"

    const-string v1, "chu,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-146"

    const-string v1, "xia,hao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-156"

    const-string v1, "shi,di"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-160"

    const-string v1, "hua,gua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-164"

    const-string v1, "zha,shan,shi,ce"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-166"

    const-string v1, "zha,za"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-179"

    const-string v1, "zhan,nian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-183"

    const-string v1, "zhan,nian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-184"

    const-string v1, "zhan,chan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-217"

    const-string v1, "zhao,shao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-219"

    const-string v1, "zhe,she"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "213-226"

    const-string v1, "zhe,zhei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap214()V
    .locals 2

    const-string v0, "214-76"

    const-string v1, "xi,shai,ai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "214-166"

    const-string v1, "zhi,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "214-168"

    const-string v1, "zhi,zi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "214-179"

    const-string v1, "zhi,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "214-197"

    const-string v1, "zhi,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "214-216"

    const-string v1, "zhong,chong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "214-224"

    const-string v1, "zhou,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "214-236"

    const-string v1, "zhu,shu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "214-248"

    const-string v1, "zhu,zhuo,zhe"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "214-250"

    const-string v1, "zhu,chu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap215()V
    .locals 2

    const-string v0, "215-122"

    const-string v1, "juan,xuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "215-130"

    const-string v1, "yi,tui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "215-158"

    const-string v1, "zhou,chou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "215-166"

    const-string v1, "zhao,zhua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "215-167"

    const-string v1, "zhuai,ye"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "215-181"

    const-string v1, "zhui,chui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "215-183"

    const-string v1, "zhui,dui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "215-193"

    const-string v1, "zhuo,zuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "215-197"

    const-string v1, "zhuo,zhao,zhe"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "215-200"

    const-string v1, "zi,ci"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "215-208"

    const-string v1, "zi,zai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "215-219"

    const-string v1, "zong,zeng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "215-228"

    const-string v1, "zu,cu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "215-245"

    const-string v1, "zuo,zha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap216()V
    .locals 2

    const-string v0, "216-126"

    const-string v1, "ken,kun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "216-128"

    const-string v1, "he,mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "216-139"

    const-string v1, "ju,lou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "216-146"

    const-string v1, "yuan,yun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "216-159"

    const-string v1, "ze,zhai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "216-162"

    const-string v1, "qi,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "216-174"

    const-string v1, "yu,ou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "216-177"

    const-string v1, "tuo,zhe"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "216-189"

    const-string v1, "ji,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "216-191"

    const-string v1, "mie,nie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "216-209"

    const-string v1, "kui,gui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "216-223"

    const-string v1, "yan,shan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "216-238"

    const-string v1, "yi,ge"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "216-247"

    const-string v1, "cang,chen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "216-253"

    const-string v1, "yi,die"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "216-254"

    const-string v1, "gou,kou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap217()V
    .locals 2

    const-string v0, "217-74"

    const-string v1, "dai,te"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "217-83"

    const-string v1, "bi,ben"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "217-90"

    const-string v1, "jia,gu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "217-130"

    const-string v1, "xiong,min"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "217-141"

    const-string v1, "zhuan,zuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "217-164"

    const-string v1, "qie,jia,ga"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "217-166"

    const-string v1, "er,nai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "217-185"

    const-string v1, "si,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "217-193"

    const-string v1, "wo,wei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "217-202"

    const-string v1, "ji,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "217-205"

    const-string v1, "lv,lou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "217-215"

    const-string v1, "tong,zhuang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap218()V
    .locals 2

    const-string v0, "218-103"

    const-string v1, "die,tu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "218-108"

    const-string v1, "ji,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "218-111"

    const-string v1, "gua,huo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "218-124"

    const-string v1, "que,qi,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "218-133"

    const-string v1, "qu,cu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "218-140"

    const-string v1, "ti,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "218-143"

    const-string v1, "kua,wu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "218-145"

    const-string v1, "jue,gui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "218-147"

    const-string v1, "fang,pang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "218-149"

    const-string v1, "ba,pao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "218-153"

    const-string v1, "jian,chen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "218-177"

    const-string v1, "yi,dai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "218-181"

    const-string v1, "jie,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "218-192"

    const-string v1, "ei,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "218-243"

    const-string v1, "wei,kui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap219()V
    .locals 2

    const-string v0, "219-64"

    const-string v1, "dian,tie,die"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-65"

    const-string v1, "pan,ban"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-66"

    const-string v1, "ju,qie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-70"

    const-string v1, "dai,duo,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-77"

    const-string v1, "pian,beng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-83"

    const-string v1, "shu,chou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-167"

    const-string v1, "qie,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-168"

    const-string v1, "xun,huan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-170"

    const-string v1, "li,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-193"

    const-string v1, "ge,jia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-201"

    const-string v1, "kan,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-204"

    const-string v1, "si,mou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-215"

    const-string v1, "wei,xu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-223"

    const-string v1, "qi,yin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-230"

    const-string v1, "di,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-237"

    const-string v1, "dong,tong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-239"

    const-string v1, "yan,shan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "219-249"

    const-string v1, "yuan,huan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap220()V
    .locals 2

    const-string v0, "220-86"

    const-string v1, "li,luo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "220-97"

    const-string v1, "sa,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "220-135"

    const-string v1, "che,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "220-136"

    const-string v1, "ya,zha,ga"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "220-140"

    const-string v1, "xin,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "220-143"

    const-string v1, "fan,gui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "220-161"

    const-string v1, "peng,beng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "220-190"

    const-string v1, "yuan,yan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "220-192"

    const-string v1, "fei,fu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "220-196"

    const-string v1, "ju,qu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "220-197"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "220-204"

    const-string v1, "wu,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "220-230"

    const-string v1, "tiao,shao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap221()V
    .locals 2

    const-string v0, "221-161"

    const-string v1, "qian,xun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "221-178"

    const-string v1, "xian,lian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "221-179"

    const-string v1, "fu,piao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "221-183"

    const-string v1, "shen,xin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "221-184"

    const-string v1, "guan,wan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "221-185"

    const-string v1, "lang,liang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "221-210"

    const-string v1, "wan,yun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "221-216"

    const-string v1, "shen,ren"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "221-222"

    const-string v1, "kui,kuai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap222()V
    .locals 2

    const-string v0, "222-120"

    const-string v1, "dao,bian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "222-130"

    const-string v1, "wang,kuang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "222-140"

    const-string v1, "zhi,li"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "222-142"

    const-string v1, "zhu,wang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "222-164"

    const-string v1, "liao,lu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "222-202"

    const-string v1, "zang,zhuang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "222-213"

    const-string v1, "pan,pin,fan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "222-214"

    const-string v1, "ao,niu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "222-215"

    const-string v1, "jie,jia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "222-217"

    const-string v1, "za,zan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "222-219"

    const-string v1, "luo,lv"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "222-233"

    const-string v1, "she,die,ye"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap223()V
    .locals 2

    const-string v0, "223-128"

    const-string v1, "huan,hai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-134"

    const-string v1, "li,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-146"

    const-string v1, "kang,hang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-168"

    const-string v1, "pi,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-175"

    const-string v1, "te,tui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-182"

    const-string v1, "tao,dao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-188"

    const-string v1, "fu,?"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-193"

    const-string v1, "pi,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-194"

    const-string v1, "bei,bai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-195"

    const-string v1, "wai,he,wo,wa,gua,guo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-197"

    const-string v1, "yin,shen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-201"

    const-string v1, "gua,gu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-210"

    const-string v1, "ji,xi,qia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-218"

    const-string v1, "zi,ci"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-220"

    const-string v1, "yue,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-226"

    const-string v1, "ji,jie,zhai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-231"

    const-string v1, "gen,hen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-246"

    const-string v1, "nuo,re"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-248"

    const-string v1, "lan,lin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-250"

    const-string v1, "zhou,zhao,tiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "223-253"

    const-string v1, "cui,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap224()V
    .locals 2

    const-string v0, "224-64"

    const-string v1, "gai,hai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "224-85"

    const-string v1, "xiao,ao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "224-168"

    const-string v1, "chuo,chuai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "224-169"

    const-string v1, "die,zha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "224-170"

    const-string v1, "ta,da"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "224-184"

    const-string v1, "o,wo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "224-196"

    const-string v1, "sha,a"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "224-201"

    const-string v1, "yi,ai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "224-203"

    const-string v1, "hai,hei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "224-229"

    const-string v1, "jue,xue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "224-234"

    const-string v1, "ca,cha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "224-237"

    const-string v1, "wei,guo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "224-238"

    const-string v1, "jian,nan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "224-247"

    const-string v1, "huan,yuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "224-251"

    const-string v1, "tang,nu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "224-252"

    const-string v1, "chou,dao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap225()V
    .locals 2

    const-string v0, "225-93"

    const-string v1, "tan,dan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "225-98"

    const-string v1, "qiu,chou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "225-112"

    const-string v1, "chan,chen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "225-119"

    const-string v1, "po,fa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "225-121"

    const-string v1, "yi,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "225-122"

    const-string v1, "yan,lian,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "225-160"

    const-string v1, "qiao,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "225-188"

    const-string v1, "tong,dong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "225-189"

    const-string v1, "jiao,qiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "225-203"

    const-string v1, "wai,wei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "225-221"

    const-string v1, "pang,fang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "225-231"

    const-string v1, "zhi,zheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "225-234"

    const-string v1, "shan,xian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "225-237"

    const-string v1, "han,an"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap226()V
    .locals 2

    const-string v0, "226-68"

    const-string v1, "hua,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "226-69"

    const-string v1, "hua,wu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "226-74"

    const-string v1, "ri,ren,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "226-75"

    const-string v1, "di,dai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "226-80"

    const-string v1, "shi,yi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "226-86"

    const-string v1, "ri,ren,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "226-87"

    const-string v1, "pi,zhao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "226-88"

    const-string v1, "ye,ya"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "226-186"

    const-string v1, "zhi,zhong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "226-219"

    const-string v1, "jin,qin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "226-236"

    const-string v1, "song,zhong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "226-244"

    const-string v1, "zuo,zha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap227()V
    .locals 2

    const-string v0, "227-125"

    const-string v1, "xiang,jiong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-131"

    const-string v1, "yu,si"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-132"

    const-string v1, "xu,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-136"

    const-string v1, "shan,shuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-137"

    const-string v1, "chi,li"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-138"

    const-string v1, "xian,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-144"

    const-string v1, "hou,xiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-147"

    const-string v1, "diao,tiao,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-148"

    const-string v1, "xian,kuo,tian,gua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-166"

    const-string v1, "kui,li"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-187"

    const-string v1, "qian,qie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-196"

    const-string v1, "hui,duo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-219"

    const-string v1, "kan,han"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-233"

    const-string v1, "gu,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-235"

    const-string v1, "wen,men"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-241"

    const-string v1, "long,shuang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-245"

    const-string v1, "tuo,duo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "227-248"

    const-string v1, "luo,po"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap228()V
    .locals 2

    const-string v0, "228-75"

    const-string v1, "shi,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-79"

    const-string v1, "zhe,nie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-84"

    const-string v1, "xian,kuo,tian,gua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-85"

    const-string v1, "hong,gong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-86"

    const-string v1, "zhong,yong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-87"

    const-string v1, "tou,tu,dou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-89"

    const-string v1, "mei,meng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-91"

    const-string v1, "wan,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-93"

    const-string v1, "yun,jun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-98"

    const-string v1, "ting,ding"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-103"

    const-string v1, "juan,jian,cuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-109"

    const-string v1, "xuan,juan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-110"

    const-string v1, "hua,wu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-114"

    const-string v1, "zhuo,chuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-116"

    const-string v1, "xing,jing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-142"

    const-string v1, "zui,nie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-145"

    const-string v1, "yuan,wan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-171"

    const-string v1, "kuai,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-176"

    const-string v1, "hu,xu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-194"

    const-string v1, "du,dou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-196"

    const-string v1, "pi,pei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-197"

    const-string v1, "mian,sheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-206"

    const-string v1, "yan,yin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-208"

    const-string v1, "qiu,jiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-218"

    const-string v1, "zhen,qin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-234"

    const-string v1, "huang,guang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-240"

    const-string v1, "luo,ta"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "228-248"

    const-string v1, "shu,zhu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap229()V
    .locals 2

    const-string v0, "229-163"

    const-string v1, "dan,tan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "229-168"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "229-170"

    const-string v1, "zhuo,zhao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "229-181"

    const-string v1, "mi,fu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "229-238"

    const-string v1, "chan,can"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "229-248"

    const-string v1, "che,cao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "229-250"

    const-string v1, "fei,pei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap230()V
    .locals 2

    const-string v0, "230-92"

    const-string v1, "cuo,cha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "230-93"

    const-string v1, "da,ta"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "230-97"

    const-string v1, "suo,se"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "230-99"

    const-string v1, "yao,zu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "230-100"

    const-string v1, "ye,ta,ge"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "230-106"

    const-string v1, "qiang,cheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "230-107"

    const-string v1, "ge,li"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "230-113"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "230-126"

    const-string v1, "wan,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "230-128"

    const-string v1, "gao,hao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "230-151"

    const-string v1, "zu,chuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "230-157"

    const-string v1, "shou,sou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "230-175"

    const-string v1, "jiao,xiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "230-193"

    const-string v1, "ao,yun,wo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "230-244"

    const-string v1, "piao,biao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "230-252"

    const-string v1, "he,ge"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap231()V
    .locals 2

    const-string v0, "231-68"

    const-string v1, "san,qiao,can"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "231-71"

    const-string v1, "lu,ao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "231-90"

    const-string v1, "jian,zan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "231-105"

    const-string v1, "hui,sui,rui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "231-111"

    const-string v1, "san,xian,sa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "231-162"

    const-string v1, "pi,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "231-194"

    const-string v1, "bian,pian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "231-209"

    const-string v1, "mou,miu,miao,mu,liao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "231-216"

    const-string v1, "qiao,sao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "231-222"

    const-string v1, "zai,zi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "231-227"

    const-string v1, "bin,fen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "231-228"

    const-string v1, "min,wen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "231-245"

    const-string v1, "hun,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap232()V
    .locals 2

    const-string v0, "232-149"

    const-string v1, "sa,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "232-157"

    const-string v1, "xian,kuo,tian,gua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "232-185"

    const-string v1, "yun,wen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "232-188"

    const-string v1, "shao,biao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "232-200"

    const-string v1, "cong,zong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "232-202"

    const-string v1, "fang,bing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "232-219"

    const-string v1, "ju,gou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "232-221"

    const-string v1, "li,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "232-222"

    const-string v1, "tuo,duo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "232-233"

    const-string v1, "gua,tian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "232-236"

    const-string v1, "heng,hang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "232-237"

    const-string v1, "gui,hui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "232-254"

    const-string v1, "zhao,zhuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap233()V
    .locals 2

    const-string v0, "233-88"

    const-string v1, "huo,shan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "233-92"

    const-string v1, "han,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "233-94"

    const-string v1, "ci ka Bi lu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "233-102"

    const-string v1, "xian,jian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "233-112"

    const-string v1, "xia,ke"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "233-114"

    const-string v1, "bian,guan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "233-123"

    const-string v1, "hong,xiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "233-145"

    const-string v1, "e,yan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "233-151"

    const-string v1, "hong,juan,xiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "233-155"

    const-string v1, "ban,pan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "233-166"

    const-string v1, "di,dai,ti"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "233-168"

    const-string v1, "cou,zou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "233-169"

    const-string v1, "zhen,shen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "233-171"

    const-string v1, "zha,cha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "233-196"

    const-string v1, "bin,bing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "233-202"

    const-string v1, "qi,se"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap234()V
    .locals 2

    const-string v0, "234-67"

    const-string v1, "pBi ying,po he deng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "234-79"

    const-string v1, "tang,chang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "234-82"

    const-string v1, "kan,han"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "234-83"

    const-string v1, "xi,se,ta"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "234-92"

    const-string v1, "han,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "234-156"

    const-string v1, "yu,yao,shu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "234-160"

    const-string v1, "dui,zhui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "234-176"

    const-string v1, "zang,cang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "234-186"

    const-string v1, "gan,han"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "234-193"

    const-string v1, "jiong,gui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "234-200"

    const-string v1, "qi,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "234-201"

    const-string v1, "sheng,cheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "234-249"

    const-string v1, "jian,qian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "234-253"

    const-string v1, "suo,sB,shB"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap235()V
    .locals 2

    const-string v0, "235-66"

    const-string v1, "qi,gai,ai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-68"

    const-string v1, "hui,duo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-84"

    const-string v1, "ao,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-95"

    const-string v1, "li,dai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-96"

    const-string v1, "li,dai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-97"

    const-string v1, "hu,he"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-104"

    const-string v1, "jun,juan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-113"

    const-string v1, "guan,huan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-118"

    const-string v1, "gui,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-121"

    const-string v1, "nan,nuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-129"

    const-string v1, "se,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-137"

    const-string v1, "wu,meng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-162"

    const-string v1, "bo,bai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-192"

    const-string v1, "rong,chen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-198"

    const-string v1, "zhun,chun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-212"

    const-string v1, "qu,xu,chun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "235-254"

    const-string v1, "shan,dan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap236()V
    .locals 2

    const-string v0, "236-145"

    const-string v1, "ge,ta,sa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "236-147"

    const-string v1, "jie,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "236-153"

    const-string v1, "bian,ying"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "236-156"

    const-string v1, "xuan,juan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "236-160"

    const-string v1, "shang,zhang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "236-168"

    const-string v1, "xi,she"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "236-182"

    const-string v1, "yu,wu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "236-204"

    const-string v1, "zhuo,chao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "236-217"

    const-string v1, "yun,yu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "236-225"

    const-string v1, "huo,biao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "236-248"

    const-string v1, "chan,shan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap237()V
    .locals 2

    const-string v0, "237-64"

    const-string v1, "bing,pi,bi,bei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-67"

    const-string v1, "xie,die"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-74"

    const-string v1, "mu,mou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-77"

    const-string v1, "wen,yun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-83"

    const-string v1, "bi,bing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-105"

    const-string v1, "mei,wa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-115"

    const-string v1, "she,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-165"

    const-string v1, "nen,nin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-176"

    const-string v1, "gang,zhuang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-179"

    const-string v1, "ta,da"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-185"

    const-string v1, "xu,hua"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-199"

    const-string v1, "li,la"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-201"

    const-string v1, "fu,fei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-209"

    const-string v1, "luo,ge"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-217"

    const-string v1, "jie,ya"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-244"

    const-string v1, "yi,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "237-245"

    const-string v1, "gui,sui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap238()V
    .locals 2

    const-string v0, "238-174"

    const-string v1, "ting,ding"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "238-217"

    const-string v1, "ba,pa"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "238-228"

    const-string v1, "dian,tian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "238-232"

    const-string v1, "ta,tuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "238-245"

    const-string v1, "dang,cheng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "238-250"

    const-string v1, "ting,ding"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "238-254"

    const-string v1, "ha,ke"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap239()V
    .locals 2

    const-string v0, "239-77"

    const-string v1, "biao,diu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "239-84"

    const-string v1, "ba,fu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "239-98"

    const-string v1, "sao,sou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "239-102"

    const-string v1, "liu,liao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "239-133"

    const-string v1, "yang,juan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "239-140"

    const-string v1, "zhu,tou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "239-142"

    const-string v1, "zuo,ze,zha"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "239-162"

    const-string v1, "diao,tiao,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap240()V
    .locals 2

    const-string v0, "240-221"

    const-string v1, "li,lai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "240-251"

    const-string v1, "chai,cuo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "240-253"

    const-string v1, "jia,xia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap241()V
    .locals 2

    const-string v0, "241-78"

    const-string v1, "yun,wo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-84"

    const-string v1, "feng,ping"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-87"

    const-string v1, "tuo,duo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-88"

    const-string v1, "tuo,zhe"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-92"

    const-string v1, "zhi,shi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-94"

    const-string v1, "xin,jin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-105"

    const-string v1, "jue,kuai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-106"

    const-string v1, "tuo,duo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-126"

    const-string v1, "tai,dai"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-143"

    const-string v1, "xun,xuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-187"

    const-string v1, "tiao,yao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-191"

    const-string v1, "yin,xun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-202"

    const-string v1, "jia,jie,qia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-211"

    const-string v1, "xi,ti"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-212"

    const-string v1, "bi,pi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-226"

    const-string v1, "pi,ya,shu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-230"

    const-string v1, "jin,qin,guan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "241-251"

    const-string v1, "tan,qin"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap242()V
    .locals 2

    const-string v0, "242-64"

    const-string v1, "liang,lang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "242-161"

    const-string v1, "jie,xie,jia"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "242-162"

    const-string v1, "he,ge"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "242-188"

    const-string v1, "gong,zhong"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "242-254"

    const-string v1, "mang,meng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap243()V
    .locals 2

    const-string v0, "243-99"

    const-string v1, "bei,mo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "243-102"

    const-string v1, "qiao,xiao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "243-112"

    const-string v1, "bo,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "243-143"

    const-string v1, "bi,po"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "243-144"

    const-string v1, "mao,meng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "243-150"

    const-string v1, "kuo,yue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "243-167"

    const-string v1, "shi,zhe"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "243-195"

    const-string v1, "zhu,du"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "243-208"

    const-string v1, "zuo,ze"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "243-222"

    const-string v1, "yun,jun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "243-228"

    const-string v1, "qing,jing"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "243-238"

    const-string v1, "wan,yuan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap244()V
    .locals 2

    const-string v0, "244-210"

    const-string v1, "zi,ci"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "244-214"

    const-string v1, "san,shen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "244-233"

    const-string v1, "mi,si"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "244-236"

    const-string v1, "qing,qi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "244-237"

    const-string v1, "yao,you,zhou"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "244-242"

    const-string v1, "qie,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap245()V
    .locals 2

    const-string v0, "245-74"

    const-string v1, "ci,ji"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "245-78"

    const-string v1, "bo,ba"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "245-105"

    const-string v1, "luo,ge"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "245-113"

    const-string v1, "gui,xie,wa,kui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "245-139"

    const-string v1, "pu,bu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "245-192"

    const-string v1, "bao,bo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "245-200"

    const-string v1, "li,luo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "245-232"

    const-string v1, "qi,xi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "245-254"

    const-string v1, "zi,zui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap246()V
    .locals 2

    const-string v0, "246-71"

    const-string v1, "yi,si"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "246-149"

    const-string v1, "ha ta ha ta"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "246-184"

    const-string v1, "yin,ken"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "246-188"

    const-string v1, "min,mian,meng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "246-191"

    const-string v1, "zhui,cui,wei"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "246-193"

    const-string v1, "jun,juan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "246-196"

    const-string v1, "qu,ju"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "246-217"

    const-string v1, "gui,xie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap247()V
    .locals 2

    const-string v0, "247-133"

    const-string v1, "he,ge"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "247-136"

    const-string v1, "bo,ba"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "247-172"

    const-string v1, "gui,jue"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "247-180"

    const-string v1, "man,men"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "247-225"

    const-string v1, "mo,me"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "247-229"

    const-string v1, "jun,qun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap248()V
    .locals 2

    const-string v0, "248-64"

    const-string v1, "zhan,shan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "248-66"

    const-string v1, "niao,diao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "248-74"

    const-string v1, "diao,zhao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "248-78"

    const-string v1, "gan,han,yan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "248-87"

    const-string v1, "fu,gui"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "248-88"

    const-string v1, "ban,fen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "248-90"

    const-string v1, "jian,qian,zhan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap249()V
    .locals 2

    const-string v0, "249-149"

    const-string v1, "ti,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "249-151"

    const-string v1, "ti,chi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "249-155"

    const-string v1, "fu,bi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "249-159"

    const-string v1, "he,jie"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap250()V
    .locals 2

    const-string v0, "250-64"

    const-string v1, "pian,bian"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "250-69"

    const-string v1, "chuan,zhi"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "250-73"

    const-string v1, "cang,qiang"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "250-75"

    const-string v1, "he,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "250-88"

    const-string v1, "gu,hu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "250-90"

    const-string v1, "sun,xun"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "250-121"

    const-string v1, "lou,lv"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap251()V
    .locals 2

    const-string v0, "251-129"

    const-string v1, "pao,biao"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "251-132"

    const-string v1, "zhu,cu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap252()V
    .locals 2

    const-string v0, "252-78"

    const-string v1, "mo,me"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "252-108"

    const-string v1, "dan,shen"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "252-109"

    const-string v1, "zhen,yan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "252-114"

    const-string v1, "dan,zhan"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "252-119"

    const-string v1, "min,mian,meng"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initMap253()V
    .locals 2

    const-string v0, "253-135"

    const-string v1, "yin,ken"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "253-138"

    const-string v1, "gong,wo"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "253-148"

    const-string v1, "gui,jun,qiu"

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static putMultiPinyin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->multiPinyinMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-object v5

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v7, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-char v0, v1, v6

    const/16 v8, 0x20

    if-ne v0, v8, :cond_2

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->getCharacterGbk(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->getTokenIncludingSpecialSuffix(C)Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/launcher2/searchapp/hanzi/HanziToMultiPinyin;->getMultiPinyinsByGBK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin;->getTokenIncludingSpecialSuffix(C)Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v4, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;

    invoke-direct {v4}, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;-><init>()V

    const/4 v8, 0x2

    iput v8, v4, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->type:I

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/launcher2/searchapp/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
