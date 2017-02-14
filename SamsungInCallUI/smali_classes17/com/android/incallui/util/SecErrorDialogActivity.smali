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

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/incallui/util/SecErrorDialogActivity$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$5;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/util/SecErrorDialogActivity$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$4;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/incallui/util/SecErrorDialogActivity$8;

    invoke-direct {v3, p0, p2, p3, p4}, Lcom/android/incallui/util/SecErrorDialogActivity$8;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/android/incallui/util/SecErrorDialogActivity$7;

    invoke-direct {v3, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$7;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/util/SecErrorDialogActivity$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$6;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showErrorDialog_WeakWiFi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v1, "SecErrorDialogActivity"

    const-string v2, "showErrorDialog_WeakWiFi"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09044f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905c6

    new-instance v3, Lcom/android/incallui/util/SecErrorDialogActivity$11;

    invoke-direct {v3, p0, p2}, Lcom/android/incallui/util/SecErrorDialogActivity$11;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09052f

    new-instance v3, Lcom/android/incallui/util/SecErrorDialogActivity$10;

    invoke-direct {v3, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$10;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/util/SecErrorDialogActivity$9;

    invoke-direct {v2, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$9;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showErrorDialog_WiFi(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905c2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905c3

    new-instance v3, Lcom/android/incallui/util/SecErrorDialogActivity$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$3;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905c1

    new-instance v3, Lcom/android/incallui/util/SecErrorDialogActivity$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$2;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/util/SecErrorDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/util/SecErrorDialogActivity$1;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/android/incallui/util/SecErrorDialogActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "error_message"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "number"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "to_volte"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "errorCode"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "dialog_type"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    const-string v6, "SecErrorDialogActivity"

    const-string v7, "SecErrorDialogActivity called with no error type extra."

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, "dialog_weak_wifi"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/util/SecErrorDialogActivity;->showErrorDialog_WeakWiFi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v6, "dialog_type_wifi_to_lte_handover"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->showOnWeakWifiDuringEpdgDialog()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0, v3}, Lcom/android/incallui/util/SecErrorDialogActivity;->showErrorDialog_WiFi(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/android/incallui/util/SecErrorDialogActivity;->showErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v3}, Lcom/android/incallui/util/SecErrorDialogActivity;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public placeVideoCall(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "videocall"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public showOnWeakWifiDuringEpdgDialog()V
    .locals 11

    const/4 v10, 0x1

    const-string v7, "showOnWeakWifiDuringEpdgDialog"

    invoke-static {p0, v7, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "onWeakWifiDuringEpdgShowNeverAgain"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v7, 0x7f04018a

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v7, 0x1020001

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    const v7, 0x7f1000e1

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f090309

    invoke-virtual {p0, v7}, Lcom/android/incallui/util/SecErrorDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f09030a

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f090046

    new-instance v8, Lcom/android/incallui/util/SecErrorDialogActivity$12;

    invoke-direct {v8, p0, v2}, Lcom/android/incallui/util/SecErrorDialogActivity$12;-><init>(Lcom/android/incallui/util/SecErrorDialogActivity;Landroid/widget/Checkable;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    const v7, 0x7f09030c

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
