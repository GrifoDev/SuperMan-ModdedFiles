.class Lcom/android/server/location/GnssNavigationMessageProvider$1;
.super Ljava/lang/Object;
.source "GnssNavigationMessageProvider.java"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GnssNavigationMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
        "<",
        "Landroid/location/IGnssNavigationMessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssNavigationMessageProvider;

.field final synthetic val$event:Landroid/location/GnssNavigationMessage;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssNavigationMessageProvider;Landroid/location/GnssNavigationMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GnssNavigationMessageProvider$1;->this$0:Lcom/android/server/location/GnssNavigationMessageProvider;

    iput-object p2, p0, Lcom/android/server/location/GnssNavigationMessageProvider$1;->val$event:Landroid/location/GnssNavigationMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGnssNavigationMessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/GnssNavigationMessageProvider$1;->val$event:Landroid/location/GnssNavigationMessage;

    invoke-interface {p1, v0}, Landroid/location/IGnssNavigationMessageListener;->onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Landroid/location/IGnssNavigationMessageListener;

    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssNavigationMessageProvider$1;->execute(Landroid/location/IGnssNavigationMessageListener;)V

    return-void
.end method
