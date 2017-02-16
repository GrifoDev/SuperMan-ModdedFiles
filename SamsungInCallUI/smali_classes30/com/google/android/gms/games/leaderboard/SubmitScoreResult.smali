.class public final Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;
    }
.end annotation


# static fields
.field private static final eB:[Ljava/lang/String;


# instance fields
.field private dx:Ljava/lang/String;

.field private eC:Ljava/lang/String;

.field private eD:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;",
            ">;"
        }
    .end annotation
.end field

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "leaderboardId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "playerId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timeSpan"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hasResult"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "rawScore"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "formattedScore"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "newBest"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->eB:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "leaderboardId"    # Ljava/lang/String;
    .param p3, "playerId"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "leaderboardId"    # Ljava/lang/String;
    .param p3, "playerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "results":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->p:I

    iput-object p2, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->eC:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->dx:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->eD:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/d;)V
    .locals 8
    .param p1, "dataHolder"    # Lcom/google/android/gms/common/data/d;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/d;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->p:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->eD:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/d;->getCount()I

    move-result v2

    const/4 v0, 0x3

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/s;->c(Z)V

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/data/d;->e(I)I

    move-result v0

    if-nez v1, :cond_0

    const-string v3, "leaderboardId"

    invoke-virtual {p1, v3, v1, v0}, Lcom/google/android/gms/common/data/d;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->eC:Ljava/lang/String;

    const-string v3, "playerId"

    invoke-virtual {p1, v3, v1, v0}, Lcom/google/android/gms/common/data/d;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->dx:Ljava/lang/String;

    :cond_0
    const-string v3, "hasResult"

    invoke-virtual {p1, v3, v1, v0}, Lcom/google/android/gms/common/data/d;->d(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;

    const-string v4, "rawScore"

    invoke-virtual {p1, v4, v1, v0}, Lcom/google/android/gms/common/data/d;->a(Ljava/lang/String;II)J

    move-result-wide v4

    const-string v6, "formattedScore"

    invoke-virtual {p1, v6, v1, v0}, Lcom/google/android/gms/common/data/d;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "newBest"

    invoke-virtual {p1, v7, v1, v0}, Lcom/google/android/gms/common/data/d;->d(Ljava/lang/String;II)Z

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;-><init>(JLjava/lang/String;Z)V

    const-string v4, "timeSpan"

    invoke-virtual {p1, v4, v1, v0}, Lcom/google/android/gms/common/data/d;->b(Ljava/lang/String;II)I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->a(Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->eD:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getLeaderboardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->eC:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->dx:Ljava/lang/String;

    return-object v0
.end method

.method public getScoreResult(I)Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;
    .locals 2
    .param p1, "timeSpan"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->eD:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->p:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/google/android/gms/internal/r;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/r$a;

    move-result-object v0

    const-string v1, "PlayerId"

    iget-object v2, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->dx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/r$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/r$a;

    move-result-object v0

    const-string v1, "StatusCode"

    iget v2, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/r$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/r$a;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->eD:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;

    const-string v3, "TimesSpan"

    invoke-static {v1}, Lcom/google/android/gms/internal/bd;->G(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/r$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/r$a;

    const-string v3, "Result"

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/r$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/r$a;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/r$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
