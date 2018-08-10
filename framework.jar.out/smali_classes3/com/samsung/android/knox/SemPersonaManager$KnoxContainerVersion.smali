.class public final enum Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
.super Ljava/lang/Enum;
.source "SemPersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemPersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KnoxContainerVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field private static final synthetic -com-samsung-android-knox-SemPersonaManager$KnoxContainerVersionSwitchesValues:[I

.field public static final enum KNOX_CONTAINER_VERSION_1_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_3_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_4_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_5_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_5_2:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_6_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_6_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_7_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_8_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_2_9_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_3_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_3_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_3_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum KNOX_CONTAINER_VERSION_NONE:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;


# direct methods
.method private static synthetic -getcom-samsung-android-knox-SemPersonaManager$KnoxContainerVersionSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->-com-samsung-android-knox-SemPersonaManager$KnoxContainerVersionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->-com-samsung-android-knox-SemPersonaManager$KnoxContainerVersionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->values()[Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_1_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_14

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_13

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_12

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_11

    :goto_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_10

    :goto_4
    :try_start_5
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_f

    :goto_5
    :try_start_6
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_e

    :goto_6
    :try_start_7
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_d

    :goto_7
    :try_start_8
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_c

    :goto_8
    :try_start_9
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_b

    :goto_9
    :try_start_a
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_2:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_9

    :goto_b
    :try_start_c
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_8

    :goto_c
    :try_start_d
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_7

    :goto_d
    :try_start_e
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_6

    :goto_e
    :try_start_f
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_8_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_5

    :goto_f
    :try_start_10
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_9_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4

    :goto_10
    :try_start_11
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_3

    :goto_11
    :try_start_12
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2

    :goto_12
    :try_start_13
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1

    :goto_13
    :try_start_14
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_0

    :goto_14
    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->-com-samsung-android-knox-SemPersonaManager$KnoxContainerVersionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_14

    :catch_1
    move-exception v1

    goto :goto_13

    :catch_2
    move-exception v1

    goto :goto_12

    :catch_3
    move-exception v1

    goto :goto_11

    :catch_4
    move-exception v1

    goto :goto_10

    :catch_5
    move-exception v1

    goto :goto_f

    :catch_6
    move-exception v1

    goto :goto_e

    :catch_7
    move-exception v1

    goto :goto_d

    :catch_8
    move-exception v1

    goto :goto_c

    :catch_9
    move-exception v1

    goto :goto_b

    :catch_a
    move-exception v1

    goto :goto_a

    :catch_b
    move-exception v1

    goto/16 :goto_9

    :catch_c
    move-exception v1

    goto/16 :goto_8

    :catch_d
    move-exception v1

    goto/16 :goto_7

    :catch_e
    move-exception v1

    goto/16 :goto_6

    :catch_f
    move-exception v1

    goto/16 :goto_5

    :catch_10
    move-exception v1

    goto/16 :goto_4

    :catch_11
    move-exception v1

    goto/16 :goto_3

    :catch_12
    move-exception v1

    goto/16 :goto_2

    :catch_13
    move-exception v1

    goto/16 :goto_1

    :catch_14
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_NONE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_1_0_0"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_1_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_0_0"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_1_0"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_2_0"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_3_0"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_3_1"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_4_0"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_4_1"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_5_0"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_5_1"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_5_2"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_2:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_6_0"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_6_1"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_7_0"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_7_1"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_8_0"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_8_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_2_9_0"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_9_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_3_0_0"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_3_1_0"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string/jumbo v1, "KNOX_CONTAINER_VERSION_3_2_0"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_1_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_2:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_8_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_9_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->$VALUES:[Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->$VALUES:[Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    return-object v0
.end method


# virtual methods
.method public getVersionNumber()I
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->-getcom-samsung-android-knox-SemPersonaManager$KnoxContainerVersionSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/16 v0, 0x64

    return v0

    :pswitch_1
    const/16 v0, 0xc8

    return v0

    :pswitch_2
    const/16 v0, 0xd2

    return v0

    :pswitch_3
    const/16 v0, 0xdc

    return v0

    :pswitch_4
    const/16 v0, 0xe6

    return v0

    :pswitch_5
    const/16 v0, 0xe7

    return v0

    :pswitch_6
    const/16 v0, 0xf0

    return v0

    :pswitch_7
    const/16 v0, 0xf1

    return v0

    :pswitch_8
    const/16 v0, 0xfa

    return v0

    :pswitch_9
    const/16 v0, 0xfb

    return v0

    :pswitch_a
    const/16 v0, 0xfc

    return v0

    :pswitch_b
    const/16 v0, 0x104

    return v0

    :pswitch_c
    const/16 v0, 0x105

    return v0

    :pswitch_d
    const/16 v0, 0x10e

    return v0

    :pswitch_e
    const/16 v0, 0x10f

    return v0

    :pswitch_f
    const/16 v0, 0x118

    return v0

    :pswitch_10
    const/16 v0, 0x122

    return v0

    :pswitch_11
    const/16 v0, 0x12c

    return v0

    :pswitch_12
    const/16 v0, 0x136

    return v0

    :pswitch_13
    const/16 v0, 0x140

    return v0

    nop

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
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->-getcom-samsung-android-knox-SemPersonaManager$KnoxContainerVersionSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "N/A"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "1.0.0"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "2.0.0"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "2.1.0"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "2.2.0"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "2.3.0"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "2.3.1"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "2.4.0"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "2.4.1"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "2.5.0"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "2.5.1"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "2.5.2"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "2.6.0"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "2.6.1"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "2.7.0"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "2.7.1"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "2.8.0"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "2.9.0"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "3.0.0"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "3.1.0"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "3.2.0"

    return-object v0

    nop

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
    .end packed-switch
.end method
