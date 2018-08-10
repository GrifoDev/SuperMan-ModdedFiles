.class public Lcom/android/systemui/util/leak/TrackedObjects;
.super Ljava/lang/Object;
.source "TrackedObjects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;
    }
.end annotation


# instance fields
.field private final mTrackedClasses:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/leak/TrackedCollections;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/leak/TrackedObjects;->mTrackedClasses:Ljava/util/WeakHashMap;

    iput-object p1, p0, Lcom/android/systemui/util/leak/TrackedObjects;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    return-void
.end method

.method public static isTrackedObject(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    instance-of v0, p0, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;

    return v0
.end method


# virtual methods
.method public declared-synchronized track(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/util/leak/TrackedObjects;->mTrackedClasses:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;-><init>(Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;)V

    iget-object v2, p0, Lcom/android/systemui/util/leak/TrackedObjects;->mTrackedClasses:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;->track(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/util/leak/TrackedObjects;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/util/leak/TrackedCollections;->track(Ljava/util/Collection;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
