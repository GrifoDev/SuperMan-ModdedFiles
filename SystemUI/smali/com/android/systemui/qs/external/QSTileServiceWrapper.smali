.class public Lcom/android/systemui/qs/external/QSTileServiceWrapper;
.super Ljava/lang/Object;
.source "QSTileServiceWrapper.java"


# instance fields
.field private final mService:Landroid/service/quicksettings/IQSTileService;


# direct methods
.method public constructor <init>(Landroid/service/quicksettings/IQSTileService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/os/IBinder;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1, p1}, Landroid/service/quicksettings/IQSTileService;->onClick(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public onStartListening()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public onStopListening()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStopListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public onTileAdded()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onTileAdded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public onTileRemoved()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onTileRemoved()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public onUnlockComplete()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onUnlockComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semGetDetailView()Landroid/widget/RemoteViews;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public semGetDetailViewSettingButtonName()Ljava/lang/CharSequence;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semGetDetailViewSettingButtonName()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semGetDetailViewTitle()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semGetSettingsIntent()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public semIsToggleButtonChecked()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semIsToggleButtonChecked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public semIsToggleButtonExists()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semIsToggleButtonExists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public semSetToggleButtonChecked(Z)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1, p1}, Landroid/service/quicksettings/IQSTileService;->semSetToggleButtonChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method
