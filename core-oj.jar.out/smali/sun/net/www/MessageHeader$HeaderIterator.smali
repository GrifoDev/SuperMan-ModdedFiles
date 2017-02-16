.class Lsun/net/www/MessageHeader$HeaderIterator;
.super Ljava/lang/Object;
.source "MessageHeader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/MessageHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field haveNext:Z

.field index:I

.field key:Ljava/lang/String;

.field lock:Ljava/lang/Object;

.field next:I

.field final synthetic this$0:Lsun/net/www/MessageHeader;


# direct methods
.method public constructor <init>(Lsun/net/www/MessageHeader;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "this$0"    # Lsun/net/www/MessageHeader;
    .param p2, "k"    # Ljava/lang/String;
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 185
    iput-object p1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->this$0:Lsun/net/www/MessageHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->next:I

    .line 182
    iput-boolean v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->haveNext:Z

    .line 186
    iput-object p2, p0, Lsun/net/www/MessageHeader$HeaderIterator;->key:Ljava/lang/String;

    .line 187
    iput-object p3, p0, Lsun/net/www/MessageHeader$HeaderIterator;->lock:Ljava/lang/Object;

    .line 185
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 190
    iget-object v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->haveNext:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 192
    return v4

    .line 200
    :cond_0
    :try_start_1
    iget v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    .line 194
    :cond_1
    iget v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    iget-object v2, p0, Lsun/net/www/MessageHeader$HeaderIterator;->this$0:Lsun/net/www/MessageHeader;

    invoke-static {v2}, Lsun/net/www/MessageHeader;->-get1(Lsun/net/www/MessageHeader;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 195
    iget-object v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->key:Ljava/lang/String;

    iget-object v2, p0, Lsun/net/www/MessageHeader$HeaderIterator;->this$0:Lsun/net/www/MessageHeader;

    invoke-static {v2}, Lsun/net/www/MessageHeader;->-get0(Lsun/net/www/MessageHeader;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->haveNext:Z

    .line 197
    iget v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lsun/net/www/MessageHeader$HeaderIterator;->index:I

    iput v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->next:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 198
    return v4

    .line 202
    :cond_2
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lsun/net/www/MessageHeader$HeaderIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    iget-object v1, p0, Lsun/net/www/MessageHeader$HeaderIterator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->haveNext:Z

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->haveNext:Z

    .line 209
    iget-object v0, p0, Lsun/net/www/MessageHeader$HeaderIterator;->this$0:Lsun/net/www/MessageHeader;

    invoke-static {v0}, Lsun/net/www/MessageHeader;->-get2(Lsun/net/www/MessageHeader;)[Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lsun/net/www/MessageHeader$HeaderIterator;->next:I

    aget-object v0, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 211
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/net/www/MessageHeader$HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lsun/net/www/MessageHeader$HeaderIterator;->next()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 214
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v2, "No more elements"

    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "remove not allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
