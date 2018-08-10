.class public Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiConnectionHandlerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wifi/WifiConnectionHandlerActivity$1;
    }
.end annotation


# instance fields
.field private mDateConnectionDialog:Landroid/app/AlertDialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsReceiverRegistered:Z

.field private mPrefDoNotShow:Landroid/content/SharedPreferences;

.field private mPrefPreviousValue:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mPrefDoNotShow:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mPrefPreviousValue:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->setDataEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    new-instance v0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity$1;-><init>(Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;)V

    iput-object v0, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private setDataEnabled(Z)V
    .locals 4

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "WifiConnectionHandlerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CMCC dialog - setDataEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "WifiConnectionHandlerActivity"

    const-string/jumbo v2, "ConnectivityManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showdataConnectionDialog()V
    .locals 8

    const/4 v7, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mPrefDoNotShow:Landroid/content/SharedPreferences;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mPrefPreviousValue:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d0041

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0a0331

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1203d6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a018b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120be5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1203e8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity$2;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity$2;-><init>(Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1203e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity$3;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity$3;-><init>(Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v4, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v4, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d2

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    iget-object v4, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    invoke-direct {p0}, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->showdataConnectionDialog()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->setDataEnabled(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wifi/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
