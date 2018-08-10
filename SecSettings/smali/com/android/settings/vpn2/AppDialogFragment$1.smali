.class Lcom/android/settings/vpn2/AppDialogFragment$1;
.super Ljava/lang/Object;
.source "AppDialogFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/AppDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/AppDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/AppDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/vpn2/AppDialogFragment$1;->this$0:Lcom/android/settings/vpn2/AppDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/vpn2/AppDialogFragment$1;->this$0:Lcom/android/settings/vpn2/AppDialogFragment;

    invoke-static {v2}, Lcom/android/settings/vpn2/AppDialogFragment;->-get0(Lcom/android/settings/vpn2/AppDialogFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DeleteVPN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/vpn2/AppDialogFragment$1;->this$0:Lcom/android/settings/vpn2/AppDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/vpn2/AppDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/AppDialogFragment$1;->this$0:Lcom/android/settings/vpn2/AppDialogFragment;

    invoke-virtual {v2, v0}, Lcom/android/settings/vpn2/AppDialogFragment;->onForget(Landroid/content/DialogInterface;)V

    iget-object v2, p0, Lcom/android/settings/vpn2/AppDialogFragment$1;->this$0:Lcom/android/settings/vpn2/AppDialogFragment;

    invoke-static {v2}, Lcom/android/settings/vpn2/AppDialogFragment;->-get0(Lcom/android/settings/vpn2/AppDialogFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    return-void
.end method
