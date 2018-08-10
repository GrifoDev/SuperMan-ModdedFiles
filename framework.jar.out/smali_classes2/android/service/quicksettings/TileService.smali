.class public Landroid/service/quicksettings/TileService;
.super Landroid/app/Service;
.source "TileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quicksettings/TileService$H;
    }
.end annotation


# static fields
.field public static final ACTION_QS_TILE:Ljava/lang/String; = "android.service.quicksettings.action.QS_TILE"

.field public static final ACTION_QS_TILE_PREFERENCES:Ljava/lang/String; = "android.service.quicksettings.action.QS_TILE_PREFERENCES"

.field public static final ACTION_REQUEST_LISTENING:Ljava/lang/String; = "android.service.quicksettings.action.REQUEST_LISTENING"

.field public static final EXTRA_SERVICE:Ljava/lang/String; = "service"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field public static final META_DATA_ACTIVE_TILE:Ljava/lang/String; = "android.service.quicksettings.ACTIVE_TILE"

.field public static final SEM_META_DATA_DEFAULT_TILE_NAME:Ljava/lang/String; = "android.service.quicksettings.SEM_DEFAULT_TILE_NAME"

.field public static final SEM_META_DATA_DEFAULT_TILE_STATE:Ljava/lang/String; = "android.service.quicksettings.SEM_DEFAULT_TILE_STATE"

.field public static final SEM_META_DATA_DEFAULT_TILE_UNLOCK_POLICY:Ljava/lang/String; = "android.service.quicksettings.SEM_DEFAULT_TILE_UNLOCK_POLICY"

.field public static final SEM_META_DATA_DEFAULT_TILE_USER_POLICY:Ljava/lang/String; = "android.service.quicksettings.SEM_DEFAULT_TILE_USER_POLICY"


# instance fields
.field private final mHandler:Landroid/service/quicksettings/TileService$H;

.field private mListening:Z

.field private mService:Landroid/service/quicksettings/IQSService;

.field private mTile:Landroid/service/quicksettings/Tile;

.field private mTileToken:Landroid/os/IBinder;

.field private mToken:Landroid/os/IBinder;

.field private mUnlockRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;
    .locals 1

    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mHandler:Landroid/service/quicksettings/TileService$H;

    return-object v0
.end method

.method static synthetic -get1(Landroid/service/quicksettings/TileService;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    return v0
.end method

.method static synthetic -get2(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/IQSService;
    .locals 1

    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    return-object v0
.end method

.method static synthetic -get3(Landroid/service/quicksettings/TileService;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get4(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mUnlockRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Landroid/service/quicksettings/TileService;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    return p1
.end method

.method static synthetic -set1(Landroid/service/quicksettings/TileService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Landroid/service/quicksettings/TileService;->mToken:Landroid/os/IBinder;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/quicksettings/TileService$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/quicksettings/TileService$H;-><init>(Landroid/service/quicksettings/TileService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/quicksettings/TileService;->mHandler:Landroid/service/quicksettings/TileService$H;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    return-void
.end method

.method public static isQuickSettingsSupported()Z
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static final requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.quicksettings.action.REQUEST_LISTENING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.permission.BIND_QUICK_SETTINGS_TILE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getQsTile()Landroid/service/quicksettings/Tile;
    .locals 1

    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    return-object v0
.end method

.method public final isLocked()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSService;->isLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    return v1
.end method

.method public final isSecure()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSService;->isSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    const-string/jumbo v1, "service"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/quicksettings/IQSService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSService;

    move-result-object v1

    iput-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    const-string/jumbo v1, "token"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;

    move-result-object v1

    iput-object v1, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v3, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v3}, Landroid/service/quicksettings/Tile;->setService(Landroid/service/quicksettings/IQSService;Landroid/os/IBinder;)V

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mHandler:Landroid/service/quicksettings/TileService$H;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    :cond_0
    new-instance v1, Landroid/service/quicksettings/TileService$2;

    invoke-direct {v1, p0}, Landroid/service/quicksettings/TileService$2;-><init>(Landroid/service/quicksettings/TileService;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unable to reach IQSService"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onClick()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartListening()V
    .locals 0

    return-void
.end method

.method public onStopListening()V
    .locals 0

    return-void
.end method

.method public onTileAdded()V
    .locals 0

    return-void
.end method

.method public onTileRemoved()V
    .locals 0

    return-void
.end method

.method public final semFireToggleStateChanged(ZZ)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1, p2}, Landroid/service/quicksettings/IQSService;->semFireToggleStateChanged(Landroid/os/IBinder;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public semGetDetailViewSettingButtonName()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public semIsToggleButtonExists()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 0

    return-void
.end method

.method public final semUpdateDetailView()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->semUpdateDetailView(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final setStatusIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1, p2}, Landroid/service/quicksettings/IQSService;->updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final showDialog(Landroid/app/Dialog;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d8

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d9

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Landroid/service/quicksettings/TileService;->mToken:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7f3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/service/quicksettings/TileService$1;

    invoke-direct {v3, p0}, Landroid/service/quicksettings/TileService$1;-><init>(Landroid/service/quicksettings/TileService;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :try_start_0
    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v3, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/service/quicksettings/IQSService;->onShowDialog(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final startActivityAndCollapse(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/service/quicksettings/TileService;->startActivity(Landroid/content/Intent;)V

    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->onStartActivity(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final unlockAndRun(Ljava/lang/Runnable;)V
    .locals 3

    iput-object p1, p0, Landroid/service/quicksettings/TileService;->mUnlockRunnable:Ljava/lang/Runnable;

    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->startUnlockAndRun(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
