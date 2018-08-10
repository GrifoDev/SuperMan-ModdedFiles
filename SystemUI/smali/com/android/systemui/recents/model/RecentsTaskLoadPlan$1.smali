.class final Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$1;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
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
        "Lcom/android/systemui/recents/model/Task;",
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
.method public compare(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)I
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-wide v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveElapsedTime:J

    iget-object v4, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-wide v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveElapsedTime:J

    sub-long v0, v2, v4

    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-wide v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-object v4, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-wide v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/recents/model/Task;

    check-cast p2, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$1;->compare(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    return v0
.end method
