.class public Lcom/android/settings/ManagedLockPasswordProvider;
.super Ljava/lang/Object;
.source "ManagedLockPasswordProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;
    .locals 1

    new-instance v0, Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-direct {v0}, Lcom/android/settings/ManagedLockPasswordProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method createIntent(ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getPickerOptionTitle(Z)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getResIdForLockUnlockScreen(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f080104

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f080103

    goto :goto_0
.end method

.method getResIdForLockUnlockSubScreen()I
    .locals 1

    const v0, 0x7f080105

    return v0
.end method

.method isManagedPasswordChoosable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isSettingManagedPasswordSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
