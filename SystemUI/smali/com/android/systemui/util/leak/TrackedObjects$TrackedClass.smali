.class Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;
.super Lcom/android/systemui/util/leak/AbstractCollection;
.source "TrackedObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/TrackedObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackedClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/systemui/util/leak/AbstractCollection",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final instances:Lcom/android/systemui/util/leak/WeakIdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/leak/WeakIdentityHashMap",
            "<TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/util/leak/AbstractCollection;-><init>()V

    new-instance v0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    invoke-direct {v0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;->instances:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;->instances:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    invoke-virtual {v0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;->instances:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    invoke-virtual {v0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->size()I

    move-result v0

    return v0
.end method

.method track(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;->instances:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
