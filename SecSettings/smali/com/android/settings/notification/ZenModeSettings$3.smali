.class Lcom/android/settings/notification/ZenModeSettings$3;
.super Lcom/android/settings/notification/ZenRuleSelectionDialog;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeSettings;->showAddRuleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettings;Landroid/content/Context;Lcom/android/settings/utils/ZenServiceListing;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$3;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/notification/ZenRuleSelectionDialog;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ZenServiceListing;)V

    return-void
.end method


# virtual methods
.method public onExternalRuleSelected(Lcom/android/settings/notification/ZenRuleInfo;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p1, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$3;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onSystemRuleSelected(Lcom/android/settings/notification/ZenRuleInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$3;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-static {v0, p1}, Lcom/android/settings/notification/ZenModeSettings;->-wrap5(Lcom/android/settings/notification/ZenModeSettings;Lcom/android/settings/notification/ZenRuleInfo;)V

    return-void
.end method
