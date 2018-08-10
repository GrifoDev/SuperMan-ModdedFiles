.class public Lcom/android/settings/network/NetworkResetActionMenuController;
.super Ljava/lang/Object;
.source "NetworkResetActionMenuController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRestrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/NetworkResetActionMenuController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/network/NetworkResetRestrictionChecker;

    invoke-direct {v0, p1}, Lcom/android/settings/network/NetworkResetRestrictionChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkResetActionMenuController;->mRestrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;

    return-void
.end method


# virtual methods
.method public buildMenuItem(Landroid/view/Menu;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkResetActionMenuController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const/16 v1, 0xc9

    const v2, 0x7f121614

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settings/network/-$Lambda$MbgUrMofvjzHgfAaaCp2x35Uths;

    invoke-direct {v1, p0}, Lcom/android/settings/network/-$Lambda$MbgUrMofvjzHgfAaaCp2x35Uths;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/NetworkResetActionMenuController;->mRestrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;

    invoke-virtual {v0}, Lcom/android/settings/network/NetworkResetRestrictionChecker;->hasRestriction()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_settings_network_NetworkResetActionMenuController_1598(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/network/NetworkResetActionMenuController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/ResetNetwork;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const v5, 0x7f121614

    const/16 v7, 0x2ea

    move-object v3, v2

    move-object v6, v2

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;I)V

    const/4 v0, 0x1

    return v0
.end method
