.class Lcom/android/settings/accounts/AccountSettings$HelpClickListener;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$HelpClickListener;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/AccountSettings;Lcom/android/settings/accounts/AccountSettings$HelpClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSettings$HelpClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$HelpClickListener;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "helphub:appid"

    const-string/jumbo v2, "account"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$HelpClickListener;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$HelpClickListener;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "helphub:section"

    const-string/jumbo v2, "account"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$HelpClickListener;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
