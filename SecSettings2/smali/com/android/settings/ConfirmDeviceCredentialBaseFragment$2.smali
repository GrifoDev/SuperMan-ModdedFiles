.class Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$2;
.super Ljava/lang/Object;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

.field final synthetic val$dismiss:Z


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$2;->this$0:Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

    iput-boolean p2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$2;->val$dismiss:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$2;->val$dismiss:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$2;->this$0:Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

    invoke-virtual {v0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
