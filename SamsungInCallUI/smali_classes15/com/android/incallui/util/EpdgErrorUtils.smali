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
    .line 219
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static displayToast(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 225
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 226
    move-object v1, v0

    .line 230
    .local v1, "context":Landroid/content/Context;
    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 231
    return-void

    .line 228
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
    .line 73
    const-string v0, "SECVT-EpdgErrorUtils"

    const-string v1, "onCallDowngraded "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const v0, 0x7f09031f

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    const v0, 0x7f09031e

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    goto :goto_0
.end method

.method public static onLteToWifiHandover()V
    .locals 3

    .prologue
    .line 61
    const-string v0, "SECVT-EpdgErrorUtils"

    const-string v1, "onLteToWifiHandover"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    invoke-static {}, Lcom/android/incallui/util/SALogging;->getGeneralScreenId()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09038c

    invoke-static {v1}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    :cond_0
    const v0, 0x7f090305

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const v0, 0x7f0905a6

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    goto :goto_0
.end method

.method public static onWifiToLteHandover()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->onWifiToLteHandover(I)V

    .line 102
    return-void
.end method

.method public static onWifiToLteHandover(I)V
    .locals 4
    .param p0, "reason"    # I

    .prologue
    const/4 v3, 0x1

    .line 82
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

    .line 84
    invoke-static {}, Lcom/android/incallui/util/SALogging;->getGeneralScreenId()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09038b

    invoke-static {v1}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz p0, :cond_0

    if-ne p0, v3, :cond_3

    .line 87
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    const v0, 0x7f0905ad

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    .line 92
    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    const v0, 0x7f0905a7

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    .line 98
    :cond_3
    return-void
.end method

.method public static pauseVideo()V
    .locals 3

    .prologue
    .line 209
    const-string v0, "SECVT-EpdgErrorUtils"

    const-string v1, "pauseVideo()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 210
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->sendEpdgRequest(Z)V

    .line 211
    return-void
.end method

.method public static resumeVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 214
    const-string v0, "SECVT-EpdgErrorUtils"

    const-string v1, "resumeVideo()"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 215
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/vt/VideoCallManager;->sendEpdgRequest(Z)V

    .line 216
    return-void
.end method

.method public static showLowWifiSignalDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 162
    const-string v3, "SECVT-EpdgErrorUtils"

    const-string v4, "showLowWifiSignalDialog"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v5, 0x7f0b0010

    invoke-direct {v4, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0905b4

    .line 166
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090319

    .line 167
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0905ab

    new-instance v5, Lcom/android/incallui/util/EpdgErrorUtils$8;

    invoke-direct {v5}, Lcom/android/incallui/util/EpdgErrorUtils$8;-><init>()V

    .line 168
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0905ac

    new-instance v5, Lcom/android/incallui/util/EpdgErrorUtils$7;

    invoke-direct {v5}, Lcom/android/incallui/util/EpdgErrorUtils$7;-><init>()V

    .line 175
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/util/EpdgErrorUtils$6;

    invoke-direct {v4}, Lcom/android/incallui/util/EpdgErrorUtils$6;-><init>()V

    .line 179
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/util/EpdgErrorUtils$5;

    invoke-direct {v4}, Lcom/android/incallui/util/EpdgErrorUtils$5;-><init>()V

    .line 184
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 194
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 196
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/incallui/util/EpdgErrorUtils;->pauseVideo()V

    .line 198
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 199
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 200
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 201
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 202
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 203
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 204
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 205
    return-object v1
.end method

.method public static showOnWeakWifiDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 113
    const-string v3, "SECVT-EpdgErrorUtils"

    const-string v4, "showOnWeakWifiDialog"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v5, 0x7f0b0010

    invoke-direct {v4, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0905b0

    .line 117
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090317

    .line 118
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0905ab

    new-instance v5, Lcom/android/incallui/util/EpdgErrorUtils$4;

    invoke-direct {v5}, Lcom/android/incallui/util/EpdgErrorUtils$4;-><init>()V

    .line 119
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0905ac

    new-instance v5, Lcom/android/incallui/util/EpdgErrorUtils$3;

    invoke-direct {v5}, Lcom/android/incallui/util/EpdgErrorUtils$3;-><init>()V

    .line 126
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/util/EpdgErrorUtils$2;

    invoke-direct {v4}, Lcom/android/incallui/util/EpdgErrorUtils$2;-><init>()V

    .line 130
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/util/EpdgErrorUtils$1;

    invoke-direct {v4}, Lcom/android/incallui/util/EpdgErrorUtils$1;-><init>()V

    .line 135
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 145
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 147
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/incallui/util/EpdgErrorUtils;->pauseVideo()V

    .line 149
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 150
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 151
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 152
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 154
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 155
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 156
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 157
    return-object v1
.end method

.method public static showOnWeakWifiDuringEpdgDialog()V
    .locals 4

    .prologue
    .line 105
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 106
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "dialog_type"

    const-string v3, "dialog_type_wifi_to_lte_handover"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
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
    const v3, 0x7f0905c3

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
