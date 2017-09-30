.class Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InternalHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;I)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
