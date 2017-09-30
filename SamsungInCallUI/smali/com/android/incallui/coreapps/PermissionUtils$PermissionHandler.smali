.class Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/coreapps/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermissionHandler"
.end annotation


# instance fields
.field pInterface:Lcom/android/incallui/coreapps/PermissionInterface;


# direct methods
.method public constructor <init>(Lcom/android/incallui/coreapps/PermissionInterface;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;->pInterface:Lcom/android/incallui/coreapps/PermissionInterface;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string v0, "PermissionUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage - msg what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;->pInterface:Lcom/android/incallui/coreapps/PermissionInterface;

    if-nez v0, :cond_0

    const-string v0, "PermissionUtils"

    const-string v1, "handleMessage - pInterface = null"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;->pInterface:Lcom/android/incallui/coreapps/PermissionInterface;

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;->pInterface:Lcom/android/incallui/coreapps/PermissionInterface;

    invoke-interface {v0}, Lcom/android/incallui/coreapps/PermissionInterface;->onPermissionDenied()V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;->pInterface:Lcom/android/incallui/coreapps/PermissionInterface;

    invoke-interface {v0}, Lcom/android/incallui/coreapps/PermissionInterface;->onPermissionGranted()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x2710 -> :sswitch_0
    .end sparse-switch
.end method
