.class Lcom/android/incallui/bike/BikeModeAudioManager$9;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/bike/BikeModeAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/bike/BikeModeAudioManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager$9;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager$9;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$300(Lcom/android/incallui/bike/BikeModeAudioManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const-string v1, "callmemo_enabled=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v1, "dl_ringtone=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager$9;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$600(Lcom/android/incallui/bike/BikeModeAudioManager;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
