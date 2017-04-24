.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDeviceInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevice:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    return-void
.end method

.method private convertMilsToHHMMSS(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v8, 0xe10

    div-long v0, p1, v8

    const-wide/16 v8, 0xe10

    rem-long v2, p1, v8

    const-wide/16 v8, 0x3c

    div-long v4, v2, v8

    const-wide/16 v8, 0x3c

    rem-long v6, v2, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const-wide/16 v10, 0x3e8

    const v8, 0x7f110747

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040328

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->setView(Landroid/view/View;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->setInverseBackgroundForced(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v4, 0x7f110745

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f110746

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->getConnectedTime()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v6, v10

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->getConnectedTime()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v6, v10

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    const v4, 0x7f110748

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v10

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->getConnectedTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->convertMilsToHHMMSS(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b152e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {p0, v5, v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
