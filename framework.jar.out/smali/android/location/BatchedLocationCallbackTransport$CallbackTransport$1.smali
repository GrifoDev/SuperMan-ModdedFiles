.class Landroid/location/BatchedLocationCallbackTransport$CallbackTransport$1;
.super Ljava/lang/Object;
.source "BatchedLocationCallbackTransport.java"

# interfaces
.implements Landroid/location/LocalListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;->onLocationBatch(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/location/LocalListenerHelper$ListenerOperation",
        "<",
        "Landroid/location/BatchedLocationCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;

.field final synthetic val$locations:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport$1;->this$1:Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;

    iput-object p2, p0, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport$1;->val$locations:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/BatchedLocationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport$1;->val$locations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/location/BatchedLocationCallback;->onLocationBatch(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Landroid/location/BatchedLocationCallback;

    invoke-virtual {p0, p1}, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport$1;->execute(Landroid/location/BatchedLocationCallback;)V

    return-void
.end method
