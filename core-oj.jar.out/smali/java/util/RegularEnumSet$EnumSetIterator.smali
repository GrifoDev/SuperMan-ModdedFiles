.class Ljava/util/RegularEnumSet$EnumSetIterator;
.super Ljava/lang/Object;
.source "RegularEnumSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/RegularEnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnumSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field lastReturned:J

.field final synthetic this$0:Ljava/util/RegularEnumSet;

.field unseen:J


# direct methods
.method constructor <init>(Ljava/util/RegularEnumSet;)V
    .locals 2

    iput-object p1, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->this$0:Ljava/util/RegularEnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    invoke-static {p1}, Ljava/util/RegularEnumSet;->-get0(Ljava/util/RegularEnumSet;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Enum;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    iget-wide v2, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    neg-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    iget-wide v2, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    iget-object v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->this$0:Ljava/util/RegularEnumSet;

    iget-object v0, v0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    iget-wide v2, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/RegularEnumSet$EnumSetIterator;->next()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->this$0:Ljava/util/RegularEnumSet;

    invoke-static {v0}, Ljava/util/RegularEnumSet;->-get0(Ljava/util/RegularEnumSet;)J

    move-result-wide v2

    iget-wide v4, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    not-long v4, v4

    and-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Ljava/util/RegularEnumSet;->-set0(Ljava/util/RegularEnumSet;J)J

    iput-wide v6, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    return-void
.end method
