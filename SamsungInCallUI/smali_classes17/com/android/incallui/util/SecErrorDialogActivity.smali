.class public Lcom/android/incallui/util/SecErrorDialogActivity;
.super Landroid/app/Activity;
.source "SecErrorDialogActivity.java"


# static fields
.field public static final DIALOG_TYPE:Ljava/lang/String; = "dialog_type"

.field public static final DIALOG_TYPE_WEAK_WIFI:Ljava/lang/String; = "dialog_weak_wifi"

.field public static final DIALOG_TYPE_WIFI_TO_LTE_HANDOVER:Ljava/lang/String; = "dialog_type_wifi_to_lte_handover"

.field public static final ERROR_MESSAGE:Ljava/lang/String; = "error_message"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field private static final TAG:Ljava/lang/String; = "SecErrorDialogActivity"

.field public static final TO_VOLTE:Ljava/lang/String; = "to_volte"

.field public static final WIFI:Ljava/lang/String; = "wifi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/incallui/util/SecErrorDialogActivity$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$5;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    .line 127
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/util/SecErrorDialogActivity$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$4;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    .line 132
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 139
    .local v0, "errorDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 140
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 143
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 144
    return-void
.end method

.method private showErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "toVoLTE"    # Z
    .param p4, "errorCode"    # I

    .prologue
    .line 147
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/incallui/util/SecErrorDialogActivity$8;

    invoke-direct {v3, p0, p2, p3, p4}, Lcom/android/incallui/util/SecErrorDialogActivity$8;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;Ljava/lang/String;ZI)V

    .line 148
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/android/incallui/util/SecErrorDialogActivity$7;

    invoke-direct {v3, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$7;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    .line 154
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/util/SecErrorDialogActivity$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$6;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    .line 159
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 166
    .local v0, "errorDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 167
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 170
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 171
    return-void
.end method

.method private showErrorDialog_WeakWiFi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string v1, "SecErrorDialogActivity"

    const-string v2, "showErrorDialog_WeakWiFi"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09044f

    .line 176
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905c6

    new-instance v3, Lcom/android/incallui/util/SecErrorDialogActivity$11;

    invoke-direct {v3, p0, p2}, Lcom/android/incallui/util/SecErrorDialogActivity$11;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09052f

    new-instance v3, Lcom/android/incallui/util/SecErrorDialogActivity$10;

    invoke-direct {v3, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$10;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    .line 183
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/util/SecErrorDialogActivity$9;

    invoke-direct {v2, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$9;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    .line 188
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 195
    .local v0, "errorDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 196
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 197
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 198
    return-void
.end method

.method private showErrorDialog_WiFi(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905c2

    .line 94
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905c3

    new-instance v3, Lcom/android/incallui/util/SecErrorDialogActivity$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$3;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    .line 95
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905c1

    new-instance v3, Lcom/android/incallui/util/SecErrorDialogActivity$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$2;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    .line 106
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/util/SecErrorDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$1;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    .line 111
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 118
    .local v0, "errorDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 119
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 122
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 123
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 242
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 245
    invoke-virtual {p0, v0, v0}, Lcom/android/incallui/util/SecErrorDialogActivity;->overridePendingTransition(II)V

    .line 246
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "error_message"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "number"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "to_volte"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 65
    .local v5, "toVoLTE":Z
    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    .local v0, "bWiFi":Z
    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "errorCode"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 67
    .local v2, "errorCode":I
    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "dialog_type"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "dialog_type":Ljava/lang/String;
    if-nez v3, :cond_1

    if-nez v1, :cond_1

    .line 70
    const-string v6, "SecErrorDialogActivity"

    const-string v7, "SecErrorDialogActivity called with no error type extra."

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->finish()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 74
    const-string v6, "dialog_weak_wifi"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 75
    invoke-direct {p0, v3, v4}, Lcom/android/incallui/util/SecErrorDialogActivity;->showErrorDialog_WeakWiFi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    const-string v6, "dialog_type_wifi_to_lte_handover"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->showOnWeakWifiDuringEpdgDialog()V

    goto :goto_0

    .line 80
    :cond_3
    if-eqz v0, :cond_4

    .line 81
    invoke-direct {p0, v3}, Lcom/android/incallui/util/SecErrorDialogActivity;->showErrorDialog_WiFi(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_4
    if-eqz v4, :cond_5

    .line 83
    invoke-direct {p0, v3, v4, v5, v2}, Lcom/android/incallui/util/SecErrorDialogActivity;->showErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 85
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/incallui/util/SecErrorDialogActivity;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public placeVideoCall(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 232
    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 234
    .local v1, "tm":Landroid/telecom/TelecomManager;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "videocall"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 238
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "tm":Landroid/telecom/TelecomManager;
    :cond_0
    return-void
.end method

.method public showOnWeakWifiDuringEpdgDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 201
    const-string v7, "showOnWeakWifiDuringEpdgDialog"

    invoke-static {p0, v7, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 202
    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "onWeakWifiDuringEpdgShowNeverAgain"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 203
    .local v4, "showNeverAgain":I
    if-nez v4, :cond_0

    .line 205
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 206
    .local v3, "factory":Landroid/view/LayoutInflater;
    const v7, 0x7f04018a

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "contents":Landroid/view/View;
    const v7, 0x1020001

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    .line 208
    .local v2, "dialogCheckbox":Landroid/widget/Checkable;
    const v7, 0x7f1000e1

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 209
    .local v5, "waringAlertTextView":Landroid/widget/TextView;
    const v7, 0x7f090309

    invoke-virtual {p0, v7}, Lcom/android/incallui/util/SecErrorDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f09030a

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 213
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 214
    const v7, 0x7f090046

    new-instance v8, Lcom/android/incallui/util/SecErrorDialogActivity$12;

    invoke-direct {v8, p0, v2}, Lcom/android/incallui/util/SecErrorDialogActivity$12;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;Landroid/widget/Checkable;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 224
    .local v6, "wifiDialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 225
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 229
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "contents":Landroid/view/View;
    .end local v2    # "dialogCheckbox":Landroid/widget/Checkable;
    .end local v3    # "factory":Landroid/view/LayoutInflater;
    .end local v5    # "waringAlertTextView":Landroid/widget/TextView;
    .end local v6    # "wifiDialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 227
    :cond_0
    const v7, 0x7f09030c

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
