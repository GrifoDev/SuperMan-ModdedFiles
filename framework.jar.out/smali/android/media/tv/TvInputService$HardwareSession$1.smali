.class Landroid/media/tv/TvInputService$HardwareSession$1;
.super Landroid/media/tv/TvInputManager$SessionCallback;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService$HardwareSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$HardwareSession;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$HardwareSession;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-static {v1, p1}, Landroid/media/tv/TvInputService$HardwareSession;->-set0(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-static {v1}, Landroid/media/tv/TvInputService$HardwareSession;->-get2(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-static {v1}, Landroid/media/tv/TvInputService$HardwareSession;->-get3(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-virtual {v1}, Landroid/media/tv/TvInputService$HardwareSession;->getHardwareInputId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;)V

    :goto_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-static {v1}, Landroid/media/tv/TvInputService$HardwareSession;->-get4(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-static {v1}, Landroid/media/tv/TvInputService$HardwareSession;->-get3(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-virtual {v1}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    goto :goto_0
.end method

.method public onVideoAvailable(Landroid/media/tv/TvInputManager$Session;)V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-static {v0}, Landroid/media/tv/TvInputService$HardwareSession;->-get0(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-virtual {v0}, Landroid/media/tv/TvInputService$HardwareSession;->onHardwareVideoAvailable()V

    :cond_0
    return-void
.end method

.method public onVideoUnavailable(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-static {v0}, Landroid/media/tv/TvInputService$HardwareSession;->-get0(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    invoke-virtual {v0, p2}, Landroid/media/tv/TvInputService$HardwareSession;->onHardwareVideoUnavailable(I)V

    :cond_0
    return-void
.end method
