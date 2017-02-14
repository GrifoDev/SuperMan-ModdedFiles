.class Lcom/android/settings/dashboard/DashboardAdapter$1;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardAdapter;

.field final synthetic val$position:I

.field final synthetic val$tile:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->val$tile:Lcom/android/settingslib/drawer/Tile;

    iput p3, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    iget-object v5, v5, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    iget-object v5, v5, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/settings/dashboard/DashboardAdapter;->-wrap0(Lcom/android/settings/dashboard/DashboardAdapter;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    iget-object v5, v5, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string/jumbo v5, "needSearchMenuInSub"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    iget-object v5, v5, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->val$tile:Lcom/android/settingslib/drawer/Tile;

    iget-object v5, v5, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "com.android.settings.tileid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    const-string/jumbo v5, "mobile_networks_settings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_4

    const-string/jumbo v5, "no_config_mobile_networks"

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "no_config_mobile_networks"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_3
    const-string/jumbo v5, "google_settings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    invoke-static {v6, v5}, Lcom/android/settings/dashboard/DashboardAdapter;->-wrap2(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V

    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {v5, v6}, Lcom/android/settings/SettingsActivity;->openTile(Lcom/android/settingslib/drawer/Tile;)Z

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->val$tile:Lcom/android/settingslib/drawer/Tile;

    iget-object v5, v5, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iget v6, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->val$position:I

    invoke-virtual {v5, v6}, Lcom/android/settings/dashboard/DashboardAdapter;->setSelectedTilePosition(I)V

    :cond_5
    return-void
.end method
