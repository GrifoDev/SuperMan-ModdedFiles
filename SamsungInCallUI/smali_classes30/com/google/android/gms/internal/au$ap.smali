.class final Lcom/google/android/gms/internal/au$ap;
.super Lcom/google/android/gms/internal/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ap"
.end annotation


# instance fields
.field final synthetic dJ:Lcom/google/android/gms/internal/au;

.field private final eg:Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/au$ap;->dJ:Lcom/google/android/gms/internal/au;

    invoke-direct {p0}, Lcom/google/android/gms/internal/at;-><init>()V

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/au$ap;->eg:Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;

    return-void
.end method


# virtual methods
.method public d(Lcom/google/android/gms/common/data/d;)V
    .locals 5

    new-instance v0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;-><init>(Lcom/google/android/gms/common/data/d;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/au$ap;->dJ:Lcom/google/android/gms/internal/au;

    new-instance v2, Lcom/google/android/gms/internal/au$aq;

    iget-object v3, p0, Lcom/google/android/gms/internal/au$ap;->dJ:Lcom/google/android/gms/internal/au;

    iget-object v4, p0, Lcom/google/android/gms/internal/au$ap;->eg:Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/au$aq;-><init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/internal/k$b;)V

    return-void
.end method
