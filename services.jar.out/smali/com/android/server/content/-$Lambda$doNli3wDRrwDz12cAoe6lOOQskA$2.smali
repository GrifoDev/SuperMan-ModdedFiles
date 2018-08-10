.class final synthetic Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:I

.field private final synthetic -$f3:J

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;

.field private final synthetic -$f6:Ljava/lang/Object;

.field private final synthetic -$f7:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/os/Bundle;)V
    .locals 11

    iget-object v1, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f4:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncManager;

    iget-object v2, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f5:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AccountAndUser;

    iget v3, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f0:I

    iget v4, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f1:I

    iget-object v5, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f6:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f7:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    iget v7, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f2:I

    iget-wide v8, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f3:J

    move-object v10, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/content/SyncManager;->lambda$-com_android_server_content_SyncManager_40337(Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJLandroid/os/Bundle;)V

    return-void
.end method

.method public synthetic constructor <init>(IIIJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f0:I

    iput p2, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f1:I

    iput p3, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f2:I

    iput-wide p4, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f3:J

    iput-object p6, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f4:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f5:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f6:Ljava/lang/Object;

    iput-object p9, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->-$f7:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$2;->$m$0(Landroid/os/Bundle;)V

    return-void
.end method
