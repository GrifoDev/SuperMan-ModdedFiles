.class Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;
.super Landroid/os/Handler;
.source "SecIntervalSeekbarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SecIntervalSeekbarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->-get4(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->-get2(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "### handle.what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->cancelAnim()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->-get5(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->-get0(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->-get1(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->-get0(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->-get1(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->-get0(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
