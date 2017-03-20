.class Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;
.super Ljava/lang/Object;
.source "PrioritizedList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/core/util/PrioritizedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrioritizedItem"
.end annotation


# instance fields
.field final id:I

.field final priority:I

.field final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "priority"    # I
    .param p3, "id"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->value:Ljava/lang/Object;

    .line 55
    iput p2, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->priority:I

    .line 56
    iput p3, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->id:I

    .line 57
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 60
    move-object v0, p1

    check-cast v0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;

    .line 61
    .local v0, "other":Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;
    iget v1, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->priority:I

    iget v2, v0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->priority:I

    if-eq v1, v2, :cond_0

    .line 62
    iget v1, v0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->priority:I

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->priority:I

    sub-int/2addr v1, v2

    .line 64
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->id:I

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->id:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 68
    iget v0, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->id:I

    check-cast p1, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p1, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
