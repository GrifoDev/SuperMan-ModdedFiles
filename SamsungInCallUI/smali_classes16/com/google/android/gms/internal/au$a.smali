.class abstract Lcom/google/android/gms/internal/au$a;
.super Lcom/google/android/gms/internal/au$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field private final dI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic dJ:Lcom/google/android/gms/internal/au;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/d;[Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/au$a;->dJ:Lcom/google/android/gms/internal/au;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/au$c;-><init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/d;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/au$a;->dI:Ljava/util/ArrayList;

    const/4 v0, 0x0

    array-length v1, p4

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/au$a;->dI:Ljava/util/ArrayList;

    aget-object v3, p4, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/au$a;->dI:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/au$a;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
