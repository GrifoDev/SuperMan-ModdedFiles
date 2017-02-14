.class final Lcom/google/android/gms/internal/au$e;
.super Lcom/google/android/gms/internal/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/k",
        "<",
        "Lcom/google/android/gms/internal/az;",
        ">.b<",
        "Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dJ:Lcom/google/android/gms/internal/au;

.field private final dL:Ljava/lang/String;

.field private final p:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/au$e;->dJ:Lcom/google/android/gms/internal/au;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/k$b;-><init>(Lcom/google/android/gms/internal/k;Ljava/lang/Object;)V

    iput p3, p0, Lcom/google/android/gms/internal/au$e;->p:I

    iput-object p4, p0, Lcom/google/android/gms/internal/au$e;->dL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/au$e;->p:I

    iget-object v1, p0, Lcom/google/android/gms/internal/au$e;->dL:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;->onAchievementUpdated(ILjava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/au$e;->a(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
