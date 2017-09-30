.class Lcom/android/incallui/VolumeSeekBar$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VolumeSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VolumeSeekBar;


# direct methods
.method constructor <init>(Lcom/android/incallui/VolumeSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/VolumeSeekBar$1;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHandler: unexpected message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar$1;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar$1;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v0}, Lcom/android/incallui/VolumeSeekBar;->access$000(Lcom/android/incallui/VolumeSeekBar;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
