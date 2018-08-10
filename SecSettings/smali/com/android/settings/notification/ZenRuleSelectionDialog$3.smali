.class Lcom/android/settings/notification/ZenRuleSelectionDialog$3;
.super Ljava/lang/Object;
.source "ZenRuleSelectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRuleSelectionDialog;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ZenServiceListing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$3;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$3;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->-get5(Lcom/android/settings/notification/ZenRuleSelectionDialog;)Lcom/android/settings/utils/ZenServiceListing;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$3;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->-get5(Lcom/android/settings/notification/ZenRuleSelectionDialog;)Lcom/android/settings/utils/ZenServiceListing;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$3;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->-get6(Lcom/android/settings/notification/ZenRuleSelectionDialog;)Lcom/android/settings/utils/ZenServiceListing$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ZenServiceListing;->removeZenCallback(Lcom/android/settings/utils/ZenServiceListing$Callback;)V

    :cond_0
    return-void
.end method
