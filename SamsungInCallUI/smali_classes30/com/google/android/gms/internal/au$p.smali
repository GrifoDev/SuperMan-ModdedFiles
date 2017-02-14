.class final Lcom/google/android/gms/internal/au$p;
.super Lcom/google/android/gms/internal/au$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "p"
.end annotation


# instance fields
.field final synthetic dJ:Lcom/google/android/gms/internal/au;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/au$p;->dJ:Lcom/google/android/gms/internal/au;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/au$b;-><init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)V
    .locals 0

    invoke-interface {p1, p3, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onJoinedRoom(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method
