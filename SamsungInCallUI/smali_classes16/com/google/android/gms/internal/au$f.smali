.class final Lcom/google/android/gms/internal/au$f;
.super Lcom/google/android/gms/internal/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final synthetic dJ:Lcom/google/android/gms/internal/au;

.field private final dM:Lcom/google/android/gms/games/achievement/OnAchievementsLoadedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/achievement/OnAchievementsLoadedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/au$f;->dJ:Lcom/google/android/gms/internal/au;

    invoke-direct {p0}, Lcom/google/android/gms/internal/at;-><init>()V

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/achievement/OnAchievementsLoadedListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/au$f;->dM:Lcom/google/android/gms/games/achievement/OnAchievementsLoadedListener;

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/common/data/d;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/au$f;->dJ:Lcom/google/android/gms/internal/au;

    new-instance v1, Lcom/google/android/gms/internal/au$g;

    iget-object v2, p0, Lcom/google/android/gms/internal/au$f;->dJ:Lcom/google/android/gms/internal/au;

    iget-object v3, p0, Lcom/google/android/gms/internal/au$f;->dM:Lcom/google/android/gms/games/achievement/OnAchievementsLoadedListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/au$g;-><init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/achievement/OnAchievementsLoadedListener;Lcom/google/android/gms/common/data/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/internal/k$b;)V

    return-void
.end method
