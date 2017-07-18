.class public Lcom/samsung/android/settings/qstile/PersonalModeTile;
.super Landroid/service/quicksettings/TileService;
.source "PersonalModeTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/qstile/PersonalModeTile$1;
    }
.end annotation


# static fields
.field private static final PRIVATEMODE_SETTINGS:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/qstile/PersonalModeTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/samsung/android/settings/qstile/PersonalModeTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.Settings$PersonalPageSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->PRIVATEMODE_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/qstile/PersonalModeTile$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile$1;-><init>(Lcom/samsung/android/settings/qstile/PersonalModeTile;)V

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private hasAfwsProfile()Z
    .locals 8

    iget-object v6, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private startPersonalModeService()V
    .locals 3

    sget-object v1, Lcom/samsung/android/settings/qstile/PersonalModeTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startPersonalModeService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.personalpage.action.ACTION_SHOW_DISCLAIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.personalpage.service"

    const-string/jumbo v2, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/qstile/PersonalModeTile$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/qstile/PersonalModeTile$2;-><init>(Lcom/samsung/android/settings/qstile/PersonalModeTile;Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->unlockAndRun(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public onClick()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->hasAfwsProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0a11

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleClick  isM2PActivating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0a08

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->refresh()V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->startPersonalModeService()V

    return-void
.end method

.method public onStartListening()V
    .locals 3

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    sget-object v1, Lcom/samsung/android/settings/qstile/PersonalModeTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onStartListening Private mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->refresh()V

    return-void
.end method

.method public onStopListening()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopListening Private mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    return-void
.end method

.method public refresh()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    const v2, 0x7f0203ab

    invoke-static {p0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    const v2, 0x7f0b09f2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 5

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04022b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "qs_detail_content_secondary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/high16 v4, -0x1000000

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const v2, 0x7f1105a1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-object v0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f0b09f1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->PRIVATEMODE_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "personal_mode_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public semIsToggleButtonExists()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->hasAfwsProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0a11

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0a08

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->startPersonalModeService()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->semUpdateDetailView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->refresh()V

    return-void
.end method
