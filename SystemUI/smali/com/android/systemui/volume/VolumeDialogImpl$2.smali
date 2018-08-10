.class Lcom/android/systemui/volume/VolumeDialogImpl$2;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/volume/ZenModePanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# virtual methods
.method public onExpanded(Z)V
    .locals 0

    return-void
.end method

.method public onInteraction()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get11(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPrioritySettings()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get2(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialog$Callback;->onZenPrioritySettingsClicked()V

    return-void
.end method
