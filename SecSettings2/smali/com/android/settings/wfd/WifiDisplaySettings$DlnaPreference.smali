.class Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaPreference"
.end annotation


# instance fields
.field private final mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

.field public final sDeviceTypeImages:[I

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;)Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0202fe

    const v6, 0x7f020559

    filled-new-array {v5, v6}, [I

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->sDeviceTypeImages:[I

    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    const-string/jumbo v5, "WifiDisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "iconCache size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " device url : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIcon()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Device id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIcon()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIcon()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    const v5, 0x7f040315

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->setLayoutResource(I)V

    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportMirroring()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0e43

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_1

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d020e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v6

    invoke-interface {v4, v5, v8, v6, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->sDeviceTypeImages:[I

    aget v5, v5, v9

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->setIcon(I)V

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;

    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIcon()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p1, v5, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/net/Uri;Ljava/lang/String;)V

    new-array v5, v8, [Landroid/os/Handler;

    invoke-virtual {v1, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->sDeviceTypeImages:[I

    aget v5, v5, v9

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->setIcon(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    const v6, -0xff5f32

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_0

    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "onBindView can\'t find device name."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v4, 0xa

    if-eq v1, v4, :cond_1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_3

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get11(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WfdPickerDialog;->IsChangeDevice()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap4(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap6(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap6(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    invoke-virtual {v5}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get11(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WfdPickerDialog;->IsChangeDevice()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap4(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap6(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    invoke-virtual {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap14(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "dlna"

    const v4, 0x22070

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v3, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap11(Lcom/android/settings/wfd/WifiDisplaySettings;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap9(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    new-instance v3, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportMirroring()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    :goto_1
    invoke-direct {v3, v4, v5, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    invoke-static {v2, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->-set3(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap1(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap8(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap7(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    goto :goto_0
.end method
