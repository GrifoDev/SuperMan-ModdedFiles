.class Ljava/util/Collections$SynchronizedRandomAccessList;
.super Ljava/util/Collections$SynchronizedList;
.source "Collections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedRandomAccessList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x153e0c6c865668d2L


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 2221
    .local p0, "this":Ljava/util/Collections$SynchronizedRandomAccessList;, "Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    .line 2220
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2225
    .local p0, "this":Ljava/util/Collections$SynchronizedRandomAccessList;, "Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 2224
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2244
    .local p0, "this":Ljava/util/Collections$SynchronizedRandomAccessList;, "Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    iget-object v1, p0, Ljava/util/Collections$SynchronizedRandomAccessList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Ljava/util/List;
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2229
    .local p0, "this":Ljava/util/Collections$SynchronizedRandomAccessList;, "Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedRandomAccessList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2230
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    .line 2231
    iget-object v2, p0, Ljava/util/Collections$SynchronizedRandomAccessList;->list:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedRandomAccessList;->mutex:Ljava/lang/Object;

    .line 2230
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 2229
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
