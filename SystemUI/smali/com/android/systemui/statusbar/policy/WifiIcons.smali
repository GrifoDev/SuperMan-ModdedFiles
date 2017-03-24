.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final NWBOOSTER_WIFI_SIGNAL_STRENGTH:[I

.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_ACTIVITY_DEFAULT:[I

.field static final WIFI_ACTIVITY_KT:[I

.field static final WIFI_ACTIVITY_LGT:[I

.field static final WIFI_CALLING_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_KT:[[I

.field static final WIFI_SIGNAL_STRENGTH_LGT:[[I

.field static final WIFI_SIGNAL_STRENGTH_PURE:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const v10, 0x7f020402

    const v9, 0x7f020401

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v8, [[I

    const v1, 0x7f0206c7

    const v2, 0x7f0206c8

    const v3, 0x7f0206c9

    const v4, 0x7f0206ca

    const v5, 0x7f0206cb

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v11, 0x1

    const-string v12, "switch_wifi"

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
    const v1, 0x7f0208a3

    const v2, 0x7f0208ae

    const v3, 0x7f0208b9

    const v4, 0x7f0208c4

    const v5, 0x7f0208cf

    goto/16 :goto_0

    :cond_1
    const v1, 0x7f0208a4

    const v2, 0x7f0208af

    const v3, 0x7f0208ba

    const v4, 0x7f0208c5

    const v5, 0x7f0208d0

    goto/16 :goto_0

    :cond_2
    const v1, 0x7f0208a5

    const v2, 0x7f0208b0

    const v3, 0x7f0208bb

    const v4, 0x7f0208c6

    const v5, 0x7f0208d1

    goto/16 :goto_0

    :cond_3
    const v1, 0x7f0208a6

    const v2, 0x7f0208b1

    const v3, 0x7f0208bc

    const v4, 0x7f0208c7

    const v5, 0x7f0208d2

    goto/16 :goto_0

    :cond_4
    const v1, 0x7f0208a7

    const v2, 0x7f0208b2

    const v3, 0x7f0208bd

    const v4, 0x7f0208c8

    const v5, 0x7f0208d3

    goto :goto_0

    :cond_5
    const v1, 0x7f0208a8

    const v2, 0x7f0208b3

    const v3, 0x7f0208be

    const v4, 0x7f0208c9

    const v5, 0x7f0208d4

    goto :goto_0

    :cond_6
    const v1, 0x7f0208a9

    const v2, 0x7f0208b4

    const v3, 0x7f0208bf

    const v4, 0x7f0208ca

    const v5, 0x7f0208d5

    goto :goto_0

    :cond_7
    const v1, 0x7f0208aa

    const v2, 0x7f0208b5

    const v3, 0x7f0208c0

    const v4, 0x7f0208cb

    const v5, 0x7f0208d6

    goto :goto_0

    :cond_8
    const v1, 0x7f0208a0

    const v2, 0x7f0208ab

    const v3, 0x7f0208b6

    const v4, 0x7f0208c1

    const v5, 0x7f0208cc

    goto :goto_0

    :cond_9
    const v1, 0x7f0208a1

    const v2, 0x7f0208ac

    const v3, 0x7f0208b7

    const v4, 0x7f0208c2

    const v5, 0x7f0208cd

    goto :goto_0

    :cond_a
    const v1, 0x7f0208a2

    const v2, 0x7f0208ad

    const v3, 0x7f0208b8

    const v4, 0x7f0208c3

    const v5, 0x7f0208ce

    goto :goto_0

    :cond_b
    const v1, 0x7f0206d1

    const v2, 0x7f0206d3

    const v3, 0x7f0206d5

    const v4, 0x7f0206d7

    const v5, 0x7f0206d9

    :goto_0
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f0206cc

    const v2, 0x7f0206cd

    const v3, 0x7f0206ce

    const v4, 0x7f0206cf

    const v5, 0x7f0206d0

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0206d2

    const v2, 0x7f0206d4

    const v3, 0x7f0206d6

    const v4, 0x7f0206d8

    const v5, 0x7f0206da

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_PURE:[[I

    new-array v0, v8, [[I

    const v1, 0x7f0206c2

    const v2, 0x7f0206c3

    const v3, 0x7f0206c4

    const v4, 0x7f0206c5

    const v5, 0x7f0206c6

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0206c2

    const v2, 0x7f0206c3

    const v3, 0x7f0206c4

    const v4, 0x7f0206c5

    const v5, 0x7f0206c6

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_CALLING_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f020403

    const v2, 0x7f020404

    const v3, 0x7f020405

    filled-new-array {v9, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020403

    const v2, 0x7f020404

    const v3, 0x7f020405

    filled-new-array {v9, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    const v0, 0x7f0205f2

    const v1, 0x7f0205f3

    const v2, 0x7f0205f4

    const v3, 0x7f0205f5

    const v4, 0x7f0205f6

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[I

    new-array v0, v8, [[I

    const v1, 0x7f0206e4

    const v2, 0x7f0206e5

    const v3, 0x7f0206e6

    const v4, 0x7f0206e7

    const v5, 0x7f0206e8

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0206e4

    const v2, 0x7f0206e5

    const v3, 0x7f0206e6

    const v4, 0x7f0206e7

    const v5, 0x7f0206e8

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    new-array v0, v8, [[I

    const v1, 0x7f0206db

    const v2, 0x7f0206dc

    const v3, 0x7f0206dd

    const v4, 0x7f0206de

    const v5, 0x7f0206df

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0206db

    const v2, 0x7f0206dc

    const v3, 0x7f0206dd

    const v4, 0x7f0206de

    const v5, 0x7f0206df

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_KT:[[I

    const/4 v11, 0x1

    const-string v12, "arrow_wifi"

    invoke-static {v12, v11}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_d

    const v13, 0x1

    if-eq v12, v13, :cond_d

    const v13, 0x2

    if-eq v12, v13, :cond_c

    :cond_c
    const v0, 0x7f020804

    const v1, 0x7f020804

    const v2, 0x7f020804

    const v3, 0x7f020804

    goto :goto_1

    :cond_d
    const v0, 0x7f020692

    const v1, 0x7f020684

    const v2, 0x7f020699

    const v3, 0x7f02068c

    :goto_1
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_DEFAULT:[I

    const v0, 0x7f0206eb

    const v1, 0x7f0206e9

    const v2, 0x7f0206ec

    const v3, 0x7f0206ea

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_LGT:[I

    const v0, 0x7f0206e2

    const v1, 0x7f0206e0

    const v2, 0x7f0206e3

    const v3, 0x7f0206e1

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_KT:[I

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
