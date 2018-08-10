.class Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment$1;
.super Ljava/lang/Object;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment$1;->this$1:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment$1;->this$1:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    invoke-static {v0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->-get0(Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
