.class public final Lcom/android/systemui/ForegroundServicesDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "ForegroundServicesDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ForegroundServicesDialog$1;,
        Lcom/android/systemui/ForegroundServicesDialog$2;,
        Lcom/android/systemui/ForegroundServicesDialog$3;,
        Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;
    }
.end annotation


# static fields
.field private static FOREGROUND_CHANNEL_ID:Ljava/lang/String;

.field private static FOREGROUND_PACKAGE:Ljava/lang/String;

.field private static FOREGROUND_UID:I


# instance fields
.field private mAdapter:Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;

.field private mAppClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mForegroundChannel:Landroid/app/NotificationChannel;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field mInflater:Landroid/view/LayoutInflater;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPackages:[Ljava/lang/String;

.field private mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/ForegroundServicesDialog;->FOREGROUND_PACKAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/systemui/ForegroundServicesDialog;->FOREGROUND_UID:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/ForegroundServicesDialog;)Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mAdapter:Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/ForegroundServicesDialog;)Landroid/app/NotificationChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mForegroundChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/ForegroundServicesDialog;)Landroid/app/INotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mINotificationManager:Landroid/app/INotificationManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "FOREGROUND_SERVICE"

    sput-object v0, Lcom/android/systemui/ForegroundServicesDialog;->FOREGROUND_CHANNEL_ID:Ljava/lang/String;

    const-string/jumbo v0, "android"

    sput-object v0, Lcom/android/systemui/ForegroundServicesDialog;->FOREGROUND_PACKAGE:Ljava/lang/String;

    const/16 v0, 0x3e8

    sput v0, Lcom/android/systemui/ForegroundServicesDialog;->FOREGROUND_UID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    new-instance v0, Lcom/android/systemui/ForegroundServicesDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ForegroundServicesDialog$1;-><init>(Lcom/android/systemui/ForegroundServicesDialog;)V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mAppClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/systemui/ForegroundServicesDialog$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/ForegroundServicesDialog$2;-><init>(Lcom/android/systemui/ForegroundServicesDialog;)V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/systemui/ForegroundServicesDialog$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/ForegroundServicesDialog$3;-><init>(Lcom/android/systemui/ForegroundServicesDialog;)V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/Dependency;->initDependencies(Landroid/content/Context;)V

    const-class v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/MetricsLogger;

    iput-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog;->mInflater:Landroid/view/LayoutInflater;

    new-instance v2, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;

    invoke-direct {v2, p0}, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog;->mAdapter:Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;

    iget-object v1, p0, Lcom/android/systemui/ForegroundServicesDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog;->mAdapter:Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog;->mAppClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d004b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    const v2, 0x7f120a2a

    invoke-virtual {p0, v2}, Lcom/android/systemui/ForegroundServicesDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/android/systemui/ForegroundServicesDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/ForegroundServicesDialog;->updateApps(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_0

    const-string/jumbo v2, "ForegroundServicesDialog"

    const-string/jumbo v3, "No packages supplied"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog;->setupAlert()V

    const-string/jumbo v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog;->mINotificationManager:Landroid/app/INotificationManager;

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog;->mINotificationManager:Landroid/app/INotificationManager;

    sget-object v3, Lcom/android/systemui/ForegroundServicesDialog;->FOREGROUND_PACKAGE:Ljava/lang/String;

    sget v4, Lcom/android/systemui/ForegroundServicesDialog;->FOREGROUND_UID:I

    sget-object v5, Lcom/android/systemui/ForegroundServicesDialog;->FOREGROUND_CHANNEL_ID:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog;->mForegroundChannel:Landroid/app/NotificationChannel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/ForegroundServicesDialog;->updateApps(Landroid/content/Intent;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x3b0

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x3b0

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog;->finish()V

    :cond_0
    return-void
.end method

.method updateApps(Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "packages"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mPackages:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mAdapter:Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;

    iget-object v1, p0, Lcom/android/systemui/ForegroundServicesDialog;->mPackages:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->setPackages([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
