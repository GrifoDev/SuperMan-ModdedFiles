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

    const v10, 0x7f020405

    const v9, 0x7f020404

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v8, [[I

    const v1, 0x7f0206d1

    const v2, 0x7f0206d2

    const v3, 0x7f0206d3

    const v4, 0x7f0206d4

    const v5, 0x7f0206d5

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
    const v1, 0x7f020863

    const v2, 0x7f02086e

    const v3, 0x7f020879

    const v4, 0x7f020884

    const v5, 0x7f02088f

    goto/16 :goto_0

    :cond_1
    const v1, 0x7f020864

    const v2, 0x7f02086f

    const v3, 0x7f02087a

    const v4, 0x7f020885

    const v5, 0x7f020890

    goto/16 :goto_0

    :cond_2
    const v1, 0x7f020865

    const v2, 0x7f020870

    const v3, 0x7f02087b

    const v4, 0x7f020886

    const v5, 0x7f020891

    goto/16 :goto_0

    :cond_3
    const v1, 0x7f020866

    const v2, 0x7f020871

    const v3, 0x7f02087c

    const v4, 0x7f020887

    const v5, 0x7f020892

    goto/16 :goto_0

    :cond_4
    const v1, 0x7f020867

    const v2, 0x7f020872

    const v3, 0x7f02087d

    const v4, 0x7f020888

    const v5, 0x7f020893

    goto :goto_0

    :cond_5
    const v1, 0x7f020868

    const v2, 0x7f020873

    const v3, 0x7f02087e

    const v4, 0x7f020889

    const v5, 0x7f020894

    goto :goto_0

    :cond_6
    const v1, 0x7f020869

    const v2, 0x7f020874

    const v3, 0x7f02087f

    const v4, 0x7f02088a

    const v5, 0x7f020895

    goto :goto_0

    :cond_7
    const v1, 0x7f02086a

    const v2, 0x7f020875

    const v3, 0x7f020880

    const v4, 0x7f02088b

    const v5, 0x7f020896

    goto :goto_0

    :cond_8
    const v1, 0x7f020860

    const v2, 0x7f02086b

    const v3, 0x7f020876

    const v4, 0x7f020881

    const v5, 0x7f02088c

    goto :goto_0

    :cond_9
    const v1, 0x7f020861

    const v2, 0x7f02086c

    const v3, 0x7f020877

    const v4, 0x7f020882

    const v5, 0x7f02088d

    goto :goto_0

    :cond_a
    const v1, 0x7f020862

    const v2, 0x7f02086d

    const v3, 0x7f020878

    const v4, 0x7f020883

    const v5, 0x7f02088e

    goto :goto_0

    :cond_b
    const v1, 0x7f0206db

    const v2, 0x7f0206dd

    const v3, 0x7f0206df

    const v4, 0x7f0206e1

    const v5, 0x7f0206e3

    :goto_0
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f0206d6

    const v2, 0x7f0206d7

    const v3, 0x7f0206d8

    const v4, 0x7f0206d9

    const v5, 0x7f0206da

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0206dc

    const v2, 0x7f0206de

    const v3, 0x7f0206e0

    const v4, 0x7f0206e2

    const v5, 0x7f0206e4

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_PURE:[[I

    new-array v0, v8, [[I

    const v1, 0x7f0206cc

    const v2, 0x7f0206cd

    const v3, 0x7f0206ce

    const v4, 0x7f0206cf

    const v5, 0x7f0206d0

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0206cc

    const v2, 0x7f0206cd

    const v3, 0x7f0206ce

    const v4, 0x7f0206cf

    const v5, 0x7f0206d0

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_CALLING_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f020406

    const v2, 0x7f020407

    const v3, 0x7f020408

    filled-new-array {v9, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020406

    const v2, 0x7f020407

    const v3, 0x7f020408

    filled-new-array {v9, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    const v0, 0x7f0205fc

    const v1, 0x7f0205fd

    const v2, 0x7f0205fe

    const v3, 0x7f0205ff

    const v4, 0x7f020600

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[I

    new-array v0, v8, [[I

    const v1, 0x7f0206ee

    const v2, 0x7f0206ef

    const v3, 0x7f0206f0

    const v4, 0x7f0206f1

    const v5, 0x7f0206f2

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0206ee

    const v2, 0x7f0206ef

    const v3, 0x7f0206f0

    const v4, 0x7f0206f1

    const v5, 0x7f0206f2

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    new-array v0, v8, [[I

    const v1, 0x7f0206e5

    const v2, 0x7f0206e6

    const v3, 0x7f0206e7

    const v4, 0x7f0206e8

    const v5, 0x7f0206e9

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0206e5

    const v2, 0x7f0206e6

    const v3, 0x7f0206e7

    const v4, 0x7f0206e8

    const v5, 0x7f0206e9

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
    const v0, 0x7f0207bc

    const v1, 0x7f0207bc

    const v2, 0x7f0207bc

    const v3, 0x7f0207bc

    goto :goto_1

    :cond_d
    const v0, 0x7f02069c

    const v1, 0x7f02068e

    const v2, 0x7f0206a3

    const v3, 0x7f020696

    :goto_1
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_DEFAULT:[I

    const v0, 0x7f0206f5

    const v1, 0x7f0206f3

    const v2, 0x7f0206f6

    const v3, 0x7f0206f4

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_LGT:[I

    const v0, 0x7f0206ec

    const v1, 0x7f0206ea

    const v2, 0x7f0206ed

    const v3, 0x7f0206eb

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
