.class public Lcom/android/settings/wfd/WfdPickerDialog;
.super Landroid/app/Activity;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final SS_WFD_SERVICE_WITH_GCAST:Z


# instance fields
.field private ischangedevice:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mHandler:Landroid/os/Handler;

.field mLastConnectedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRouter:Landroid/media/MediaRouter;

.field private mWfdTitle:Landroid/widget/TextView;

.field mWifiDisplaySettingsFragment:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wfd/WfdPickerDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->ischangedevice:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x138e4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/wfd/WfdPickerDialog;->SS_WFD_SERVICE_WITH_GCAST:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mLastConnectedDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->ischangedevice:Z

    return-void
.end method

.method private isAnyDeviceConnected()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->semIsDlnaDeviceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->isGCastConnected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isGCastConnected()Z
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/settings/wfd/WfdPickerDialog;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v2, v5}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    const-string/jumbo v2, "WfdPickerDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isGCastConnected selectedRoute = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", selectedRoute.getDeviceAddress() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private semIsDlnaDeviceConnected()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOrientationLayout()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f110710

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0653

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :goto_0
    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0652

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_0
.end method


# virtual methods
.method public IsChangeDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->ischangedevice:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public createWfdPickerDialog()V
    .locals 7

    const-string/jumbo v5, "WfdPickerDialog"

    const-string/jumbo v6, "createWfdPickerDialog"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f040318

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f110711

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdTitle:Landroid/widget/TextView;

    const v5, 0x7f110192

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->isAnyDeviceConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdTitle:Landroid/widget/TextView;

    const v6, 0x7f0b0e23

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->ischangedevice:Z

    :goto_0
    new-instance v5, Lcom/android/settings/wfd/WfdPickerDialog$1;

    invoke-direct {v5, p0}, Lcom/android/settings/wfd/WfdPickerDialog$1;-><init>(Lcom/android/settings/wfd/WfdPickerDialog;)V

    const v6, 0x7f0b10f5

    invoke-virtual {v1, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f040317

    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f110710

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wfd/WifiDisplaySettings;

    iput-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWifiDisplaySettingsFragment:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->setOrientationLayout()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.WIFI_DISPLAY_ENABLED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerDialog;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/settings/wfd/WfdPickerDialog$2;

    invoke-direct {v6, p0}, Lcom/android/settings/wfd/WfdPickerDialog$2;-><init>(Lcom/android/settings/wfd/WfdPickerDialog;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdTitle:Landroid/widget/TextView;

    const v6, 0x7f0b0e22

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->ischangedevice:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->setOrientationLayout()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "WfdPickerDialog"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerDialog;->setDefaultKeyMode(I)V

    const-string/jumbo v0, "display"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-boolean v0, Lcom/android/settings/wfd/WfdPickerDialog;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "media_router"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mRouter:Landroid/media/MediaRouter;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->createWfdPickerDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const-string/jumbo v0, "WfdPickerDialog"

    const-string/jumbo v1, "onDestroy() dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public showProgressBar(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
