.class final Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$H;
.super Landroid/os/Handler;
.source "SecSeekBarVolumizerDTMF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$H;->this$0:Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;

    invoke-static {v0}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->-get0(Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$H;->this$0:Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;

    invoke-static {v0}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->-get0(Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$H;->this$0:Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;

    iget-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$H;->this$0:Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;

    invoke-static {v1}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->-get0(Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->-set0(Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;I)I

    const-string/jumbo v0, "SeekBarVolumizerDTMF"

    const-string/jumbo v1, "handleMessage():UPDATE_SLIDER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
