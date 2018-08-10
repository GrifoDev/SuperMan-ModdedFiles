.class Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "WeakIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/WeakIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CmpWeakReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private final mHashCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;->mHashCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;->mHashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v3, p1, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;

    if-eqz v3, :cond_2

    check-cast p1, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;

    invoke-virtual {p1}, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;->mHashCode:I

    return v0
.end method
