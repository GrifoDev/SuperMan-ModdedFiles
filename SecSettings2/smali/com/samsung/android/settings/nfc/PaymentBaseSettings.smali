.class public Lcom/samsung/android/settings/nfc/PaymentBaseSettings;
.super Landroid/app/Fragment;
.source "PaymentBaseSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x1020002

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentBaseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v5, "category"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v3, Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-direct {v3}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;-><init>()V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->setStartCategory(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentBaseSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v5, 0x1020002

    invoke-virtual {v2, v5, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentBaseSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-direct {v6}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;-><init>()V

    invoke-virtual {v5, v7, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method
