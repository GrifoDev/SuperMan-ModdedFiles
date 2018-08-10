.class public Landroid/renderscript/Element;
.super Landroid/renderscript/BaseObj;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Element$Builder;,
        Landroid/renderscript/Element$DataKind;,
        Landroid/renderscript/Element$DataType;
    }
.end annotation


# static fields
.field private static final synthetic -android-renderscript-Element$DataKindSwitchesValues:[I

.field private static final synthetic -android-renderscript-Element$DataTypeSwitchesValues:[I


# instance fields
.field mArraySizes:[I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/renderscript/Element;

.field mKind:Landroid/renderscript/Element$DataKind;

.field mNormalized:Z

.field mOffsetInBytes:[I

.field mSize:I

.field mType:Landroid/renderscript/Element$DataType;

.field mVectorSize:I

.field mVisibleElementMap:[I


# direct methods
.method private static synthetic -getandroid-renderscript-Element$DataKindSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataKindSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataKindSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/renderscript/Element$DataKind;->values()[Landroid/renderscript/Element$DataKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataKindSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getandroid-renderscript-Element$DataTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/renderscript/Element$DataType;->values()[Landroid/renderscript/Element$DataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1d

    :goto_0
    :try_start_1
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1c

    :goto_1
    :try_start_2
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1b

    :goto_2
    :try_start_3
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1a

    :goto_3
    :try_start_4
    sget-object v1, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_19

    :goto_4
    :try_start_5
    sget-object v1, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_18

    :goto_5
    :try_start_6
    sget-object v1, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_17

    :goto_6
    :try_start_7
    sget-object v1, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_16

    :goto_7
    :try_start_8
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_15

    :goto_8
    :try_start_9
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_14

    :goto_9
    :try_start_a
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_FONT:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_13

    :goto_a
    :try_start_b
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_12

    :goto_b
    :try_start_c
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_11

    :goto_c
    :try_start_d
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_10

    :goto_d
    :try_start_e
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_f

    :goto_e
    :try_start_f
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_e

    :goto_f
    :try_start_10
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_d

    :goto_10
    :try_start_11
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_c

    :goto_11
    :try_start_12
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_b

    :goto_12
    :try_start_13
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_a

    :goto_13
    :try_start_14
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_9

    :goto_14
    :try_start_15
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_8

    :goto_15
    :try_start_16
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_7

    :goto_16
    :try_start_17
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_6

    :goto_17
    :try_start_18
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_5

    :goto_18
    :try_start_19
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_4

    :goto_19
    :try_start_1a
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_3

    :goto_1a
    :try_start_1b
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_2

    :goto_1b
    :try_start_1c
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1

    :goto_1c
    :try_start_1d
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    :goto_1d
    sput-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1d

    :catch_1
    move-exception v1

    goto :goto_1c

    :catch_2
    move-exception v1

    goto :goto_1b

    :catch_3
    move-exception v1

    goto :goto_1a

    :catch_4
    move-exception v1

    goto :goto_19

    :catch_5
    move-exception v1

    goto :goto_18

    :catch_6
    move-exception v1

    goto :goto_17

    :catch_7
    move-exception v1

    goto :goto_16

    :catch_8
    move-exception v1

    goto :goto_15

    :catch_9
    move-exception v1

    goto :goto_14

    :catch_a
    move-exception v1

    goto :goto_13

    :catch_b
    move-exception v1

    goto/16 :goto_12

    :catch_c
    move-exception v1

    goto/16 :goto_11

    :catch_d
    move-exception v1

    goto/16 :goto_10

    :catch_e
    move-exception v1

    goto/16 :goto_f

    :catch_f
    move-exception v1

    goto/16 :goto_e

    :catch_10
    move-exception v1

    goto/16 :goto_d

    :catch_11
    move-exception v1

    goto/16 :goto_c

    :catch_12
    move-exception v1

    goto/16 :goto_b

    :catch_13
    move-exception v1

    goto/16 :goto_a

    :catch_14
    move-exception v1

    goto/16 :goto_9

    :catch_15
    move-exception v1

    goto/16 :goto_8

    :catch_16
    move-exception v1

    goto/16 :goto_7

    :catch_17
    move-exception v1

    goto/16 :goto_6

    :catch_18
    move-exception v1

    goto/16 :goto_5

    :catch_19
    move-exception v1

    goto/16 :goto_4

    :catch_1a
    move-exception v1

    goto/16 :goto_3

    :catch_1b
    move-exception v1

    goto/16 :goto_2

    :catch_1c
    move-exception v1

    goto/16 :goto_1

    :catch_1d
    move-exception v1

    goto/16 :goto_0
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-eq p4, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-eq p4, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-eq p4, v0, :cond_1

    const/4 v0, 0x3

    if-ne p7, v0, :cond_0

    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    :goto_0
    iput-object p4, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iput-object p5, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    iput-boolean p6, p0, Landroid/renderscript/Element;->mNormalized:Z

    iput p7, p0, Landroid/renderscript/Element;->mVectorSize:I

    return-void

    :cond_0
    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p7

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    goto :goto_0

    :cond_1
    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    goto :goto_0
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/renderscript/Element;->mVectorSize:I

    iput-object p4, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    iput-object p5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iput-object p6, p0, Landroid/renderscript/Element;->mArraySizes:[I

    sget-object v1, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    iput-object v1, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    iput-object v1, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget v2, p0, Landroid/renderscript/Element;->mSize:I

    aput v2, v1, v0

    iget v1, p0, Landroid/renderscript/Element;->mSize:I

    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/renderscript/Element;->mSize:I

    iget-object v3, p0, Landroid/renderscript/Element;->mArraySizes:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/renderscript/Element;->updateVisibleSubElements()V

    return-void
.end method

.method public static ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static BOOLEAN(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static ELEMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static F64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static FONT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_FONT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static I8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public static MATRIX_2X2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static MATRIX_3X3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static PROGRAM_RASTER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static RGBA_5551(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static RGB_888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static SAMPLER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static SCRIPT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static TYPE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static YUV(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;
    .locals 17

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Unsupported DataKind"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Unsupported DataType"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_2

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_3

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_3

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_4

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_5

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_5

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const/4 v8, 0x1

    invoke-static {}, Landroid/renderscript/Element;->-getandroid-renderscript-Element$DataKindSwitchesValues()[I

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    const/4 v7, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/renderscript/Element$DataType;->mID:I

    int-to-long v4, v2

    move-object/from16 v0, p2

    iget v6, v0, Landroid/renderscript/Element$DataKind;->mID:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v10

    new-instance v9, Landroid/renderscript/Element;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v9

    :pswitch_0
    const/4 v8, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v8, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v8, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v8, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;
    .locals 17

    sget-object v14, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/renderscript/Element$DataType;->mID:I

    int-to-long v4, v2

    iget v6, v14, Landroid/renderscript/Element$DataKind;->mID:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v10

    new-instance v9, Landroid/renderscript/Element;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v9
.end method

.method public static createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;
    .locals 17

    const/4 v2, 0x2

    move/from16 v0, p2

    if-lt v0, v2, :cond_0

    const/4 v2, 0x4

    move/from16 v0, p2

    if-le v0, v2, :cond_1

    :cond_0
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Vector size out of range 2-4."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {}, Landroid/renderscript/Element;->-getandroid-renderscript-Element$DataTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Cannot create vector of non-primitive type."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    sget-object v14, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/renderscript/Element$DataType;->mID:I

    int-to-long v4, v2

    iget v6, v14, Landroid/renderscript/Element$DataKind;->mID:I

    move-object/from16 v3, p0

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v10

    new-instance v9, Landroid/renderscript/Element;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move v15, v7

    move/from16 v16, p2

    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateVisibleSubElements()V
    .locals 8

    const/16 v7, 0x23

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    array-length v3, v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v0, v3, :cond_3

    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_4

    iget-object v5, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    add-int/lit8 v1, v2, 0x1

    aput v0, v5, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public getBytesSize()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Element;->mSize:I

    return v0
.end method

.method public getDataKind()Landroid/renderscript/Element$DataKind;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    return-object v0
.end method

.method public getDataType()Landroid/renderscript/Element$DataType;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v0
.end method

.method public getSubElement(I)Landroid/renderscript/Element;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSubElementArraySize(I)I
    .locals 2

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mArraySizes:[I

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getSubElementCount()I
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    return v0
.end method

.method public getSubElementName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSubElementOffsetBytes(I)I
    .locals 2

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getVectorSize()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Element;->mVectorSize:I

    return v0
.end method

.method public isCompatible(Landroid/renderscript/Element;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    iget v2, p0, Landroid/renderscript/Element;->mSize:I

    iget v3, p1, Landroid/renderscript/Element;->mSize:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v3, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget-object v3, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/renderscript/Element;->mVectorSize:I

    iget v3, p1, Landroid/renderscript/Element;->mVectorSize:I

    if-ne v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isComplex()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method updateFromNative()V
    .locals 14

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    const/4 v1, 0x5

    new-array v0, v1, [I

    iget-object v1, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    iget-object v5, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v5}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v12

    invoke-virtual {v1, v12, v13, v0}, Landroid/renderscript/RenderScript;->nElementGetNativeData(J[I)V

    const/4 v1, 0x2

    aget v1, v0, v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/renderscript/Element;->mNormalized:Z

    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Landroid/renderscript/Element;->mVectorSize:I

    iput v3, p0, Landroid/renderscript/Element;->mSize:I

    invoke-static {}, Landroid/renderscript/Element$DataType;->values()[Landroid/renderscript/Element$DataType;

    move-result-object v5

    array-length v6, v5

    move v1, v3

    :goto_1
    if-ge v1, v6, :cond_2

    aget-object v8, v5, v1

    iget v11, v8, Landroid/renderscript/Element$DataType;->mID:I

    aget v12, v0, v3

    if-ne v11, v12, :cond_0

    iput-object v8, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget-object v11, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v11, v11, Landroid/renderscript/Element$DataType;->mSize:I

    iget v12, p0, Landroid/renderscript/Element;->mVectorSize:I

    mul-int/2addr v11, v12

    iput v11, p0, Landroid/renderscript/Element;->mSize:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/renderscript/Element$DataKind;->values()[Landroid/renderscript/Element$DataKind;

    move-result-object v1

    array-length v5, v1

    :goto_2
    if-ge v3, v5, :cond_4

    aget-object v7, v1, v3

    iget v6, v7, Landroid/renderscript/Element$DataKind;->mID:I

    aget v11, v0, v2

    if-ne v6, v11, :cond_3

    iput-object v7, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x4

    aget v10, v0, v1

    if-lez v10, :cond_5

    new-array v1, v10, [Landroid/renderscript/Element;

    iput-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    new-array v1, v10, [Ljava/lang/String;

    iput-object v1, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    new-array v1, v10, [I

    iput-object v1, p0, Landroid/renderscript/Element;->mArraySizes:[I

    new-array v1, v10, [I

    iput-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    new-array v4, v10, [J

    iget-object v1, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v6, p0, Landroid/renderscript/Element;->mArraySizes:[I

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nElementGetSubElements(J[J[Ljava/lang/String;[I)V

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_5

    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    new-instance v2, Landroid/renderscript/Element;

    aget-wide v12, v4, v9

    iget-object v3, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v12, v13, v3}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;)V

    aput-object v2, v1, v9

    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroid/renderscript/Element;->updateFromNative()V

    iget-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget v2, p0, Landroid/renderscript/Element;->mSize:I

    aput v2, v1, v9

    iget v1, p0, Landroid/renderscript/Element;->mSize:I

    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v2, v2, v9

    iget v2, v2, Landroid/renderscript/Element;->mSize:I

    iget-object v3, p0, Landroid/renderscript/Element;->mArraySizes:[I

    aget v3, v3, v9

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Landroid/renderscript/Element;->updateVisibleSubElements()V

    return-void
.end method
