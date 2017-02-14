.class Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;
.super Ljava/lang/Object;
.source "DoNotShowAgainDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get2(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-set0(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get2(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get0(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
