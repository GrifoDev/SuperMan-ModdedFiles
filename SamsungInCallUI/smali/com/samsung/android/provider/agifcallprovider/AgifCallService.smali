.class public Lcom/samsung/android/provider/agifcallprovider/AgifCallService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;

.field private b:Landroid/os/HandlerThread;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    const-string v2, "com.android.incallui"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/provider/agifcallprovider/AgifCallService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->c:I

    return v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AgifCallServiceHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;

    iget-object v1, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;-><init>(Lcom/samsung/android/provider/agifcallprovider/AgifCallService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;

    :goto_0
    return-void

    :cond_0
    const-string v0, "AgifCallService"

    const-string v1, "cannot get thread looper"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->b:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const-string v1, "AgifCallService"

    const-string v2, "onStartCommand(null)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v2, "AgifCallService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartCommand("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->c:I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;

    invoke-virtual {v3}, Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, v3, Landroid/os/Message;->arg1:I

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;

    invoke-virtual {v0, v3}, Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v0, v3, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_2
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, v3, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_3
    const-string v0, "com.samsung.android.provider.agifcallprovider.action.ACTION_CHECK_AGIF_LIST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    iput v0, v3, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_4
    const-string v0, "com.samsung.android.provider.agifcallprovider.action.ACTION_SYNC_AGIF_LIST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xc

    iput v0, v3, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_5
    const-string v0, "com.samsung.android.provider.agifcallprovider.action.ACTION_DATA_CLEARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->d:Ljava/lang/String;

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0xd

    iput v0, v3, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_6
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->d:Ljava/lang/String;

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x15

    iput v0, v3, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->c:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->stopSelfResult(I)Z

    move v0, v1

    goto/16 :goto_0
.end method
