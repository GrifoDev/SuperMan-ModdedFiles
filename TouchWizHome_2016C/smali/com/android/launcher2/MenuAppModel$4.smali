.class final Lcom/android/launcher2/MenuAppModel$4;
.super Ljava/lang/Object;
.source "MenuAppModel.java"

# interfaces
.implements Lcom/android/launcher2/MenuAppModel$Normalizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher2/MenuAppModel$Normalizer",
        "<",
        "Lcom/android/launcher2/AppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    iget v2, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    if-eq v2, v1, :cond_2

    iget v2, p2, Lcom/android/launcher2/AppItem;->mScreen:I

    if-eq v2, v1, :cond_2

    iget v1, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    iget v2, p2, Lcom/android/launcher2/AppItem;->mScreen:I

    invoke-static {v1, v2}, Lcom/android/launcher2/MenuAppModel;->access$000(II)I

    move-result v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget v1, p1, Lcom/android/launcher2/AppItem;->mCell:I

    iget v2, p2, Lcom/android/launcher2/AppItem;->mCell:I

    invoke-static {v1, v2}, Lcom/android/launcher2/MenuAppModel;->access$000(II)I

    move-result v0

    :cond_1
    return v0

    :cond_2
    iget v2, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    iget v3, p2, Lcom/android/launcher2/AppItem;->mScreen:I

    if-eq v2, v3, :cond_0

    iget v2, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    if-ne v2, v1, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/launcher2/AppItem;

    check-cast p2, Lcom/android/launcher2/AppItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppModel$4;->compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I

    move-result v0

    return v0
.end method

.method public normalize(Ljava/util/List;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;IZ)V"
        }
    .end annotation

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget v1, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    if-ne v1, v3, :cond_1

    iget v5, v0, Lcom/android/launcher2/AppItem;->mCell:I

    if-eq v5, v2, :cond_2

    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    iput v3, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v2, v0, Lcom/android/launcher2/AppItem;->mCell:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-ne v2, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    return-void
.end method
