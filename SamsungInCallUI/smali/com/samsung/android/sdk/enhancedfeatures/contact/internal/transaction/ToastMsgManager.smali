.class public final Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager$ToastMessage;,
        Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager$ToastHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ToastMsgManager"

.field public static final TOAST_TYPE_NETWORK_ERROR:I = 0x0

.field public static final TOAST_TYPE_PERFORMANCE_TEST:I = 0x2

.field public static final TOAST_TYPE_SERVER_ERROR:I = 0x1

.field private static instance:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;

.field private static mToastHandler:Landroid/os/Handler;


# instance fields
.field private looper:Landroid/os/Looper;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;->instance:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ToastMsgManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;->looper:Landroid/os/Looper;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;->looper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager$ToastHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;->looper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager$ToastHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;->mToastHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;
    .locals 2

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;->instance:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;->instance:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;->instance:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public showToastMsg(ILjava/lang/String;Ljava/lang/Long;)V
    .locals 0

    return-void
.end method
