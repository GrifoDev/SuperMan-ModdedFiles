.class Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$InternalHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;
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

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;->mTask:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;->mData:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;->mTask:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;->mData:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->onProgressUpdate(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;->mTask:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->onCancelled()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
