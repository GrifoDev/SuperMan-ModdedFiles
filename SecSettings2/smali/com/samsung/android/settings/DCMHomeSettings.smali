.class public Lcom/samsung/android/settings/DCMHomeSettings;
.super Landroid/app/ListFragment;
.source "DCMHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;
    }
.end annotation


# static fields
.field public static final PRELOADED_HOME_PKGS:[Ljava/lang/String;


# instance fields
.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentHomeIndex:I

.field private mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

.field private mHasEasyLauncher:Z

.field mHomeApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mPreloadedHomeList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSelectedHomeIndex:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/DCMHomeSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/DCMHomeSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/DCMHomeSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomeIndex:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/DCMHomeSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->changeHome(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/DCMHomeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->startLauncher()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.nttdocomo.android.paletteui"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.nttdocomo.android.dhome"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.setupwizard"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.launcher"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.easylauncher"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.kidslauncher"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.SecSetupWizard"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.longlifemodelauncher"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.kidshome"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/DCMHomeSettings;->PRELOADED_HOME_PKGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/samsung/android/settings/DCMHomeSettings;->PRELOADED_HOME_PKGS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPreloadedHomeList:Ljava/util/HashSet;

    iput v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    iput v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomeIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    return-void
.end method

.method private applyDisplayDensity(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1, v3, v3}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZI)V

    goto :goto_0
.end method

.method private changeHome(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "DCMHomeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeHome "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DCMHomeSettings;->setPreferredHome(Landroid/content/pm/ResolveInfo;)V

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v4, v4}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    return-object v3
.end method

.method private isPreffered(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private setEasymode(ZZ)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x2

    const-string/jumbo v2, "DCMHomeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setEasymode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isDCMHome="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "DCMHomeSettings"

    const-string/jumbo v3, "Easy mode feature is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    const-string/jumbo v5, "easymode"

    const-string/jumbo v6, "enable easy mode"

    invoke-virtual {v2, v5, v6, v3}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "easy_mode_switch"

    if-eqz p1, :cond_5

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v2}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->setEasyFont()V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/DCMHomeSettings;->applyDisplayDensity(Z)V

    :cond_2
    :goto_2
    iget v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    if-eq v2, v7, :cond_7

    iget v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomeIndex:I

    if-ne v2, v7, :cond_7

    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "easymode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "easymode_from"

    const-string/jumbo v3, "settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_8

    const-string/jumbo v2, "homemode_jpn"

    const-string/jumbo v3, "docomo"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "easymode"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "easymode_from"

    const-string/jumbo v3, "settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_9

    const-string/jumbo v2, "homemode_jpn"

    const-string/jumbo v3, "docomo"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_5
    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    const-string/jumbo v5, "easymode"

    const-string/jumbo v6, "return standard mode not easy mode"

    invoke-virtual {v2, v5, v6, v4}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    iget-boolean v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    if-ne v2, v7, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v2}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->setStandardFont()V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/DCMHomeSettings;->applyDisplayDensity(Z)V

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    if-ne v2, v7, :cond_3

    iget v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomeIndex:I

    if-eq v2, v7, :cond_3

    goto :goto_3

    :cond_8
    const-string/jumbo v2, "homemode_jpn"

    const-string/jumbo v3, "samsung"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :cond_9
    const-string/jumbo v2, "homemode_jpn"

    const-string/jumbo v3, "samsung"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5
.end method

.method private startLauncher()V
    .locals 4

    const-string/jumbo v1, "DCMHomeSettings"

    const-string/jumbo v2, "startLauncher"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DCMHomeSettings;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const v3, 0x7f080080

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;-><init>(Lcom/samsung/android/settings/DCMHomeSettings;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DCMHomeSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    new-instance v5, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v5}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    new-instance v5, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v5}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->initFontSettings()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.category.HOME"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    const v6, 0x10040

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string/jumbo v5, "com.nttdocomo.android.dhome"

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string/jumbo v6, "com.nttdocomo.android.dhome"

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "DCMHomeSettings"

    const-string/jumbo v6, "add home : com.nttdocomo.android.dhome"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string/jumbo v5, "com.sec.android.app.launcher"

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string/jumbo v6, "com.sec.android.app.launcher"

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "DCMHomeSettings"

    const-string/jumbo v6, "add home : com.sec.android.app.launcher"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v5, "com.sec.android.app.easylauncher"

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string/jumbo v6, "com.sec.android.app.easylauncher"

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "DCMHomeSettings"

    const-string/jumbo v6, "add home : com.sec.android.app.easylauncher"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "device_provisioned"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-nez v3, :cond_6

    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPreloadedHomeList:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v5, "com.nttdocomo.android.paletteui"

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string/jumbo v6, "com.nttdocomo.android.paletteui"

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "DCMHomeSettings"

    const-string/jumbo v6, "add home : com.nttdocomo.android.paletteui"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v5, "DCMHomeSettings"

    const-string/jumbo v6, "There is no easy launcher"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_3
    if-ltz v1, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "DCMHomeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "com.google.android.setupwizard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const-string/jumbo v5, "DCMHomeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[Remove] pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100107

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f04012b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7

    const-string/jumbo v3, "DCMHomeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onListItemClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    if-ne v3, p3, :cond_0

    const-string/jumbo v3, "DCMHomeSettings"

    const-string/jumbo v4, "Do not change to current home"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100107

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100108

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-object v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    packed-switch p3, :pswitch_data_0

    :cond_1
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const v5, 0x7f0b03a6

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/DCMHomeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/DCMHomeSettings$1;

    invoke-direct {v4, p0, p3}, Lcom/samsung/android/settings/DCMHomeSettings$1;-><init>(Lcom/samsung/android/settings/DCMHomeSettings;I)V

    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    const v3, 0x7f0b03a0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/DCMHomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    const v3, 0x7f0b03a2

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/DCMHomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    iget-boolean v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    if-eqz v3, :cond_1

    const v3, 0x7f0b03a4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/DCMHomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_4

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    :cond_0
    const-string/jumbo v4, "com.sec.android.app.launcher"

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "easy_mode_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    if-eqz v2, :cond_5

    iput v6, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iput v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "com.sec.android.app.easylauncher"

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v6, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomeIndex:I

    goto :goto_1
.end method

.method public setPreferredHome(Landroid/content/pm/ResolveInfo;)V
    .locals 8

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Landroid/content/ComponentName;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v3

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget v6, p1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-virtual {v5, v1, v6, v0, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method
