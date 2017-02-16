.class final Ljava/util/Vector$ListItr;
.super Ljava/util/Vector$Itr;
.source "Vector.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<TE;>.Itr;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Vector;


# direct methods
.method constructor <init>(Ljava/util/Vector;I)V
    .locals 1
    .param p2, "index"    # I

    .prologue
    .line 1198
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    .local p1, "this$0":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iput-object p1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    .line 1199
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Vector$Itr;-><init>(Ljava/util/Vector;Ljava/util/Vector$Itr;)V

    .line 1200
    iput p2, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1198
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1236
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1237
    .local v0, "i":I
    iget-object v2, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    monitor-enter v2

    .line 1238
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    .line 1239
    iget-object v1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    invoke-virtual {v1, v0, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 1240
    iget-object v1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/Vector$Itr;->expectedModCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1242
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1243
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Vector$Itr;->lastRet:I

    .line 1235
    return-void

    .line 1237
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    const/4 v0, 0x0

    .line 1204
    iget v1, p0, Ljava/util/Vector$Itr;->cursor:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 1208
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    iget v0, p0, Ljava/util/Vector$Itr;->cursor:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1216
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    iget-object v2, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    monitor-enter v2

    .line 1217
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    .line 1218
    iget v1, p0, Ljava/util/Vector$Itr;->cursor:I

    add-int/lit8 v0, v1, -0x1

    .line 1219
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 1220
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1216
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1221
    .restart local v0    # "i":I
    :cond_0
    :try_start_1
    iput v0, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1222
    iget-object v1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    iput v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 1212
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    iget v0, p0, Ljava/util/Vector$Itr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1227
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1228
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1229
    :cond_0
    iget-object v1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    monitor-enter v1

    .line 1230
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    .line 1231
    iget-object v0, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    iget v2, p0, Ljava/util/Vector$Itr;->lastRet:I

    invoke-virtual {v0, v2, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1226
    return-void

    .line 1229
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
