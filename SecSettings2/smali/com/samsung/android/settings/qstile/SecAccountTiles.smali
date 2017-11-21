.class public Lcom/samsung/android/settings/qstile/SecAccountTiles;
.super Landroid/service/quicksettings/TileService;
.source "SecAccountTiles.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field mContext:Landroid/content/Context;

.field private mSyncOn:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/qstile/SecAccountTiles;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/qstile/SecAccountTiles;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mSyncOn:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/qstile/SecAccountTiles;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showConfirmPopup(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private showConfirmPopup(Z)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const v1, 0x7f0b17db

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz p1, :cond_2

    const v1, 0x7f0b17dc

    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/qstile/SecAccountTiles$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles$2;-><init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/qstile/SecAccountTiles$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles$3;-><init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showDialog(Landroid/app/Dialog;)V

    return-void

    :cond_1
    const v1, 0x7f0b17dd

    goto :goto_0

    :cond_2
    const v1, 0x7f0b17de

    goto :goto_1
.end method

.method private updateState()V
    .locals 4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mSyncOn:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const v3, 0x7f0203ad

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    const v2, 0x7f0b1704

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mSyncOn:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/qstile/SecAccountTiles$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles$1;-><init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->unlockAndRun(Ljava/lang/Runnable;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->updateState()V

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showConfirmPopup(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onStartListening()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->updateState()V

    return-void
.end method

.method public onStopListening()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    return-void
.end method

.method public onTileAdded()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    return-void
.end method

.method public onTileRemoved()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    return-void
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 7

    const v6, 0x7f11059e

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f04022b

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v2, 0x7f0b17dc

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "qs_detail_content_secondary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const/high16 v5, -0x1000000

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-object v1

    :cond_0
    const v2, 0x7f0b17de

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const v1, 0x7f0b1704

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    return v0
.end method

.method public semIsToggleButtonExists()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->semUpdateDetailView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->updateState()V

    return-void
.end method
