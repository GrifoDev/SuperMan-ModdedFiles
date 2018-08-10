.class public Lcom/android/settingslib/users/AppRestrictionsHelper;
.super Ljava/lang/Object;
.source "AppRestrictionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/users/AppRestrictionsHelper$AppLabelComparator;,
        Lcom/android/settingslib/users/AppRestrictionsHelper$ExcludeAppInfo;,
        Lcom/android/settingslib/users/AppRestrictionsHelper$IncludeAppInfo;,
        Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;,
        Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;,
        Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mExcludeAppInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field mIncludeAppInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mRelatedPackageList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestrictedProfile:Z

.field mSelectedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mSubordinateAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIncludeAppInfoList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRelatedPackageList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSubordinateAppList:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    invoke-direct {p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->makeExcludeAppList()V

    invoke-direct {p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->makeRelatedPackageList()V

    invoke-direct {p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->makeSubordinateAppList()V

    return-void
.end method

.method private makeExcludeAppList()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.android.documentsui"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "wifi"

    const-string/jumbo v2, "com.android.settings.Settings$WifiApSettingsActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.sec.knox.app.container"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.sec.yosemite.tab"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.sec.knox.bridge"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.samsung.knox.rcp.components"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.sec.knox.shortcuti"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.sec.knox.shortcutii"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.samsung.android.knox.containeragent"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.samsung.android.knox.containercore"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.sec.knox.shortcutsms"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.sec.knox.switcher"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.samsung.knox.kss"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.sec.knox.switchknoxI"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.sec.knox.switchknoxII"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.sec.knox.knoxmodeswitcher"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.sec.knox.containeragent2"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.sec.knox.knoxsetupwizardclient"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "Samsung KNOX apps"

    const-string/jumbo v2, "com.sec.android.app.samsungapps.KnoxAppsMainActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.android.stk"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.samsung.android.game.gametools"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.samsung.android.game.gamehome"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private makeRelatedPackageList()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRelatedPackageList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.hancom.androidpc.viewer.launcher"

    const-string/jumbo v2, "com.hancom.androidpc.appwidget"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRelatedPackageList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.samsung.everglades.video"

    const-string/jumbo v2, "com.sec.android.app.videoplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRelatedPackageList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.samsung.android.app.episodes"

    const-string/jumbo v2, "com.samsung.android.app.storyalbumwidget"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRelatedPackageList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.sec.android.app.clockpackage"

    const-string/jumbo v2, "com.sec.android.widgetapp.dualclockdigital"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private makeSubordinateAppList()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSubordinateAppList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.sec.android.gallery3d"

    const-string/jumbo v2, "com.sec.android.app.camera"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
