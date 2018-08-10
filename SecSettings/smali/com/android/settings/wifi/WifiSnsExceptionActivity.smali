.class public Lcom/android/settings/wifi/WifiSnsExceptionActivity;
.super Landroid/app/Activity;
.source "WifiSnsExceptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSnsExceptionActivity$1;,
        Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsResultReported:Z

.field private mPopUpAppearedTime:J

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSsid:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

.field mWifiSnsExceptionDialogListener:Landroid/view/View$OnClickListener;

.field private netId:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->netId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/wifi/WifiSnsExceptionActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mIsResultReported:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/WifiSnsExceptionActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->updateBigdata(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mIsResultReported:Z

    new-instance v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity$1;-><init>(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;-><init>(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private showWifiSnsExceptionDialog()V
    .locals 12

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0d03c6

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a09e3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0a088a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v7, 0x7f0a0460

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_ADAPTIVE_WIFI"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "Smart Network Switch"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_Wifi_ConfigAutoWifiNaming"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v0, v7, 0x1

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const v10, 0x7f12214b

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v9, 0x7f12214c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const v10, 0x7f12214f

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v9, 0x7f12214e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f122152

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_1
    const v7, 0x7f12211f

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    const v7, 0x7f122120

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    :goto_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;-><init>(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mPopUpAppearedTime:J

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    const-string/jumbo v7, "WifiSnsExceptionActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "WifiSnsExceptionActivity appears with SSID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const v10, 0x7f12214f

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v9, 0x7f12214d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const v10, 0x7f12211a

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v9, 0x7f12211b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_6
    const v7, 0x7f122151

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    const v7, 0x7f122150

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2
.end method

.method private updateBigdata(I)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mPopUpAppearedTime:J

    sub-long v2, v6, v8

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v5, 0x139

    iput v5, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "event"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "time"

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->requestWindowFeature(I)Z

    iput-object p0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "netId"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->netId:I

    const-string/jumbo v3, "SSID"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->netId:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    const-string/jumbo v4, "<unknown ssid>"

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string/jumbo v3, "AP"

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    :cond_2
    const-string/jumbo v3, "WifiSnsExceptionActivity"

    const-string/jumbo v4, "WifiSnsExceptionActivity created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->showWifiSnsExceptionDialog()V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    sget-boolean v3, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WifiSnsExceptionActivity"

    const-string/jumbo v4, "WifiSnsExceptionActivity onUserLeaveHint"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mIsResultReported:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0xc9

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "keep_connection"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "netId"

    iget v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->netId:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_sns_dialog_for_starting_settings"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    return-void

    :cond_2
    sget-boolean v3, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiSnsExceptionActivity"

    const-string/jumbo v4, "WifiManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
