.class final synthetic Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field private final synthetic -$f0:J

.field private final synthetic -$f1:J

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v1, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->-$f3:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-wide v2, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->-$f0:J

    iget-wide v4, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->-$f1:J

    iget-object v6, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->-$f4:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/SyncManager$SyncHandler;->lambda$-com_android_server_content_SyncManager$SyncHandler_126451(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->-$f0:J

    iput-wide p3, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->-$f1:J

    iput-object p5, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->-$f2:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->-$f3:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->-$f4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->$m$0(Landroid/os/Bundle;)V

    return-void
.end method
