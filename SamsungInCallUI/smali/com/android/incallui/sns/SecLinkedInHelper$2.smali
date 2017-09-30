.class Lcom/android/incallui/sns/SecLinkedInHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/sns/SecLinkedInHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/sns/SecLinkedInHelper;


# direct methods
.method constructor <init>(Lcom/android/incallui/sns/SecLinkedInHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/sns/SecLinkedInHelper$2;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$2;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {p2}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$602(Lcom/android/incallui/sns/SecLinkedInHelper;Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$2;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$600(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$2;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    iget-object v1, p0, Lcom/android/incallui/sns/SecLinkedInHelper$2;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v1}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$600(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/sns/SecLinkedInHelper$2;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v2}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$800(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;->registerCallback(Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$702(Lcom/android/incallui/sns/SecLinkedInHelper;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
