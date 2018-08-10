.class public Lcom/samsung/android/settings/qstile/ScreensaverTile;
.super Landroid/service/quicksettings/TileService;
.source "ScreensaverTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;
    }
.end annotation


# static fields
.field private static final SCREENSAVER_SETTINGS:Landroid/content/Intent;

.field private static selecetingscreensaver:I

.field private static selectedscreensaver:I


# instance fields
.field private final ACTION_SCREEN_SAVER_DEFAULT:Ljava/lang/String;

.field private mBackend:Lcom/android/settingslib/dream/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mScreenSaverObserver:Landroid/database/ContentObserver;

.field private mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

.field private screensaverSize:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/qstile/ScreensaverTile;)Lcom/android/settingslib/dream/DreamBackend;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/qstile/ScreensaverTile;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->screensaverSize:I

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selecetingscreensaver:I

    return v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selectedscreensaver:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selecetingscreensaver:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/qstile/ScreensaverTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->refreshScreensaver()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/qstile/ScreensaverTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->refreshSelectedItem()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.Settings$DreamSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->SCREENSAVER_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    const-string/jumbo v0, "com.android.settings.screensavertile.intent.action.SCREEN_SAVER_CHANGED"

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->ACTION_SCREEN_SAVER_DEFAULT:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    return-void
.end method

.method private getTileState()I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initTile()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0805dc

    invoke-static {p0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selecetingscreensaver:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getTileState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f121795

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshScreensaver()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getTileState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selectedscreensaver:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f121795

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshSelectedItem()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->screensaverSize:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->screensaverSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v1, :cond_0

    sput v0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selectedscreensaver:I

    sput v0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selecetingscreensaver:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private registerObserver(Landroid/os/Handler;)V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreenSaverObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/qstile/ScreensaverTile$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/qstile/ScreensaverTile$1;-><init>(Lcom/samsung/android/settings/qstile/ScreensaverTile;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreenSaverObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screensaver_components"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreenSaverObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screensaver_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreenSaverObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerReceiver(Z)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v3}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const-string/jumbo v3, "ScreensaverTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "com.android.settings.screensavertile.intent.action.SCREEN_SAVER_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "com.android.settings.screensavertile.intent.action.SCREEN_SAVER_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    if-nez v3, :cond_1

    new-instance v3, Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    invoke-direct {v3, p0, v6}, Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;-><init>(Lcom/samsung/android/settings/qstile/ScreensaverTile;Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;)V

    iput-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v6, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreensaverChangedReceiver:Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;

    goto :goto_1
.end method

.method private unregisterObserver()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreenSaverObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreenSaverObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mScreenSaverObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->registerObserver(Landroid/os/Handler;)V

    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getTileState()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->refreshScreensaver()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settingslib/dream/DreamBackend;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->refreshSelectedItem()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    const-string/jumbo v0, "ScreensaverTile"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartListening()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    const-string/jumbo v0, "ScreensaverTile"

    const-string/jumbo v1, "onStartListening"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->registerReceiver(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->initTile()V

    return-void
.end method

.method public onStopListening()V
    .locals 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->registerReceiver(Z)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->unregisterObserver()V

    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 15

    const v14, 0x7f0a0755

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, -0x1000000

    const v10, 0x7f0a08c5

    const-string/jumbo v5, ""

    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0d0256

    invoke-direct {v4, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const v7, 0x7f12178c

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f12178d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-virtual {v4, v14, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "qs_detail_content_secondary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-static {v7, v8, v11, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    invoke-virtual {v4, v14, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v7, "ScreensaverTile"

    const-string/jumbo v8, "semGetDetailView"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v7}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v6

    const-string/jumbo v7, "ScreensaverTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "semGetDetailView - selectedscreensavere="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selecetingscreensaver:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    iget v7, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->screensaverSize:I

    if-ge v0, v7, :cond_4

    new-instance v1, Landroid/content/Intent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "com.android.settings.screensavertile.intent.action.SCREEN_SAVER_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "id"

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mContext:Landroid/content/Context;

    const/high16 v8, 0x8000000

    invoke-static {v7, v12, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0d0257

    invoke-direct {v3, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    if-eqz v6, :cond_3

    const-string/jumbo v7, "setEnabled"

    invoke-virtual {v3, v10, v7, v13}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    :goto_2
    invoke-virtual {v3, v10, v2}, Landroid/widget/RemoteViews;->semSetOnCheckedChangedPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v7, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v7}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v7, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v3, v10, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "qs_detail_content_primary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v9

    invoke-static {v7, v8, v11, v9}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    invoke-virtual {v3, v10, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    sget v7, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selecetingscreensaver:I

    if-ne v0, v7, :cond_1

    const-string/jumbo v7, "setChecked"

    invoke-virtual {v3, v10, v7, v13}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    sput v0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->selectedscreensaver:I

    :cond_1
    const v7, 0x7f0a08c6

    invoke-virtual {v4, v7, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const v7, 0x7f121794

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v7, "setEnabled"

    invoke-virtual {v3, v10, v7, v12}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->refreshScreensaver()V

    return-object v4
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f121795

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->SCREENSAVER_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->semSetToggleButtonChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->refreshScreensaver()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->semUpdateDetailView()V

    return-void
.end method
