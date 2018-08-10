.class public Lcom/samsung/android/settings/location/LocationUseInBackground;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationUseInBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;,
        Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;
    }
.end annotation


# instance fields
.field private final OPTION_MENU_NOTIFICATION:I

.field private TAG:Ljava/lang/String;

.field private mAppListPreference:Landroid/support/v7/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

.field private mOFF:Landroid/view/View;

.field private mON:Landroid/view/View;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/location/LocationUseInBackground;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getLocationPermissionPackage()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/location/LocationUseInBackground;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/location/LocationUseInBackground;->setLocationListUp(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-class v0, Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->OPTION_MENU_NOTIFICATION:I

    return-void
.end method

.method private getGroupPermissionInfos(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_1
    move-exception v1

    const/4 v4, 0x0

    return-object v4
.end method

.method private getLocationPermissionPackage()Ljava/util/ArrayList;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;",
            ">;"
        }
    .end annotation

    const-string/jumbo v4, "android.permission-group.LOCATION"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getGroupPermissionInfos(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v16

    if-nez v16, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v30, Landroid/content/Intent;

    const-string/jumbo v31, "android.intent.action.MAIN"

    const/16 v32, 0x0

    invoke-direct/range {v30 .. v32}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v31, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/location/LocationManager;

    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v25 .. v25}, Landroid/location/LocationManager;->getLocWhitelist()Ljava/util/HashMap;

    move-result-object v24

    const-string/jumbo v10, ""

    const/4 v7, 0x1

    const/16 v20, 0x0

    const-string/jumbo v6, ""

    const/16 v4, 0x1000

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v14

    const/16 v17, 0x0

    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_12

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v4, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_3
    const/16 v21, 0x0

    :goto_3
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_2

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :cond_5
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v28, v4, v21

    const/16 v29, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_6

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/pm/PermissionInfo;

    const/16 v20, 0x1

    :cond_6
    if-eqz v20, :cond_4

    const-string/jumbo v4, "android.permission-group.LOCATION"

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v5, v4, v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->shouldShowPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v5}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isSystem(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "[system package name ="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    :cond_8
    if-eqz v24, :cond_9

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v4, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "[whitelist package name ="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_9
    invoke-static {v5}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isSystemFixed(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-nez v4, :cond_4

    :try_start_0
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v30, 0x2710

    move/from16 v0, v30

    if-lt v4, v0, :cond_4

    move-object/from16 v0, v26

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v30, 0x4e1f

    move/from16 v0, v30

    if-gt v4, v0, :cond_4

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v26

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v30, 0x16

    move/from16 v0, v30

    if-le v4, v0, :cond_c

    const/4 v9, 0x1

    :goto_6
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v4, v4, v21

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_d

    const/4 v8, 0x1

    :goto_7
    if-nez v9, :cond_b

    const-string/jumbo v4, "android"

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_8
    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    const-class v30, Landroid/app/AppOpsManager;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v30, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v4, v12, v0, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_f

    const/4 v13, 0x1

    :goto_9
    if-eqz v8, :cond_11

    if-eqz v12, :cond_a

    if-eqz v13, :cond_11

    :cond_a
    const/4 v8, 0x1

    :cond_b
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "[package name ="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "] [Granted = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v27}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    const/4 v4, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v30

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/pm/PackageInfo;Ljava/lang/CharSequence;ZZZ)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_8

    :cond_f
    const/4 v13, 0x0

    goto :goto_9

    :cond_10
    const/4 v13, 0x0

    goto :goto_9

    :cond_11
    const/4 v8, 0x0

    goto :goto_a

    :cond_12
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v11

    :catch_0
    move-exception v15

    goto/16 :goto_4
.end method

.method public static isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "android.permission-group.LOCATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isNetworkLocationProvider(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNetworkLocationProvider(Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v2, "location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/location/ILocationManager;->getNetworkProviderPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method

.method private static isSystem(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSystemFixed(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    instance-of v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_0

    return-object p1

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0704db

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private setLocationListUp(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;",
            ">;)V"
        }
    .end annotation

    iget-object v11, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mAppListPreference:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v11}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    const-string/jumbo v11, "location"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Landroid/location/LocationManager;->getLocBlacklist()Ljava/util/HashMap;

    move-result-object v6

    iget-object v11, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0300dc

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_7

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-object v11, v11, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mPackageinfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-object v11, v11, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mPackageinfo:Landroid/content/pm/PackageInfo;

    iget v10, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-boolean v8, v11, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mGranted:Z

    new-instance v0, Lcom/samsung/android/settings/location/LocationDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/samsung/android/settings/location/LocationDropDownPreference;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->clearItems()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->addItems([Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setGrantedState(Z)V

    if-eqz v6, :cond_6

    if-eqz v8, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    const/4 v3, 0x1

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    :cond_2
    :goto_2
    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-object v11, v11, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setPersistent(Z)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-boolean v11, v11, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppSurpportsRuntimePermissions:Z

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setIsRuntimePermission(Z)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-object v11, v11, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mPackageinfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setPackageInfo(Landroid/content/pm/PackageInfo;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-object v11, v11, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v11}, Lcom/samsung/android/settings/location/LocationUseInBackground;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v11, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mAppListPreference:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v10, v11, :cond_1

    const/4 v3, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    goto :goto_1

    :cond_5
    if-nez v8, :cond_2

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static shouldShowPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isSystemFixed(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    const v0, 0x7f15008b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "location_use_in_background_app_list_preference"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mAppListPreference:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/location/LocationUseInBackground;->setHasOptionsMenu(Z)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1300fe

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f1202e3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d017e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    const v4, 0x7f0a04d2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    const v4, 0x7f0a04d1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "background_location_noti_enable"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/location/LocationUseInBackground$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/location/LocationUseInBackground$1;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/location/LocationUseInBackground$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/location/LocationUseInBackground$2;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f1202e7

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/location/LocationUseInBackground$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/location/LocationUseInBackground$3;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    return v5

    :cond_1
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v3, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;)V

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.intent.action.NSFLP_CLEAR_NOTI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
