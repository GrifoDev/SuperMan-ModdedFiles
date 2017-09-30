.class Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;
.super Ljava/lang/Object;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->value:Ljava/lang/Object;

    iput p2, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->priority:I

    iput p3, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->id:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;

    iget v0, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->priority:I

    iget v1, p1, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->priority:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->priority:I

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->priority:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->id:I

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->id:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->id:I

    check-cast p1, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;

    iget v1, p1, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
