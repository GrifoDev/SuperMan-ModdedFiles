.class Lcom/android/internal/app/ResolverComparator$ScoredTarget;
.super Ljava/lang/Object;
.source "ResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScoredTarget"
.end annotation


# instance fields
.field public final componentInfo:Landroid/content/pm/ComponentInfo;

.field public lastTimeUsed:J

.field public launchCount:J

.field public score:F

.field public timeSpent:J


# direct methods
.method public constructor <init>(Landroid/content/pm/ComponentInfo;)V
    .locals 0
    .param p1, "ci"    # Landroid/content/pm/ComponentInfo;

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->componentInfo:Landroid/content/pm/ComponentInfo;

    .line 252
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ScoredTarget{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->componentInfo:Landroid/content/pm/ComponentInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 259
    const-string/jumbo v1, " score: "

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 259
    iget v1, p0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 260
    const-string/jumbo v1, " lastTimeUsed: "

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 260
    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->lastTimeUsed:J

    .line 258
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 261
    const-string/jumbo v1, " timeSpent: "

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 261
    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->timeSpent:J

    .line 258
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 262
    const-string/jumbo v1, " launchCount: "

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 262
    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->launchCount:J

    .line 258
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    const-string/jumbo v1, "}"

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
