.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_SIGNAL_STRENGTH_SECURE:[[I

.field static final WIFI_ACTIVITY_DEFAULT:[I

.field static final WIFI_ACTIVITY_KT:[I

.field static final WIFI_ACTIVITY_LGT:[I

.field static final WIFI_ACTIVITY_VZW:[I

.field static final WIFI_CALLING_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_KT:[[I

.field static final WIFI_SIGNAL_STRENGTH_LGT:[[I

.field static final WIFI_SIGNAL_STRENGTH_PURE:[[I

.field static final WIFI_SIGNAL_STRENGTH_VZW:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const v10, 0x7f080533

    const v9, 0x7f080532

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v8, [[I

    const v1, 0x7f080718

    const v2, 0x7f080719

    const v3, 0x7f08071a

    const v4, 0x7f08071b

    const v5, 0x7f08071c

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v11, 0x1

    const-string/jumbo v12, "switch_wifi"

    invoke-static {v12, v11}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_b

    const v13, 0x1

    if-eq v12, v13, :cond_b

    const v13, 0x2

    if-eq v12, v13, :cond_0

    const v13, 0x3

    if-eq v12, v13, :cond_1

    const v13, 0x4

    if-eq v12, v13, :cond_2

    const v13, 0x5

    if-eq v12, v13, :cond_3

    const v13, 0x6

    if-eq v12, v13, :cond_4

    const v13, 0x7

    if-eq v12, v13, :cond_5

    const v13, 0x8

    if-eq v12, v13, :cond_6

    const v13, 0x9

    if-eq v12, v13, :cond_7

    const v13, 0xa

    if-eq v12, v13, :cond_8

    const v13, 0xb

    if-eq v12, v13, :cond_9

    const v13, 0xc

    if-eq v12, v13, :cond_a

    :cond_0
    const-string/jumbo v11, "stat_sys_wifi_signal_0_2"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_2"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_2"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_2"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_2"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v11, "stat_sys_wifi_signal_0_3"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_3"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_3"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_3"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_3"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v11, "stat_sys_wifi_signal_0_4"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_4"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_4"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_4"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_4"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v11, "stat_sys_wifi_signal_0_5"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_5"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_5"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_5"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_5"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v11, "stat_sys_wifi_signal_06"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_6"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_6"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_6"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_6"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v11, "stat_sys_wifi_signal_0_7"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_7"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_7"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_7"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_7"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v11, "stat_sys_wifi_signal_0_8"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_8"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_8"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_8"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_8"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v11, "stat_sys_wifi_signal_0_9"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_9"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_9"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_9"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_9"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v11, "stat_sys_wifi_signal_0_10"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_10"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_10"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_10"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_10"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_9
    const-string/jumbo v11, "stat_sys_wifi_signal_0_11"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_11"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_11"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_11"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_11"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_a
    const-string/jumbo v11, "stat_sys_wifi_signal_0_12"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_12"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_12"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_12"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_12"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_b
    const v1, 0x7f080725

    const v2, 0x7f080728

    const v3, 0x7f08072b

    const v4, 0x7f08072e

    const v5, 0x7f080731

    :goto_0
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f08071d

    const v2, 0x7f08071e

    const v3, 0x7f08071f

    const v4, 0x7f080720

    const v5, 0x7f080721

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f080726

    const v2, 0x7f080729

    const v3, 0x7f08072c

    const v4, 0x7f08072f

    const v5, 0x7f080732

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_PURE:[[I

    new-array v0, v8, [[I

    const v1, 0x7f080713

    const v2, 0x7f080714

    const v3, 0x7f080715

    const v4, 0x7f080716

    const v5, 0x7f080717

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f080713

    const v2, 0x7f080714

    const v3, 0x7f080715

    const v4, 0x7f080716

    const v5, 0x7f080717

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_CALLING_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f080546

    const v2, 0x7f080547

    const v3, 0x7f080548

    const v4, 0x7f080549

    const v5, 0x7f08054a

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f080546

    const v2, 0x7f080547

    const v3, 0x7f080548

    const v4, 0x7f080549

    const v5, 0x7f08054a

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f080534

    const v2, 0x7f080535

    const v3, 0x7f080536

    filled-new-array {v9, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f080534

    const v2, 0x7f080535

    const v3, 0x7f080536

    filled-new-array {v9, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH_SECURE:[[I

    new-array v0, v8, [[I

    const v1, 0x7f080681

    const v2, 0x7f080682

    const v3, 0x7f080683

    const v4, 0x7f080684

    const v5, 0x7f080685

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f08067c

    const v2, 0x7f08067d

    const v3, 0x7f08067e

    const v4, 0x7f08067f

    const v5, 0x7f080680

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f08073f

    const v2, 0x7f080740

    const v3, 0x7f080741

    const v4, 0x7f080742

    const v5, 0x7f080743

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f08073f

    const v2, 0x7f080740

    const v3, 0x7f080741

    const v4, 0x7f080742

    const v5, 0x7f080743

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    new-array v0, v8, [[I

    const v1, 0x7f080736

    const v2, 0x7f080737

    const v3, 0x7f080738

    const v4, 0x7f080739

    const v5, 0x7f08073a

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f080736

    const v2, 0x7f080737

    const v3, 0x7f080738

    const v4, 0x7f080739

    const v5, 0x7f08073a

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_KT:[[I

    new-array v0, v8, [[I

    const v1, 0x7f080718

    const v2, 0x7f080719

    const v3, 0x7f08071a

    const v4, 0x7f08071b

    const v5, 0x7f08071c

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f08074b

    const v2, 0x7f08074c

    const v3, 0x7f08074d

    const v4, 0x7f08074e

    const v5, 0x7f08074f

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_VZW:[[I

    const/4 v11, 0x1

    const-string/jumbo v12, "arrow_wifi"

    invoke-static {v12, v11}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_d

    const v13, 0x1

    if-eq v12, v13, :cond_d

    const v13, 0x2

    if-eq v12, v13, :cond_c

    :cond_c
    const-string v11, "no_arrows"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v11, "no_arrows"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v11, "no_arrows"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v11, "no_arrows"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_d
    const v0, 0x7f080748

    const v1, 0x7f080734

    const v2, 0x7f08074a

    const v3, 0x7f080735

    :goto_1
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_DEFAULT:[I

    const v0, 0x7f080746

    const v1, 0x7f080744

    const v2, 0x7f080747

    const v3, 0x7f080745

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_LGT:[I

    const v0, 0x7f08073d

    const v1, 0x7f08073b

    const v2, 0x7f08073e

    const v3, 0x7f08073c

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_KT:[I

    const v0, 0x7f0806e0

    const v1, 0x7f0806d1

    const v2, 0x7f0806e8

    const v3, 0x7f0806da

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_VZW:[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v6

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
