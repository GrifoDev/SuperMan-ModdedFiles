.class public interface abstract Lcom/android/incallui/remotecall/data/IRemoteCallManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getRemoteCallAdapterList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract onNotifyRemoteCallStateChanged(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/remotecall/data/IRemoteCallAdapter;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeListener(Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;)V
.end method

.method public abstract requestCallPulling(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
.end method
