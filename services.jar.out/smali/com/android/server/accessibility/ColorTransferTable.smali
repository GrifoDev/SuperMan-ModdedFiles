.class public Lcom/android/server/accessibility/ColorTransferTable;
.super Ljava/lang/Object;
.source "ColorTransferTable.java"


# static fields
.field public static final BLUE:I = 0x5

.field public static final CYAN:I = 0x4

.field private static final DEUTAN:I = 0x1

.field private static final Deutan_severity:[D

.field private static final Deutan_userParameter:[D

.field public static final GREEN:I = 0x3

.field public static final MAGENTA:I = 0x6

.field private static final MAX:I = 0x0

.field private static final MAX_MIN_COLOR_TRANSFER_NUM:I = 0x2

.field private static final MIN:I = 0x1

.field private static final PROTAN:I = 0x0

.field private static final Protan_severity:[D

.field private static final Protan_userParameter:[D

.field public static final RED:I = 0x1

.field private static final TRITAN:I = 0x2

.field private static final Tritan_severity:[D

.field private static final Tritan_userParameter:[D

.field public static final YELLOW:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x19

    new-array v0, v1, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Protan_severity:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Protan_userParameter:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_severity:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_userParameter:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_severity:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_userParameter:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_4
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3ff0000000000000L    # 1.0
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3ff0000000000000L    # 1.0
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMaxMinColorTrnasferValue_BB_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BB_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xcc

    const/16 v1, 0xca

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xcc

    const/16 v1, 0xca

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xcc

    const/16 v1, 0xc9

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xcc

    const/16 v1, 0xc9

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xcc

    const/16 v1, 0xcc

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xcc

    const/16 v1, 0xcd

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xcc

    const/16 v1, 0xcd

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xcc

    const/16 v1, 0xce

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xcc

    const/16 v1, 0xce

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xcc

    const/16 v1, 0xda

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xcc

    const/16 v1, 0xe1

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xcc

    const/16 v1, 0xe7

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xcc

    const/16 v1, 0xed

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xf4

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BG_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x6

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/16 v1, 0xc

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/16 v1, 0x10

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/16 v1, 0x15

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/16 v1, 0x1a

    goto :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/16 v1, 0x20

    goto :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/16 v1, 0x29

    goto :goto_0

    :pswitch_1e
    const/4 v3, 0x0

    const/16 v1, 0x33

    goto :goto_0

    :pswitch_1f
    const/4 v3, 0x0

    const/16 v1, 0x3d

    goto :goto_0

    :pswitch_20
    const/4 v3, 0x0

    const/16 v1, 0x47

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BG_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/16 v1, 0x20

    goto :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/16 v1, 0x29

    goto :goto_0

    :pswitch_1e
    const/4 v3, 0x0

    const/16 v1, 0x33

    goto :goto_0

    :pswitch_1f
    const/4 v3, 0x0

    const/16 v1, 0x3d

    goto :goto_0

    :pswitch_20
    const/4 v3, 0x0

    const/16 v1, 0x47

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BR_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x6

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/16 v1, 0xc

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/16 v1, 0x10

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/16 v1, 0x15

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/16 v1, 0x1a

    goto :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/16 v1, 0x20

    goto :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/16 v1, 0x29

    goto :goto_0

    :pswitch_1e
    const/16 v3, 0x20

    const/16 v1, 0x53

    goto :goto_0

    :pswitch_1f
    const/16 v3, 0x29

    const/16 v1, 0x66

    goto :goto_0

    :pswitch_20
    const/16 v3, 0x2f

    const/16 v1, 0x76

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BR_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/16 v1, 0x9

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/16 v1, 0xf

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const/16 v1, 0x16

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/16 v1, 0x1e

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/16 v1, 0x27

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x0

    const/16 v1, 0xb

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x0

    const/16 v1, 0x11

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/16 v1, 0x18

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/16 v1, 0x20

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x0

    const/16 v1, 0x29

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x4

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/4 v1, 0x6

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/16 v1, 0x8

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/16 v1, 0x9

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/16 v1, 0xa

    goto :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/16 v1, 0x20

    goto :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/16 v1, 0x29

    goto :goto_0

    :pswitch_1e
    const/16 v3, 0x20

    const/16 v1, 0x53

    goto :goto_0

    :pswitch_1f
    const/16 v3, 0x29

    const/16 v1, 0x66

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0x2f

    const/16 v1, 0x76

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CB_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CB_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xcc

    const/16 v1, 0xca

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xcc

    const/16 v1, 0xca

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xcc

    const/16 v1, 0xca

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xcc

    const/16 v1, 0xca

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xcc

    const/16 v1, 0xca

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xcc

    const/16 v1, 0xc9

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xcc

    const/16 v1, 0xc9

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xcc

    const/16 v1, 0xc8

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xcc

    const/16 v1, 0xcd

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xcc

    const/16 v1, 0xce

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xcc

    const/16 v1, 0xce

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xcc

    const/16 v1, 0xce

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xce

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CG_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CG_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xcc

    const/16 v1, 0xd3

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xcc

    const/16 v1, 0xd7

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xcc

    const/16 v1, 0xe1

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xcc

    const/16 v1, 0xe6

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xcf

    const/16 v1, 0xe6

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xcc

    const/16 v1, 0xd8

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xcc

    const/16 v1, 0xe0

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xcc

    const/16 v1, 0xe8

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xcc

    const/16 v1, 0xf2

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xcc

    const/16 v1, 0xfd

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xcc

    const/16 v1, 0xd0

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xcc

    const/16 v1, 0xd2

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xcc

    const/16 v1, 0xd3

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xcc

    const/16 v1, 0xd3

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xd2

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CR_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_20
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CR_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_20
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GB_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v3, 0x13

    const/16 v1, 0x13

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x25

    const/16 v1, 0x25

    goto :goto_0

    :pswitch_3
    const/16 v3, 0x33

    const/16 v1, 0x33

    goto :goto_0

    :pswitch_4
    const/16 v3, 0x3f

    const/16 v1, 0x3f

    goto :goto_0

    :pswitch_5
    const/16 v3, 0x4b

    const/16 v1, 0x4b

    goto :goto_0

    :pswitch_6
    const/16 v3, 0x55

    const/16 v1, 0x55

    goto :goto_0

    :pswitch_7
    const/16 v3, 0x5d

    const/16 v1, 0x5d

    goto :goto_0

    :pswitch_8
    const/16 v3, 0x67

    const/16 v1, 0x67

    goto :goto_0

    :pswitch_9
    const/16 v3, 0x6d

    const/16 v1, 0x6d

    goto :goto_0

    :pswitch_a
    const/16 v3, 0x73

    const/16 v1, 0x73

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/16 v3, 0x13

    const/16 v1, 0x13

    goto :goto_0

    :pswitch_d
    const/16 v3, 0x23

    const/16 v1, 0x23

    goto :goto_0

    :pswitch_e
    const/16 v3, 0x2f

    const/16 v1, 0x2f

    goto :goto_0

    :pswitch_f
    const/16 v3, 0x39

    const/16 v1, 0x39

    goto :goto_0

    :pswitch_10
    const/16 v3, 0x41

    const/16 v1, 0x41

    goto :goto_0

    :pswitch_11
    const/16 v3, 0x49

    const/16 v1, 0x49

    goto :goto_0

    :pswitch_12
    const/16 v3, 0x4f

    const/16 v1, 0x4f

    goto :goto_0

    :pswitch_13
    const/16 v3, 0x55

    const/16 v1, 0x55

    goto :goto_0

    :pswitch_14
    const/16 v3, 0x59

    const/16 v1, 0x59

    goto :goto_0

    :pswitch_15
    const/16 v3, 0x5e

    const/16 v1, 0x5e

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_1e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_20
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GB_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_6
    const/16 v3, 0x55

    const/16 v1, 0x55

    goto :goto_0

    :pswitch_7
    const/16 v3, 0x5d

    const/16 v1, 0x5d

    goto :goto_0

    :pswitch_8
    const/16 v3, 0x67

    const/16 v1, 0x67

    goto :goto_0

    :pswitch_9
    const/16 v3, 0x6d

    const/16 v1, 0x6d

    goto :goto_0

    :pswitch_a
    const/16 v3, 0x73

    const/16 v1, 0x73

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_11
    const/16 v3, 0x49

    const/16 v1, 0x49

    goto :goto_0

    :pswitch_12
    const/16 v3, 0x4f

    const/16 v1, 0x4f

    goto :goto_0

    :pswitch_13
    const/16 v3, 0x55

    const/16 v1, 0x55

    goto :goto_0

    :pswitch_14
    const/16 v3, 0x59

    const/16 v1, 0x59

    goto :goto_0

    :pswitch_15
    const/16 v3, 0x5e

    const/16 v1, 0x5e

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_20
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GG_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GG_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xcc

    const/16 v1, 0xd6

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xcc

    const/16 v1, 0xdd

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xcc

    const/16 v1, 0xe3

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xcc

    const/16 v1, 0xeb

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xcc

    const/16 v1, 0xf3

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xcc

    const/16 v1, 0xdc

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xcc

    const/16 v1, 0xe5

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xcc

    const/16 v1, 0xef

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xcc

    const/16 v1, 0xfb

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xcc

    const/16 v1, 0xd4

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xcc

    const/16 v1, 0xd7

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xcc

    const/16 v1, 0xd9

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xcc

    const/16 v1, 0xda

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xda

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GR_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1b
    const/16 v3, 0x15

    const/16 v1, 0x15

    goto :goto_0

    :pswitch_1c
    const/16 v3, 0x26

    const/16 v1, 0x26

    goto :goto_0

    :pswitch_1d
    const/16 v3, 0x33

    const/16 v1, 0x33

    goto :goto_0

    :pswitch_1e
    const/16 v3, 0x3f

    const/16 v1, 0x3f

    goto :goto_0

    :pswitch_1f
    const/16 v3, 0x49

    const/16 v1, 0x49

    goto :goto_0

    :pswitch_20
    const/16 v3, 0x51

    const/16 v1, 0x51

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GR_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1c
    const/16 v3, 0x26

    const/16 v1, 0x26

    goto :goto_0

    :pswitch_1d
    const/16 v3, 0x33

    const/16 v1, 0x33

    goto :goto_0

    :pswitch_1e
    const/16 v3, 0x3f

    const/16 v1, 0x3f

    goto :goto_0

    :pswitch_1f
    const/16 v3, 0x49

    const/16 v1, 0x49

    goto :goto_0

    :pswitch_20
    const/16 v3, 0x51

    const/16 v1, 0x51

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MB_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xea

    const/16 v1, 0xee

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xda

    const/16 v1, 0xe4

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xcc

    const/16 v1, 0xe2

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xbe

    const/16 v1, 0xe4

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xb3

    const/16 v1, 0xe4

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xa9

    const/16 v1, 0xea

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xa1

    const/16 v1, 0xf0

    goto :goto_0

    :pswitch_8
    const/16 v3, 0x98

    const/16 v1, 0xf6

    goto :goto_0

    :pswitch_9
    const/16 v3, 0x90

    const/16 v1, 0xfa

    goto :goto_0

    :pswitch_a
    const/16 v3, 0x8a

    const/16 v1, 0xfc

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xea

    const/16 v1, 0xee

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xda

    const/16 v1, 0xe4

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xcc

    const/16 v1, 0xe2

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xbe

    const/16 v1, 0xe4

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xb3

    const/16 v1, 0xe4

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xa9

    const/16 v1, 0xea

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xa1

    const/16 v1, 0xf0

    goto :goto_0

    :pswitch_13
    const/16 v3, 0x98

    const/16 v1, 0xf6

    goto :goto_0

    :pswitch_14
    const/16 v3, 0x90

    const/16 v1, 0xfa

    goto :goto_0

    :pswitch_15
    const/16 v3, 0x8a

    const/16 v1, 0xfc

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MB_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xa9

    const/16 v1, 0xea

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xa1

    const/16 v1, 0xf0

    goto :goto_0

    :pswitch_8
    const/16 v3, 0x98

    const/16 v1, 0xf6

    goto :goto_0

    :pswitch_9
    const/16 v3, 0x90

    const/16 v1, 0xfa

    goto :goto_0

    :pswitch_a
    const/16 v3, 0x8a

    const/16 v1, 0xfc

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xcc

    const/16 v1, 0xcd

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xcc

    const/16 v1, 0xce

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xcc

    const/16 v1, 0xcf

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xcc

    const/16 v1, 0xd1

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xcc

    const/16 v1, 0xd2

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xa9

    const/16 v1, 0xea

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xa1

    const/16 v1, 0xf0

    goto :goto_0

    :pswitch_13
    const/16 v3, 0x98

    const/16 v1, 0xf6

    goto :goto_0

    :pswitch_14
    const/16 v3, 0x90

    const/16 v1, 0xfa

    goto :goto_0

    :pswitch_15
    const/16 v3, 0x8a

    const/16 v1, 0xfc

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xcc

    const/16 v1, 0xd8

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xcc

    const/16 v1, 0xde

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xcc

    const/16 v1, 0xe4

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xcc

    const/16 v1, 0xeb

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xf1

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MG_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x1

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x1

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x5

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/16 v1, 0xb

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/16 v1, 0xd

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/16 v1, 0xa

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/4 v1, 0x4

    goto :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_20
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MG_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x1

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x1

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_20
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MR_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xff

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xf0

    const/16 v1, 0xf0

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xdf

    const/16 v1, 0xdf

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xcc

    const/16 v1, 0xcc

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xb6

    const/16 v1, 0xb6

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MR_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xcc

    const/16 v1, 0xf9

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xcc

    const/16 v1, 0xfa

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xcc

    const/16 v1, 0xe1

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xcc

    const/16 v1, 0xe8

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xcc

    const/16 v1, 0xed

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xcc

    const/16 v1, 0xee

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xec

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xf0

    const/16 v1, 0xf0

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xdf

    const/16 v1, 0xdf

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xcc

    const/16 v1, 0xcc

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xb6

    const/16 v1, 0xb6

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RB_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/16 v1, 0x24

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/16 v1, 0x42

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const/16 v1, 0x5c

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/16 v1, 0x75

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/16 v1, 0x88

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x0

    const/16 v1, 0x9c

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x0

    const/16 v1, 0xac

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x0

    const/16 v1, 0xbc

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x0

    const/16 v1, 0xca

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x0

    const/16 v1, 0xd8

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x0

    const/16 v1, 0x24

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x0

    const/16 v1, 0x42

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/16 v1, 0x5c

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/16 v1, 0x75

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x0

    const/16 v1, 0x88

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x0

    const/16 v1, 0x9c

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x0

    const/16 v1, 0xac

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x0

    const/16 v1, 0xbc

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x0

    const/16 v1, 0xca

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x0

    const/16 v1, 0xd8

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_20
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RB_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x0

    const/16 v1, 0x9c

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x0

    const/16 v1, 0xac

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x0

    const/16 v1, 0xbc

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x0

    const/16 v1, 0xca

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x0

    const/16 v1, 0xd8

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x0

    const/4 v1, 0x3

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x0

    const/16 v1, 0x9c

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x0

    const/16 v1, 0xac

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x0

    const/16 v1, 0xbc

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x0

    const/16 v1, 0xca

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x0

    const/16 v1, 0xd8

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_20
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RG_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_20
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RG_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_20
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RR_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RR_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xcc

    const/16 v1, 0xef

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xcc

    const/16 v1, 0xee

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xcc

    const/16 v1, 0xdc

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xcc

    const/16 v1, 0xe2

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xcc

    const/16 v1, 0xe4

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xcc

    const/16 v1, 0xe4

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xe2

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YB_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_20
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YB_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_10
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_11
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_12
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_13
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_14
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_15
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_17
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_18
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_20
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YG_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xcc

    const/16 v1, 0xcf

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YG_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xcc

    const/16 v1, 0xcf

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xcc

    const/16 v1, 0xd1

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xcc

    const/16 v1, 0xd3

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xcc

    const/16 v1, 0xd5

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xcc

    const/16 v1, 0xd8

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xcc

    const/16 v1, 0xcf

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xcc

    const/16 v1, 0xd0

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xcc

    const/16 v1, 0xd3

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xcc

    const/16 v1, 0xd5

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xcc

    const/16 v1, 0xd8

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xcc

    const/16 v1, 0xcf

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xcc

    const/16 v1, 0xd0

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xcc

    const/16 v1, 0xd2

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xcc

    const/16 v1, 0xd3

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xd4

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YR_DMC(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YR_Hybrid(IDD)[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xcc

    const/16 v1, 0xc2

    goto :goto_0

    :pswitch_2
    const/16 v3, 0xcc

    const/16 v1, 0xbc

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xcc

    const/16 v1, 0xb5

    goto :goto_0

    :pswitch_4
    const/16 v3, 0xcc

    const/16 v1, 0xad

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xcc

    const/16 v1, 0xa4

    goto :goto_0

    :pswitch_6
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_7
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_8
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_9
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :pswitch_a
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_c
    const/16 v3, 0xcc

    const/16 v1, 0xc0

    goto :goto_0

    :pswitch_d
    const/16 v3, 0xcc

    const/16 v1, 0xba

    goto :goto_0

    :pswitch_e
    const/16 v3, 0xcc

    const/16 v1, 0xb3

    goto :goto_0

    :pswitch_f
    const/16 v3, 0xcc

    const/16 v1, 0xab

    goto :goto_0

    :pswitch_10
    const/16 v3, 0xcc

    const/16 v1, 0xa2

    goto :goto_0

    :pswitch_11
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_12
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_13
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_14
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :pswitch_15
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_17
    const/16 v3, 0xcc

    const/16 v1, 0xc7

    goto/16 :goto_0

    :pswitch_18
    const/16 v3, 0xcc

    const/16 v1, 0xc5

    goto/16 :goto_0

    :pswitch_19
    const/16 v3, 0xcc

    const/16 v1, 0xc3

    goto/16 :goto_0

    :pswitch_1a
    const/16 v3, 0xcc

    const/16 v1, 0xc2

    goto/16 :goto_0

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xc1

    goto/16 :goto_0

    :pswitch_1c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_1f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_0

    :cond_2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method private roundHalfUp(D)I
    .locals 5

    const/4 v0, 0x0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    return v0
.end method


# virtual methods
.method public getColorTransferValue_DMC(IIIDD)I
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RR_DMC(IDD)[I

    move-result-object v10

    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x1

    aget v2, v10, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    :cond_1
    const/4 v2, -0x1

    return v2

    :cond_2
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RG_DMC(IDD)[I

    move-result-object v10

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RB_DMC(IDD)[I

    move-result-object v10

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    const/4 v2, 0x1

    if-ne p2, v2, :cond_5

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YR_DMC(IDD)[I

    move-result-object v10

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YG_DMC(IDD)[I

    move-result-object v10

    goto :goto_0

    :cond_6
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YB_DMC(IDD)[I

    move-result-object v10

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    if-ne p1, v2, :cond_a

    const/4 v2, 0x1

    if-ne p2, v2, :cond_8

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GR_DMC(IDD)[I

    move-result-object v10

    goto :goto_0

    :cond_8
    const/4 v2, 0x3

    if-ne p2, v2, :cond_9

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GG_DMC(IDD)[I

    move-result-object v10

    goto :goto_0

    :cond_9
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GB_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x4

    if-ne p1, v2, :cond_d

    const/4 v2, 0x1

    if-ne p2, v2, :cond_b

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CR_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x3

    if-ne p2, v2, :cond_c

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CG_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CB_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x5

    if-ne p1, v2, :cond_10

    const/4 v2, 0x1

    if-ne p2, v2, :cond_e

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BR_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x3

    if-ne p2, v2, :cond_f

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BG_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BB_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x6

    if-ne p1, v2, :cond_13

    const/4 v2, 0x1

    if-ne p2, v2, :cond_11

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MR_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x3

    if-ne p2, v2, :cond_12

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MG_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_12
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MB_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_13
    const/4 v2, 0x2

    new-array v10, v2, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v10, v3

    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v10, v3

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    sub-int v8, v2, v3

    move-wide/from16 v0, p6

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v9

    int-to-double v2, v8

    int-to-double v4, v9

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    aget v4, v10, v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-int v11, v2

    return v11
.end method

.method public getColorTransferValue_Hybrid(IIIDD)I
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RR_Hybrid(IDD)[I

    move-result-object v10

    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x1

    aget v2, v10, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    :cond_1
    const/4 v2, -0x1

    return v2

    :cond_2
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RG_Hybrid(IDD)[I

    move-result-object v10

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RB_Hybrid(IDD)[I

    move-result-object v10

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    const/4 v2, 0x1

    if-ne p2, v2, :cond_5

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YR_Hybrid(IDD)[I

    move-result-object v10

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YG_Hybrid(IDD)[I

    move-result-object v10

    goto :goto_0

    :cond_6
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YB_Hybrid(IDD)[I

    move-result-object v10

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    if-ne p1, v2, :cond_a

    const/4 v2, 0x1

    if-ne p2, v2, :cond_8

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GR_Hybrid(IDD)[I

    move-result-object v10

    goto :goto_0

    :cond_8
    const/4 v2, 0x3

    if-ne p2, v2, :cond_9

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GG_Hybrid(IDD)[I

    move-result-object v10

    goto :goto_0

    :cond_9
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GB_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x4

    if-ne p1, v2, :cond_d

    const/4 v2, 0x1

    if-ne p2, v2, :cond_b

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CR_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x3

    if-ne p2, v2, :cond_c

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CG_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CB_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x5

    if-ne p1, v2, :cond_10

    const/4 v2, 0x1

    if-ne p2, v2, :cond_e

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BR_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x3

    if-ne p2, v2, :cond_f

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BG_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BB_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x6

    if-ne p1, v2, :cond_13

    const/4 v2, 0x1

    if-ne p2, v2, :cond_11

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MR_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x3

    if-ne p2, v2, :cond_12

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MG_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_12
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MB_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_0

    :cond_13
    const/4 v2, 0x2

    new-array v10, v2, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v10, v3

    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v10, v3

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    sub-int v8, v2, v3

    move-wide/from16 v0, p6

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v9

    int-to-double v2, v8

    int-to-double v4, v9

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    aget v4, v10, v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-int v11, v2

    return v11
.end method

.method public getPredefinedValueForEachType(II)[D
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [D

    add-int/lit8 v1, p1, -0x1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    return-object v1

    :pswitch_0
    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_severity:[D

    aget-wide v2, v1, p2

    aput-wide v2, v0, v4

    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_userParameter:[D

    aget-wide v2, v1, p2

    aput-wide v2, v0, v5

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_severity:[D

    aget-wide v2, v1, p2

    aput-wide v2, v0, v4

    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_userParameter:[D

    aget-wide v2, v1, p2

    aput-wide v2, v0, v5

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_severity:[D

    aget-wide v2, v1, p2

    aput-wide v2, v0, v4

    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_userParameter:[D

    aget-wide v2, v1, p2

    aput-wide v2, v0, v5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
