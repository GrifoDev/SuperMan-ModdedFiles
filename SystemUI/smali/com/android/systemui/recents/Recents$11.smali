.class Lcom/android/systemui/recents/Recents$11;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/Recents;->registerWithSystemUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;

.field final synthetic val$processUser:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/Recents$11;->this$0:Lcom/android/systemui/recents/Recents;

    iput p2, p0, Lcom/android/systemui/recents/Recents$11;->val$processUser:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents$11;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v1}, Lcom/android/systemui/recents/Recents;->-get3(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/RecentsImplProxy;

    iget-object v3, p0, Lcom/android/systemui/recents/Recents$11;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v3}, Lcom/android/systemui/recents/Recents;->-get1(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/RecentsImplProxy;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iget v3, p0, Lcom/android/systemui/recents/Recents$11;->val$processUser:I

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->registerNonSystemUserCallbacks(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Recents"

    const-string/jumbo v2, "Failed to register"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
