.class Lcom/android/systemui/settings/BrightnessController$9;
.super Landroid/os/Handler;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2, v0}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    return-void

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2, v1}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    throw v0

    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    :goto_1
    invoke-interface {v2, v0}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    :goto_2
    invoke-static {v2, v0}, Lcom/android/systemui/settings/BrightnessController;->-wrap1(Lcom/android/systemui/settings/BrightnessController;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->updateHighBrightnessMode(I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->updateStrainAlertDialog(I)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->updateOutdoorMode(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
