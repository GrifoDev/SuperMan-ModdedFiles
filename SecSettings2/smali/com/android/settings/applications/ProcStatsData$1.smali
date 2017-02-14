.class final Lcom/android/settings/applications/ProcStatsData$1;
.super Ljava/lang/Object;
.source "ProcStatsData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcStatsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/applications/ProcStatsEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/ProcStatsEntry;Lcom/android/settings/applications/ProcStatsEntry;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    return v5

    :cond_0
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    return v4

    :cond_1
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    return v5

    :cond_2
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    return v4

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settings/applications/ProcStatsEntry;

    check-cast p2, Lcom/android/settings/applications/ProcStatsEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ProcStatsData$1;->compare(Lcom/android/settings/applications/ProcStatsEntry;Lcom/android/settings/applications/ProcStatsEntry;)I

    move-result v0

    return v0
.end method
