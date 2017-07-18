.class final Lcom/google/android/gms/internal/au$u;
.super Lcom/google/android/gms/internal/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/k",
        "<",
        "Lcom/google/android/gms/internal/az;",
        ">.b<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dJ:Lcom/google/android/gms/internal/au;

.field private final dV:Ljava/lang/String;

.field private final p:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/au$u;->dJ:Lcom/google/android/gms/internal/au;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/k$b;-><init>(Lcom/google/android/gms/internal/k;Ljava/lang/Object;)V

    iput p3, p0, Lcom/google/android/gms/internal/au$u;->p:I

    iput-object p4, p0, Lcom/google/android/gms/internal/au$u;->dV:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/au$u;->p:I

    iget-object v1, p0, Lcom/google/android/gms/internal/au$u;->dV:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onLeftRoom(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/au$u;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
