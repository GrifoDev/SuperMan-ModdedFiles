.class Ljava/util/Vector$Itr;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field cursor:I

.field expectedModCount:I

.field lastRet:I

.field protected limit:I

.field final synthetic this$0:Ljava/util/Vector;


# direct methods
.method private constructor <init>(Ljava/util/Vector;)V
    .locals 1

    .prologue
    .line 1124
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iput-object p1, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v0, v0, Ljava/util/Vector;->elementCount:I

    iput v0, p0, Ljava/util/Vector$Itr;->limit:I

    .line 1133
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    .line 1134
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v0, v0, Ljava/util/Vector;->modCount:I

    iput v0, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    .line 1124
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Vector;Ljava/util/Vector$Itr;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/Vector;

    .prologue
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    invoke-direct {p0, p1}, Ljava/util/Vector$Itr;-><init>(Ljava/util/Vector;)V

    return-void
.end method


# virtual methods
.method final checkForComodification()V
    .locals 2

    .prologue
    .line 1189
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v0, v0, Ljava/util/Vector;->modCount:I

    iget v1, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 1190
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1188
    :cond_0
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1166
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    iget-object v5, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    monitor-enter v5

    .line 1168
    :try_start_0
    iget v3, p0, Ljava/util/Vector$Itr;->limit:I

    .line 1169
    .local v3, "size":I
    iget v1, p0, Ljava/util/Vector$Itr;->cursor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    .local v1, "i":I
    if-lt v1, v3, :cond_0

    monitor-exit v5

    .line 1171
    return-void

    .line 1174
    :cond_0
    :try_start_1
    iget-object v4, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget-object v0, v4, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 1175
    .local v0, "elementData":[Ljava/lang/Object;, "[TE;"
    array-length v4, v0

    if-lt v1, v4, :cond_1

    .line 1176
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1167
    .end local v0    # "elementData":[Ljava/lang/Object;, "[TE;"
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1178
    .restart local v0    # "elementData":[Ljava/lang/Object;, "[TE;"
    .local v2, "i":I
    .restart local v3    # "size":I
    :goto_0
    if-eq v2, v3, :cond_2

    :try_start_2
    iget-object v4, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v4, v4, Ljava/util/Vector;->modCount:I

    iget v6, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    if-ne v4, v6, :cond_2

    .line 1179
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v4, v0, v2

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1182
    :cond_2
    iput v2, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1183
    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Ljava/util/Vector$Itr;->lastRet:I

    .line 1184
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 1165
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 1137
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iget v0, p0, Ljava/util/Vector$Itr;->cursor:I

    iget v1, p0, Ljava/util/Vector$Itr;->limit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1141
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iget-object v2, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    monitor-enter v2

    .line 1142
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    .line 1143
    iget v0, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1144
    .local v0, "i":I
    iget v1, p0, Ljava/util/Vector$Itr;->limit:I

    if-lt v0, v1, :cond_0

    .line 1145
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1146
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    :try_start_1
    iput v1, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1147
    iget-object v1, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iput v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1
.end method

.method public remove()V
    .locals 4

    .prologue
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    const/4 v3, -0x1

    .line 1152
    iget v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    if-ne v0, v3, :cond_0

    .line 1153
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1154
    :cond_0
    iget-object v1, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    monitor-enter v1

    .line 1155
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    .line 1156
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v2, p0, Ljava/util/Vector$Itr;->lastRet:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 1157
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v0, v0, Ljava/util/Vector;->modCount:I

    iput v0, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    .line 1158
    iget v0, p0, Ljava/util/Vector$Itr;->limit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/Vector$Itr;->limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1160
    iget v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    iput v0, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1161
    iput v3, p0, Ljava/util/Vector$Itr;->lastRet:I

    .line 1151
    return-void

    .line 1154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
