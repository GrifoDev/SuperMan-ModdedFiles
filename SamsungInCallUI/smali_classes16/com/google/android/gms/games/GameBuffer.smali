.class public final Lcom/google/android/gms/games/GameBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/games/Game;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/d;)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/games/Game;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/b;

    iget-object v1, p0, Lcom/google/android/gms/games/GameBuffer;->S:Lcom/google/android/gms/common/data/d;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/b;-><init>(Lcom/google/android/gms/common/data/d;I)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/GameBuffer;->get(I)Lcom/google/android/gms/games/Game;

    move-result-object v0

    return-object v0
.end method
