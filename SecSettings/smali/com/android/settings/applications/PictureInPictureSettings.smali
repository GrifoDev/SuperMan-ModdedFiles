.class public Lcom/android/settings/applications/PictureInPictureSettings;
.super Lcom/android/settings/notification/EmptyTextSettings;
.source "PictureInPictureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/PictureInPictureSettings$AppIconPreference;
    }
.end annotation


# static fields
.field static final IGNORE_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/settings/applications/PictureInPictureSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/PictureInPictureSettings;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/applications/PictureInPictureSettings;->IGNORE_PACKAGE_LIST:Ljava/util/List;

    sget-object v0, Lcom/android/settings/applications/PictureInPictureSettings;->IGNORE_PACKAGE_LIST:Ljava/util/List;

    const-string/jumbo v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/EmptyTextSettings;-><init>()V

    return-void
.end method

.method static checkPackageHasPictureInPictureActivities(Ljava/lang/String;[Landroid/content/pm/ActivityInfo;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    new-array v1, v2, [Lcom/android/settings/applications/ActivityInfoWrapper;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/android/settings/applications/ActivityInfoWrapperImpl;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/android/settings/applications/ActivityInfoWrapperImpl;-><init>(Landroid/content/pm/ActivityInfo;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Lcom/android/settings/applications/PictureInPictureSettings;->checkPackageHasPictureInPictureActivities(Ljava/lang/String;[Lcom/android/settings/applications/ActivityInfoWrapper;)Z

    move-result v2

    return v2
.end method

.method static checkPackageHasPictureInPictureActivities(Ljava/lang/String;[Lcom/android/settings/applications/ActivityInfoWrapper;)Z
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/android/settings/applications/PictureInPictureSettings;->IGNORE_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_2

    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_2

    aget-object v1, p1, v0

    invoke-interface {v1}, Lcom/android/settings/applications/ActivityInfoWrapper;->supportsPictureInPicture()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x32c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/PictureInPictureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PictureInPictureSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/PictureInPictureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PictureInPictureSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/PictureInPictureSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/PictureInPictureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PictureInPictureSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public onResume()V
    .locals 17

    invoke-super/range {p0 .. p0}, Lcom/android/settings/notification/EmptyTextSettings;->onResume()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/PictureInPictureSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/PictureInPictureSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v14, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v15, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v14, v15}, Lcom/android/settings/applications/PictureInPictureSettings;->checkPackageHasPictureInPictureActivities(Ljava/lang/String;[Landroid/content/pm/ActivityInfo;)Z

    move-result v14

    if-eqz v14, :cond_0

    iget-object v14, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/PictureInPictureSettings;->mContext:Landroid/content/Context;

    iget-object v15, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14, v15, v7}, Lcom/android/settings/applications/PictureInPictureDetails;->getEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v13

    iget-object v14, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v8, v7, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v14, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/PictureInPictureSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v14, v15}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v9, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/PictureInPictureSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v11

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/PictureInPictureSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v10, Lcom/android/settings/applications/PictureInPictureSettings$AppIconPreference;

    invoke-direct {v10, v11}, Lcom/android/settings/applications/PictureInPictureSettings$AppIconPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/PictureInPictureSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/android/settings/applications/PictureInPictureSettings$AppIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v4}, Lcom/android/settings/applications/PictureInPictureSettings$AppIconPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget v14, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11, v14, v7}, Lcom/android/settings/applications/PictureInPictureDetails;->getPreferenceSummary(Landroid/content/Context;ILjava/lang/String;)I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/android/settings/applications/PictureInPictureSettings$AppIconPreference;->setSummary(I)V

    new-instance v14, Lcom/android/settings/applications/PictureInPictureSettings$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7, v1}, Lcom/android/settings/applications/PictureInPictureSettings$1;-><init>(Lcom/android/settings/applications/PictureInPictureSettings;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v10, v14}, Lcom/android/settings/applications/PictureInPictureSettings$AppIconPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v12, v10}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f121470

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PictureInPictureSettings;->setEmptyText(I)V

    return-void
.end method
