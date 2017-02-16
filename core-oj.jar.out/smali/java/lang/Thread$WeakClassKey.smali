.class Ljava/lang/Thread$WeakClassKey;
.super Ljava/lang/ref/WeakReference;
.source "Thread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakClassKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final hash:I


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 1979
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "refQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1980
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljava/lang/Thread$WeakClassKey;->hash:I

    .line 1978
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1999
    if-ne p1, p0, :cond_0

    .line 2000
    return v1

    .line 2002
    :cond_0
    instance-of v3, p1, Ljava/lang/Thread$WeakClassKey;

    if-eqz v3, :cond_3

    .line 2003
    invoke-virtual {p0}, Ljava/lang/Thread$WeakClassKey;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2004
    .local v0, "referent":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 2005
    check-cast p1, Ljava/lang/Thread$WeakClassKey;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Thread$WeakClassKey;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_1

    .line 2004
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 2005
    goto :goto_0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    move v1, v2

    .line 2004
    goto :goto_0

    .line 2007
    .end local v0    # "referent":Ljava/lang/Object;
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1988
    iget v0, p0, Ljava/lang/Thread$WeakClassKey;->hash:I

    return v0
.end method
