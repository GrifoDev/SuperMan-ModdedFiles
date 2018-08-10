.class Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$1;
.super Ljava/lang/Object;
.source "AODManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->onDozeAcquired()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$1;->this$1:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$1;->this$1:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    invoke-static {v1}, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->-get0(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/aod/AODManager$AODDozeCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/aod/AODManager$AODDozeCallback;->onDozeAcquired()V

    :cond_0
    return-void
.end method
