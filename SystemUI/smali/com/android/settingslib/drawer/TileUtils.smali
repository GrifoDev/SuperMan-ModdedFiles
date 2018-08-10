.class public Lcom/android/settingslib/drawer/TileUtils;
.super Ljava/lang/Object;
.source "TileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/TileUtils$1;,
        Lcom/android/settingslib/drawer/TileUtils$2;
    }
.end annotation


# static fields
.field private static final CATEGORY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENTRY_NAME:[Ljava/lang/String;

.field public static final TILE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private static isEnabledUltraPowerSaving:Z

.field private static isFactory:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Settings$SprTetherSettingsActivity"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$TRoamingSettingsActivity"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$DomesticSettingsActivity"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$ConnectionsSettingsActivity"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$SoundSettingsActivity"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$BlockNotificationListActivity"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$DisplaySettingsActivity"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$UsefulFeatureMainActivity"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$ManageApplicationsActivity"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$LockAndSecuritySettingsActivity"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$LockscreenSettingsActivity"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$BiometricsAndSecuritySettingsActivity"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$CloudAccountSettingsActivity"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$AccessibilitySettingsActivity"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$GeneralDeviceSettingsActivity"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$SoftwareUpdateSettingActivity"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$HelpActivity"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$DeviceInfoSettingsActivity"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "Settings$DevelopmentSettingsActivity"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/drawer/TileUtils;->ENTRY_NAME:[Ljava/lang/String;

    new-instance v0, Lcom/android/settingslib/drawer/TileUtils$1;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/TileUtils$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/TileUtils;->TILE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settingslib/drawer/TileUtils$2;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/TileUtils$2;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCategory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 9

    const/4 v6, 0x0

    new-instance v0, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>()V

    iput-object p1, v0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    return-object v5

    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-boolean v5, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v5, :cond_2

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    const-string/jumbo v5, "com.android.settings"

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v2, Landroid/content/pm/ResolveInfo;->priority:I

    :goto_1
    iput v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    const-string/jumbo v5, "TileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Adding category title : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "TileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Adding category key : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static getCategories(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v18, 0x1

    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v17

    const/16 v16, 0x0

    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v16

    :cond_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    sput-boolean v2, Lcom/android/settingslib/drawer/TileUtils;->isFactory:Z

    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/drawer/TileUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/android/settingslib/drawer/TileUtils;->isEnabledUltraPowerSaving:Z

    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/drawer/TileUtils;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v15

    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-ne v2, v4, :cond_2

    const-string/jumbo v4, "com.android.settings.action.SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    const-string/jumbo v4, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    const-string/jumbo v6, "com.android.settings.category.wireless"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v10, p4

    invoke-static/range {v2 .. v10}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V

    const-string/jumbo v4, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    const-string/jumbo v6, "com.android.settings.category.device"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v10, p4

    invoke-static/range {v2 .. v10}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V

    :cond_2
    if-eqz v18, :cond_1

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    :goto_2
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const-string/jumbo v4, "com.android.settings.action.EXTRA_SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    if-nez p2, :cond_1

    const-string/jumbo v4, "com.android.settings.action.IA_SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    if-eqz p3, :cond_1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_6
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settingslib/drawer/Tile;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settingslib/drawer/DashboardCategory;

    if-nez v12, :cond_8

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/drawer/TileUtils;->createCategory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v12

    if-nez v12, :cond_7

    const-string/jumbo v2, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t find category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    iget-object v2, v12, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v14, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    sget-boolean v2, Lcom/android/settingslib/drawer/TileUtils;->isFactory:Z

    if-nez v2, :cond_9

    if-eqz p5, :cond_a

    :cond_9
    const-string/jumbo v2, "TileUtils"

    const-string/jumbo v4, "TileUtils isFactory"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_3

    :cond_a
    if-eqz v16, :cond_d

    invoke-static {}, Lcom/android/settingslib/Utils;->isSupportGraceUXGraceView()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "KNOXCUSTOM_KIOSK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "VZW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "KNOXCUSTOM_KIOSK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "VZW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_3

    :cond_d
    if-eqz v15, :cond_14

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.action.SETTINGS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_e
    invoke-static {}, Lcom/android/settingslib/Utils;->isSupportGraceUXGraceView()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "GLOBAL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Common"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    invoke-static {}, Lcom/android/settingslib/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_f
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "VZW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "KIOSKCONTAINER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_3

    :cond_10
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "GLOBAL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Common"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "BETA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_11
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "KIOSKCONTAINER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_3

    :cond_12
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "VZW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Common"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Quick"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_13
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "KIOSKCONTAINER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_3

    :cond_14
    sget-boolean v2, Lcom/android/settingslib/drawer/TileUtils;->isEnabledUltraPowerSaving:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.action.SETTINGS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_15
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "UPSM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.action.SETTINGS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_17
    invoke-static {}, Lcom/android/settingslib/Utils;->isSupportGraceUXGraceView()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "GLOBAL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Common"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    invoke-static {}, Lcom/android/settingslib/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_18
    const-string/jumbo v2, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportGraceUXGraceView add the tile: title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", priority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/settingslib/drawer/Tile;->priority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_3

    :cond_19
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "GLOBAL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Common"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "BETA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1a
    const-string/jumbo v2, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportGraceUXForVZW add the tile: title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", priority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/settingslib/drawer/Tile;->priority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_3

    :cond_1b
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "VZW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Common"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Quick"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    :cond_1c
    const-string/jumbo v2, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportGraceUXHeroView add the tile: title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", priority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/settingslib/drawer/Tile;->priority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_3

    :cond_1d
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    const-string/jumbo v2, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EXTRA_SETTINGS_ACTION add the tile: title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", priority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/settingslib/drawer/Tile;->priority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1e
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v2, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "categories size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v2, v12, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    sget-object v4, Lcom/android/settingslib/drawer/TileUtils;->TILE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_4

    :cond_1f
    sget-object v2, Lcom/android/settingslib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v11, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string/jumbo v2, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCategories took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v20

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11
.end method

.method private static getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V

    return-void
.end method

.method private static getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p6, :cond_0

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p7

    invoke-static/range {v1 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZZ)V

    return-void
.end method

.method public static getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;ZZZ)V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/16 v4, 0x80

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v15

    const-string/jumbo v1, "ttt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTilesForIntent results count : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    if-eqz p6, :cond_1

    xor-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settingslib/Utils;->isSupportGraceUXGraceView()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/settingslib/drawer/TileUtils;->isEnabledUltraPowerSaving:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/settingslib/drawer/TileUtils;->isFactory:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/drawer/TileUtils;->isValidTileItem(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not ValidTileItem. : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string/jumbo v1, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTilesForIntent resolved.system : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, v13, Landroid/content/pm/ResolveInfo;->system:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", activityInfo.packageName : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", activityInfo.name : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", defaultCategory : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v13, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v1, :cond_2

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    xor-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/drawer/TileUtils;->isWhiteListAppforSettings1Depth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Do not allow any app to add to settings, only system ones. : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v7, p4

    if-eqz p7, :cond_5

    if-eqz v10, :cond_3

    const-string/jumbo v1, "com.android.settings.category"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    :cond_3
    if-nez p4, :cond_5

    const-string/jumbo v4, "TileUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Found "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " for intent "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " missing metadata "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v10, :cond_4

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v1, "com.android.settings.category"

    goto :goto_1

    :cond_5
    if-eqz v10, :cond_6

    const-string/jumbo v1, "com.android.settings.category"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "com.android.settings.category"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_6
    new-instance v9, Landroid/util/Pair;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    if-eqz v2, :cond_7

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    new-instance v2, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {v2}, Lcom/android/settingslib/drawer/Tile;-><init>()V

    const-string/jumbo v1, "TileUtils"

    const-string/jumbo v4, "new Tile()"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    iput-object v7, v2, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iput-object v1, v2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    sget-object v1, Lcom/android/settingslib/drawer/CategoryKey;->KEY_COMPAT_MAP:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/settingslib/drawer/CategoryKey;->KEY_COMPAT_MAP:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v2, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    :cond_8
    :goto_2
    const-string/jumbo v1, "com.samsung.android.settings.tilepriority"

    const/high16 v4, -0x80000000

    invoke-virtual {v10, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/high16 v1, -0x80000000

    if-ne v12, v1, :cond_c

    const-string/jumbo v1, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "priority : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v13, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v13, Landroid/content/pm/ResolveInfo;->priority:I

    iput v1, v2, Lcom/android/settingslib/drawer/Tile;->priority:I

    :goto_3
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v1, p0

    move/from16 v6, p8

    invoke-static/range {v1 .. v6}, Lcom/android/settingslib/drawer/TileUtils;->updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Z)Z

    const-string/jumbo v1, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding tile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding tile category "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p3

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_4
    iget-object v1, v2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "com.android.settings.category.ia.personal"

    iput-object v1, v2, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    const-string/jumbo v1, "com.android.settings.action.EXTRA_SETTINGS"

    iput-object v1, v2, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    iget-object v1, v2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.android.settings.tileid"

    const-string/jumbo v6, "docomoservice_settings"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    iput v12, v2, Lcom/android/settingslib/drawer/Tile;->priority:I

    goto/16 :goto_3

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_4

    :cond_d
    return-void
.end method

.method public static isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return v3

    :cond_0
    const-string/jumbo v1, "isKioskModeEnabled"

    invoke-static {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "isKioskModeEnabled"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3
.end method

.method private static isEnabledUltraPowerSaving(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    return v1

    :cond_2
    return v3
.end method

.method private static isValidTileItem(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settingslib/drawer/TileUtils;->ENTRY_NAME:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/settingslib/drawer/TileUtils;->ENTRY_NAME:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static isWhiteListAppforSettings1Depth(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "com.samsung.android.themestore"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TileUtils"

    const-string/jumbo v1, "isWhiteListAppforSettings1Depth ture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Z)Z
    .locals 17

    const-string/jumbo v14, "TileUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateTileData applicationInfo.isSystemApp() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", activityInfo.packageName : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", SETTING_PKG : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "com.android.settings"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v15, "com.android.settings"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    if-nez p5, :cond_0

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/settingslib/drawer/TileUtils;->isWhiteListAppforSettings1Depth(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_8

    if-eqz v6, :cond_8

    const-string/jumbo v14, "com.android.settings.icon"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string/jumbo v14, "com.android.settings.icon"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_1
    const/4 v8, 0x0

    const-string/jumbo v14, "com.android.settings.title.resid"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string/jumbo v14, "com.android.settings.title.resid"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_2
    if-nez v8, :cond_3

    const-string/jumbo v14, "com.android.settings.title"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string/jumbo v14, "com.android.settings.title"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/lang/Integer;

    if-eqz v14, :cond_b

    const-string/jumbo v14, "com.android.settings.title"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_3
    :goto_0
    const-string/jumbo v14, "com.android.settings.summary"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string/jumbo v14, "com.android.settings.summary"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/lang/Integer;

    if-eqz v14, :cond_c

    const-string/jumbo v14, "com.android.settings.summary"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_4
    :goto_1
    const-string/jumbo v14, "com.android.settings.summarySecondary"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string/jumbo v14, "com.android.settings.summarySecondary"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/lang/Integer;

    if-eqz v14, :cond_d

    const-string/jumbo v14, "com.android.settings.summarySecondary"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_5
    :goto_2
    const-string/jumbo v14, "com.android.settings.keyhint"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string/jumbo v14, "com.android.settings.keyhint"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/lang/Integer;

    if-eqz v14, :cond_e

    const-string/jumbo v14, "com.android.settings.keyhint"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_6
    :goto_3
    const-string/jumbo v14, "com.android.settings.support"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string/jumbo v14, "com.android.settings.support"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/lang/Integer;

    if-eqz v14, :cond_f

    const-string/jumbo v14, "com.android.settings.support"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_7
    :goto_4
    const-string/jumbo v14, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string/jumbo v14, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_5
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_9
    if-nez v3, :cond_a

    move-object/from16 v0, p2

    iget v3, v0, Landroid/content/pm/ActivityInfo;->icon:I

    :cond_a
    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/settingslib/drawer/Tile;->iconRes:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v14, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/android/settingslib/drawer/Tile;->summarySecondary:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    const/4 v14, 0x1

    return v14

    :cond_b
    :try_start_1
    const-string/jumbo v14, "com.android.settings.title"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v14, "com.android.settings.summary"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v14, "com.android.settings.summarySecondary"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v14, "com.android.settings.keyhint"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v14, "com.android.settings.support"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    goto/16 :goto_4

    :catch_0
    move-exception v2

    const-string/jumbo v14, "TileUtils"

    const-string/jumbo v15, "Couldn\'t find info"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :cond_10
    const/4 v14, 0x0

    return v14
.end method
