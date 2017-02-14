.class Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$4;
.super Ljava/lang/Object;
.source "DoNotShowAgainDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string/jumbo v1, "DoNotShowAgainDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the dialog setNegativeButton:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get0(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->setAutoVerfiyTrafficEnable(Z)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DoNotShowAgainDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DialogFragemnt dismiss Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
