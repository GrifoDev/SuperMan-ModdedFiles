.class public Lcom/android/incallui/util/EpdgErrorUtils;
.super Ljava/lang/Object;
.source "EpdgErrorUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SECVT-EpdgErrorUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayToast(I)V
    .locals 1
    .param p0, "res"    # I

    .prologue
    .line 230
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public static displayToast(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 236
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 237
    move-object v1, v0

    .line 241
    .local v1, "context":Landroid/content/Context;
    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 242
    return-void

    .line 239
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .restart local v1    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public static handeEpdgNotification(Lcom/android/incallui/Call;)Z
    .locals 7
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "handled":Z
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->getHandoverNotificationType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VZW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isAvailableEpdg()Z

    move-result v0

    .line 47
    .local v0, "canEpdg":Z
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v3

    .line 48
    .local v3, "isWiFiOn":Z
    const/4 v2, 0x0

    .line 49
    .local v2, "isEpdg":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isEpdgCall()Z

    move-result v2

    .line 51
    :cond_0
    const-string v4, "SECVT-EpdgErrorUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handeEpdgNotification() isWiFiOn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", canEpdg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isEpdg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/EpdgErrorUtils;->showWeakWifiDialog(Ljava/lang/String;)V

    .line 54
    const/4 v1, 0x1

    .line 57
    .end local v0    # "canEpdg":Z
    .end local v2    # "isEpdg":Z
    .end local v3    # "isWiFiOn":Z
    :cond_1
    return v1
.end method

.method public static onCallDowngraded()V
    .locals 3

    .prologue
    .line 84
    const-string v0, "SECVT-EpdgErrorUtils"

    const-string v1, "onCallDowngraded "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const v0, 0x7f090313

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    const v0, 0x7f090312

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    goto :goto_0
.end method

.method public static onLteToWifiHandover()V
    .locals 3

    .prologue
    .line 72
    const-string v0, "SECVT-EpdgErrorUtils"

    const-string v1, "onLteToWifiHandover"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    invoke-static {}, Lcom/android/incallui/util/SALogging;->getGeneralScreenId()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090382

    invoke-static {v1}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const v0, 0x7f0902f9

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const v0, 0x7f0905a7

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    goto :goto_0
.end method

.method public static onWeakWifiCallDrop(I)V
    .locals 3
    .param p0, "reason"    # I

    .prologue
    .line 61
    const-string v0, "SECVT-EpdgErrorUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWeakWifiCallDrop msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 63
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const v0, 0x7f09030e

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const v0, 0x7f0905ab

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    goto :goto_0
.end method

.method public static onWifiToLteHandover()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->onWifiToLteHandover(I)V

    .line 113
    return-void
.end method

.method public static onWifiToLteHandover(I)V
    .locals 4
    .param p0, "reason"    # I

    .prologue
    const/4 v3, 0x1

    .line 93
    const-string v0, "SECVT-EpdgErrorUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiToLteHandover msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    invoke-static {}, Lcom/android/incallui/util/SALogging;->getGeneralScreenId()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090381

    invoke-static {v1}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz p0, :cond_0

    if-ne p0, v3, :cond_2

    .line 98
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const v0, 0x7f0905ae

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    .line 103
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    const v0, 0x7f0905a8

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    .line 109
    :cond_2
    return-void
.end method

.method public static pauseVideo()V
    .locals 3

    .prologue
    .line 220
    const-string v0, "SECVT-EpdgErrorUtils"

    const-string v1, "pauseVideo()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 221
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->sendEpdgRequest(Z)V

    .line 222
    return-void
.end method

.method public static resumeVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 225
    const-string v0, "SECVT-EpdgErrorUtils"

    const-string v1, "resumeVideo()"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/vt/VideoCallManager;->sendEpdgRequest(Z)V

    .line 227
    return-void
.end method

.method public static showLowWifiSignalDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 173
    const-string v3, "SECVT-EpdgErrorUtils"

    const-string v4, "showLowWifiSignalDialog"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 176
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v5, 0x7f0b0010

    invoke-direct {v4, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0905b5

    .line 177
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09030d

    .line 178
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0905ac

    new-instance v5, Lcom/android/incallui/util/EpdgErrorUtils$8;

    invoke-direct {v5}, Lcom/android/incallui/util/EpdgErrorUtils$8;-><init>()V

    .line 179
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0905ad

    new-instance v5, Lcom/android/incallui/util/EpdgErrorUtils$7;

    invoke-direct {v5}, Lcom/android/incallui/util/EpdgErrorUtils$7;-><init>()V

    .line 186
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/util/EpdgErrorUtils$6;

    invoke-direct {v4}, Lcom/android/incallui/util/EpdgErrorUtils$6;-><init>()V

    .line 190
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/util/EpdgErrorUtils$5;

    invoke-direct {v4}, Lcom/android/incallui/util/EpdgErrorUtils$5;-><init>()V

    .line 195
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 205
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 207
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/incallui/util/EpdgErrorUtils;->pauseVideo()V

    .line 209
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 210
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 211
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 212
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 213
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 214
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 215
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 216
    return-object v1
.end method

.method public static showOnWeakWifiDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 124
    const-string v3, "SECVT-EpdgErrorUtils"

    const-string v4, "showOnWeakWifiDialog"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v5, 0x7f0b0010

    invoke-direct {v4, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0905b1

    .line 128
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09030b

    .line 129
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0905ac

    new-instance v5, Lcom/android/incallui/util/EpdgErrorUtils$4;

    invoke-direct {v5}, Lcom/android/incallui/util/EpdgErrorUtils$4;-><init>()V

    .line 130
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0905ad

    new-instance v5, Lcom/android/incallui/util/EpdgErrorUtils$3;

    invoke-direct {v5}, Lcom/android/incallui/util/EpdgErrorUtils$3;-><init>()V

    .line 137
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/util/EpdgErrorUtils$2;

    invoke-direct {v4}, Lcom/android/incallui/util/EpdgErrorUtils$2;-><init>()V

    .line 141
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/util/EpdgErrorUtils$1;

    invoke-direct {v4}, Lcom/android/incallui/util/EpdgErrorUtils$1;-><init>()V

    .line 146
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 158
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/incallui/util/EpdgErrorUtils;->pauseVideo()V

    .line 160
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 161
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 162
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 163
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 165
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 166
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 167
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 168
    return-object v1
.end method

.method public static showOnWeakWifiDuringEpdgDialog()V
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 117
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "dialog_type"

    const-string v3, "dialog_type_wifi_to_lte_handover"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method public static showWeakWifiDialog(Ljava/lang/String;)V
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 34
    .local v0, "context":Landroid/content/Context;
    const v3, 0x7f0905c4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "error_message"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v3, "number"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    const-string v3, "dialog_type"

    const-string v4, "dialog_weak_wifi"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method
