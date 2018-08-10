.class Lcom/android/systemui/volume/SecVolumeDialogImpl$3;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/volume/ZenModePanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpanded(Z)V
    .locals 0

    return-void
.end method

.method public onInteraction()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get19(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPrioritySettings()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get6(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialog$Callback;->onZenPrioritySettingsClicked()V

    return-void
.end method
