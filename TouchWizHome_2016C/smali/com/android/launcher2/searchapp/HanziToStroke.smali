.class public Lcom/android/launcher2/searchapp/HanziToStroke;
.super Ljava/lang/Object;
.source "HanziToStroke.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/searchapp/HanziToStroke$Token;
    }
.end annotation


# static fields
.field private static final MAP_10_BEGIN:I = 0x5f94

.field private static final MAP_11_BEGIN:I = 0x6188

.field private static final MAP_12_BEGIN:I = 0x637c

.field private static final MAP_13_BEGIN:I = 0x6570

.field private static final MAP_14_BEGIN:I = 0x6764

.field private static final MAP_15_BEGIN:I = 0x6958

.field private static final MAP_16_BEGIN:I = 0x6b4c

.field private static final MAP_17_BEGIN:I = 0x6d40

.field private static final MAP_18_BEGIN:I = 0x6f34

.field private static final MAP_19_BEGIN:I = 0x7128

.field private static final MAP_1_BEGIN:I = 0x4e00

.field private static final MAP_20_BEGIN:I = 0x731c

.field private static final MAP_21_BEGIN:I = 0x7510

.field private static final MAP_22_BEGIN:I = 0x7704

.field private static final MAP_23_BEGIN:I = 0x78f8

.field private static final MAP_24_BEGIN:I = 0x7aec

.field private static final MAP_25_BEGIN:I = 0x7ce0

.field private static final MAP_26_BEGIN:I = 0x7ed4

.field private static final MAP_27_BEGIN:I = 0x80c8

.field private static final MAP_28_BEGIN:I = 0x82bc

.field private static final MAP_29_BEGIN:I = 0x84b0

.field private static final MAP_2_BEGIN:I = 0x4ff4

.field private static final MAP_30_BEGIN:I = 0x86a4

.field private static final MAP_31_BEGIN:I = 0x8898

.field private static final MAP_32_BEGIN:I = 0x8a8c

.field private static final MAP_33_BEGIN:I = 0x8c80

.field private static final MAP_34_BEGIN:I = 0x8e74

.field private static final MAP_35_BEGIN:I = 0x9068

.field private static final MAP_36_BEGIN:I = 0x925c

.field private static final MAP_37_BEGIN:I = 0x9450

.field private static final MAP_38_BEGIN:I = 0x9644

.field private static final MAP_39_BEGIN:I = 0x9838

.field private static final MAP_3_BEGIN:I = 0x51e8

.field private static final MAP_40_BEGIN:I = 0x9a2c

.field private static final MAP_41_BEGIN:I = 0x9c20

.field private static final MAP_42_BEGIN:I = 0x9e14

.field private static final MAP_4_BEGIN:I = 0x53dc

.field private static final MAP_5_BEGIN:I = 0x55d0

.field private static final MAP_6_BEGIN:I = 0x57c4

.field private static final MAP_7_BEGIN:I = 0x59b8

.field private static final MAP_8_BEGIN:I = 0x5bac

.field private static final MAP_9_BEGIN:I = 0x5da0

.field private static final MAP_BEGIN:I = 0x4e00

.field private static final MAP_END:I = 0x9fa5

