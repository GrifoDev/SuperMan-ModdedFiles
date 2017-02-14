.class Lcom/android/settings/dashboard/DashboardAdapter$7;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardAdapter;->showGoogleSettingsDialog(Lcom/android/settingslib/drawer/Tile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardAdapter;

.field final synthetic val$checkboxView:Landroid/widget/CheckBox;

.field final synthetic val$localTile:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;Landroid/widget/CheckBox;Lcom/android/settingslib/drawer/Tile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$7;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardAdapter$7;->val$checkboxView:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/settings/dashboard/DashboardAdapter$7;->val$localTile:Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter$7;->val$checkboxView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter$7;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "dashboard_adapter"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "google_settings_show_dialog"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter$7;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter$7;->val$localTile:Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->openTile(Lcom/android/settingslib/drawer/Tile;)Z

    return-void
.end method
