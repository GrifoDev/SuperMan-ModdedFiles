.class Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

.field final synthetic val$item:Lcom/android/settings/UserCredentialsSettings$Credential;

.field final synthetic val$myUserId:I


# direct methods
.method constructor <init>(Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;ILcom/android/settings/UserCredentialsSettings$Credential;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    iput p2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->val$myUserId:I

    iput-object p3, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->val$item:Lcom/android/settings/UserCredentialsSettings$Credential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "no_config_credentials"

    iget v4, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->val$myUserId:I

    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->val$item:Lcom/android/settings/UserCredentialsSettings$Credential;

    iget v2, v2, Lcom/android/settings/UserCredentialsSettings$Credential;->storageType:I

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential;->-get0()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    new-instance v2, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;

    iget-object v3, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    iget-object v4, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v4}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v5}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;-><init>(Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;Landroid/content/Context;Landroid/app/Fragment;Z)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->val$item:Lcom/android/settings/UserCredentialsSettings$Credential;

    iget-object v4, v4, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