.field private static devider:[I

.field private static sSingleton:Lcom/android/launcher2/searchapp/HanziToStroke;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/searchapp/HanziToStroke;->devider:[I

    return-void

    :array_0
    .array-data 4
        0x4e00
        0x4ff4
        0x51e8
        0x53dc
        0x55d0
        0x57c4
        0x59b8
        0x5bac
        0x5da0
        0x5f94
        0x6188
        0x637c
        0x6570
        0x6764
        0x6958
        0x6b4c
        0x6d40
        0x6f34
        0x7128
        0x731c
        0x7510
        0x7704
        0x78f8
        0x7aec
        0x7ce0
        0x7ed4
        0x80c8
        0x82bc
        0x84b0
        0x86a4
        0x8898    # 4.9E-41f
        0x8a8c
        0x8c80
        0x8e74
        0x9068
        0x925c
        0x9450
        0x9644
        0x9838
        0x9a2c
        0x9c20
        0x9e14
        0x9fa5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static find([[[II)[I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    :goto_0
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    aget-object v3, p0, v0

    aget-object v3, v3, v4

    aget v3, v3, v4

    if-ne v3, p1, :cond_0

    aget-object v3, p0, v0

    aget-object v3, v3, v5

    :goto_1
    return-object v3

    :cond_0
    if-le v1, v2, :cond_1

    new-array v3, v5, [I

    aput v4, v3, v4

    goto :goto_1

    :cond_1
    aget-object v3, p0, v0

    aget-object v3, v3, v4

    aget v3, v3, v4

    if-ge v3, p1, :cond_2

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, -0x1

    goto :goto_0
.end method

.method private static findMapper(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/launcher2/searchapp/HanziToStroke;->devider:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/launcher2/searchapp/HanziToStroke;->devider:[I

    aget v1, v1, v0

    if-lt p0, v1, :cond_0

    sget-object v1, Lcom/android/launcher2/searchapp/HanziToStroke;->devider:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-ge p0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static declared-synchronized getIntance()Lcom/android/launcher2/searchapp/HanziToStroke;
    .locals 2

    const-class v1, Lcom/android/launcher2/searchapp/HanziToStroke;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/searchapp/HanziToStroke;->sSingleton:Lcom/android/launcher2/searchapp/HanziToStroke;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/searchapp/HanziToStroke;

    invoke-direct {v0}, Lcom/android/launcher2/searchapp/HanziToStroke;-><init>()V

    sput-object v0, Lcom/android/launcher2/searchapp/HanziToStroke;->sSingleton:Lcom/android/launcher2/searchapp/HanziToStroke;

    :cond_0
    sget-object v0, Lcom/android/launcher2/searchapp/HanziToStroke;->sSingleton:Lcom/android/launcher2/searchapp/HanziToStroke;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getToken(C)Lcom/android/launcher2/searchapp/HanziToStroke$Token;
    .locals 8

    const/4 v7, 0x3

    new-instance v5, Lcom/android/launcher2/searchapp/HanziToStroke$Token;

    invoke-direct {v5}, Lcom/android/launcher2/searchapp/HanziToStroke$Token;-><init>()V

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v6, 0x2

    iput v6, v5, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->type:I

    const/16 v6, 0x100

    if-ge p1, v6, :cond_0

    const/4 v6, 0x1

    iput v6, v5, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->type:I

    iput-object v2, v5, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->target:Ljava/lang/String;

    :goto_0
    return-object v5

    :cond_0
    const/16 v6, 0x4e00

    if-lt p1, v6, :cond_1

    const v6, 0x9fa5

    if-le p1, v6, :cond_2

    :cond_1
    iput v7, v5, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->type:I

    iput-object v2, v5, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->target:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->findMapper(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    iput v7, v5, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->type:I

    iput-object v2, v5, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->target:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke1;->HANZI_TO_STROKE_MAP_1:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    :goto_1
    const/4 v6, 0x0

    aget v6, v0, v6

    if-nez v6, :cond_3

    iput v7, v5, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->type:I

    iput-object v2, v5, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->target:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke2;->HANZI_TO_STROKE_MAP_2:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_2
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke3;->HANZI_TO_STROKE_MAP_3:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_3
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke4;->HANZI_TO_STROKE_MAP_4:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_4
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke5;->HANZI_TO_STROKE_MAP_5:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_5
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke6;->HANZI_TO_STROKE_MAP_6:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_6
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke7;->HANZI_TO_STROKE_MAP_7:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_7
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke8;->HANZI_TO_STROKE_MAP_8:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_8
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke9;->HANZI_TO_STROKE_MAP_9:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_9
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke10;->HANZI_TO_STROKE_MAP_10:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_a
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke11;->HANZI_TO_STROKE_MAP_11:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_b
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke12;->HANZI_TO_STROKE_MAP_12:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_c
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke13;->HANZI_TO_STROKE_MAP_13:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_d
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke14;->HANZI_TO_STROKE_MAP_14:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_e
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke15;->HANZI_TO_STROKE_MAP_15:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_f
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke16;->HANZI_TO_STROKE_MAP_16:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_10
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke17;->HANZI_TO_STROKE_MAP_17:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_11
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke18;->HANZI_TO_STROKE_MAP_18:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto :goto_1

    :pswitch_12
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke19;->HANZI_TO_STROKE_MAP_19:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_13
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke20;->HANZI_TO_STROKE_MAP_20:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_14
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke21;->HANZI_TO_STROKE_MAP_21:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_15
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke22;->HANZI_TO_STROKE_MAP_22:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_16
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke23;->HANZI_TO_STROKE_MAP_23:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_17
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke24;->HANZI_TO_STROKE_MAP_24:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_18
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke25;->HANZI_TO_STROKE_MAP_25:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_19
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke26;->HANZI_TO_STROKE_MAP_26:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1a
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke27;->HANZI_TO_STROKE_MAP_27:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1b
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke28;->HANZI_TO_STROKE_MAP_28:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1c
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke29;->HANZI_TO_STROKE_MAP_29:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1d
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke30;->HANZI_TO_STROKE_MAP_30:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1e
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke31;->HANZI_TO_STROKE_MAP_31:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1f
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke32;->HANZI_TO_STROKE_MAP_32:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_20
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke33;->HANZI_TO_STROKE_MAP_33:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_21
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke34;->HANZI_TO_STROKE_MAP_34:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_22
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke35;->HANZI_TO_STROKE_MAP_35:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_23
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke36;->HANZI_TO_STROKE_MAP_36:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_24
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke37;->HANZI_TO_STROKE_MAP_37:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_25
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke38;->HANZI_TO_STROKE_MAP_38:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_26
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke39;->HANZI_TO_STROKE_MAP_39:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_27
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke40;->HANZI_TO_STROKE_MAP_40:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_28
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke41;->HANZI_TO_STROKE_MAP_41:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :pswitch_29
    sget-object v6, Lcom/android/launcher2/searchapp/MapStroke42;->HANZI_TO_STROKE_MAP_42:[[[I

    invoke-static {v6, p1}, Lcom/android/launcher2/searchapp/HanziToStroke;->find([[[II)[I

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_2
    array-length v6, v0

    if-ge v1, v6, :cond_4

    aget v6, v0, v1

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->target:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/searchapp/HanziToStroke$Token;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/launcher2/searchapp/HanziToStroke;->getToken(C)Lcom/android/launcher2/searchapp/HanziToStroke$Token;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/searchapp/HanziToStroke;->getToken(C)Lcom/android/launcher2/searchapp/HanziToStroke$Token;

    move-result-object v4

    iget v6, v4, Lcom/android/launcher2/searchapp/HanziToStroke$Token;->type:I

    packed-switch v6, :pswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
