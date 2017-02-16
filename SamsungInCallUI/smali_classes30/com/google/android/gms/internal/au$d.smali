.class final Lcom/google/android/gms/internal/au$d;
.super Lcom/google/android/gms/internal/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final synthetic dJ:Lcom/google/android/gms/internal/au;

.field private final dK:Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/au$d;->dJ:Lcom/google/android/gms/internal/au;

    invoke-direct {p0}, Lcom/google/android/gms/internal/at;-><init>()V

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/au$d;->dK:Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;

    return-void
.end method


# virtual methods
.method public onAchievementUpdated(ILjava/lang/String;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "achievementId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/au$d;->dJ:Lcom/google/android/gms/internal/au;

    new-instance v1, Lcom/google/android/gms/internal/au$e;

    iget-object v2, p0, Lcom/google/android/gms/internal/au$d;->dJ:Lcom/google/android/gms/internal/au;

    iget-object v3, p0, Lcom/google/android/gms/internal/au$d;->dK:Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/au$e;-><init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/internal/k$b;)V

    return-void
.end method
