.class Lcom/android/server/utils/sysfwutil/DexObserver$2;
.super Ljava/lang/Thread;
.source "DexObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/utils/sysfwutil/DexObserver;->onUpdateDexMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/sysfwutil/DexObserver;


# direct methods
.method constructor <init>(Lcom/android/server/utils/sysfwutil/DexObserver;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/sysfwutil/DexObserver$2;->this$0:Lcom/android/server/utils/sysfwutil/DexObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/utils/sysfwutil/DexObserver$2;->this$0:Lcom/android/server/utils/sysfwutil/DexObserver;

    invoke-static {v2}, Lcom/android/server/utils/sysfwutil/DexObserver;->-get0(Lcom/android/server/utils/sysfwutil/DexObserver;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/sysfwutil/DexConnectionListener;

    invoke-interface {v0}, Lcom/android/server/utils/sysfwutil/DexConnectionListener;->onConnect()V

    goto :goto_0

    :cond_0
    return-void
.end method
