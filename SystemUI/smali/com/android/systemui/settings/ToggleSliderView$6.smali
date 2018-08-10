.class Lcom/android/systemui/settings/ToggleSliderView$6;
.super Ljava/lang/Object;
.source "ToggleSliderView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleSliderView;->showStrainAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSliderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$6;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$6;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->-set0(Lcom/android/systemui/settings/ToggleSliderView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$6;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    iget-boolean v0, v0, Lcom/android/systemui/settings/ToggleSliderView;->showEyeStrainDialog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$6;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$6;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    iget v1, v1, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarThreshold:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$6;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$6;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    iget v1, v1, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarThreshold:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$6;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get0(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shown_max_brightness_dialog"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method
