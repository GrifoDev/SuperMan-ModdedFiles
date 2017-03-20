.class public Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;
.super Ljava/lang/Object;
.source "RemoteContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$WorkerHandler;,
        Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$WorkerArgs;,
        Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final EVENT_LOAD_IMAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContactsAsyncHelper"

.field private static sInstance:Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# instance fields
.field private final mResultHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;

    invoke-direct {v0}, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;-><init>()V

    sput-object v0, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;->sInstance:Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;

    .line 72
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v3, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$1;-><init>(Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;)V

    iput-object v3, p0, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;->mResultHandler:Landroid/os/Handler;

    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, "thread":Landroid/os/HandlerThread;
    :try_start_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ContactsAsyncWorker"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1    # "thread":Landroid/os/HandlerThread;
    .local v2, "thread":Landroid/os/HandlerThread;
    :try_start_1
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 147
    new-instance v3, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$WorkerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$WorkerHandler;-><init>(Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v3, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 151
    .end local v2    # "thread":Landroid/os/HandlerThread;
    .restart local v1    # "thread":Landroid/os/HandlerThread;
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "thread":Landroid/os/HandlerThread;
    .restart local v2    # "thread":Landroid/os/HandlerThread;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "thread":Landroid/os/HandlerThread;
    .restart local v1    # "thread":Landroid/os/HandlerThread;
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;->mResultHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V
    .locals 5
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "listener"    # Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$OnImageLoadCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 173
    if-nez p2, :cond_0

    .line 174
    const-string v2, "startObjectPhotoAsync"

    const-string v3, "Uri is missing"

    invoke-static {v2, v3}, Lcom/android/incallui/remotecall/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v0, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$WorkerArgs;-><init>(Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$1;)V

    .line 183
    .local v0, "args":Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$WorkerArgs;
    iput-object p4, v0, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 184
    iput-object p1, v0, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 185
    iput-object p2, v0, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$WorkerArgs;->photoUri:Landroid/net/Uri;

    .line 186
    iput-object p3, v0, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$OnImageLoadCompleteListener;

    .line 189
    sget-object v2, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 190
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 191
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    const-string v2, "startObjectPhotoAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Begin loading image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$WorkerArgs;->photoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", displaying default image for now."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v2, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
