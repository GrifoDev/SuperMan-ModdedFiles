.class Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;->this$1:Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;->this$1:Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->-get1(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;->this$1:Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->-get0(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;->this$1:Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->-get1(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;->this$1:Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->-get0(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Z

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    goto :goto_0
.end method
