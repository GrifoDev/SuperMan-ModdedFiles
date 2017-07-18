.class final Lcom/google/android/gms/internal/au$x;
.super Lcom/google/android/gms/internal/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "x"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/k",
        "<",
        "Lcom/google/android/gms/internal/az;",
        ">.b<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dJ:Lcom/google/android/gms/internal/au;

.field private final dX:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/au$x;->dJ:Lcom/google/android/gms/internal/au;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/k$b;-><init>(Lcom/google/android/gms/internal/k;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/au$x;->dX:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/au$x;->dX:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onP2PDisconnected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/au$x;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
