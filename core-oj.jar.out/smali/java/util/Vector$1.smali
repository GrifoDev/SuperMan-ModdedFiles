.class Ljava/util/Vector$1;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Vector;->elements()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TE;>;"
    }
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Ljava/util/Vector;


# direct methods
.method constructor <init>(Ljava/util/Vector;)V
    .locals 1

    iput-object p1, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Vector$1;->count:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    iget v0, p0, Ljava/util/Vector$1;->count:I

    iget-object v1, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    iget v1, v1, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Ljava/util/Vector$1;->count:I

    iget-object v2, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    iget v2, v2, Ljava/util/Vector;->elementCount:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    iget v2, p0, Ljava/util/Vector$1;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/Vector$1;->count:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "Vector Enumeration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
