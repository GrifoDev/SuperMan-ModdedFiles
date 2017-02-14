.class Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$1;
.super Landroid/os/Handler;
.source "PowerModeChangeProcessingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mInternalHandler. Activity is null or finishing."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get12(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get3(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/circle/CircleContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->doRippleAnimation(IZZ)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get10(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->playItemCheckingAnim()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-wrap2(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
