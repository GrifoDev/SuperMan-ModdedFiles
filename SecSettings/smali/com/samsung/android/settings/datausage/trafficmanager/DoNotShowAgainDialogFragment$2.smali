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
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b013c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0159

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get2(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-set0(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get0(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v1, v0, v2}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get2(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get0(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
