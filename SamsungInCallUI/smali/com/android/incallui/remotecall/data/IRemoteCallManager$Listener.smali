.class public interface abstract Lcom/android/incallui/remotecall/data/IRemoteCallManager$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/remotecall/data/IRemoteCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
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
