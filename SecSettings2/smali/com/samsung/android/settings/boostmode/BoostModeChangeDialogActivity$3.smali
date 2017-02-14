.class Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$3;
.super Ljava/lang/Object;
.source "BoostModeChangeDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get0(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get0(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get0(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-set0(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    return-void
.end method
