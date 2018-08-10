.class Landroid/view/autofill/AutofillManager$TrackedViews;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedViews"
.end annotation


# instance fields
.field private mInvisibleTrackedIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleTrackedIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/autofill/AutofillManager;


# direct methods
.method constructor <init>(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;)V
    .locals 8

    iput-object p1, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->-wrap1(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->isVisibleForAutofill()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->-wrap2(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;)[I

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/view/autofill/AutofillManager$AutofillClient;->getViewVisibility([I)[Z

    move-result-object v3

    :goto_0
    array-length v4, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v2, p2, v1

    aget-boolean v5, v3, v1

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v5, v2}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v5

    iput-object v5, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    array-length v5, p2

    new-array v3, v5, [Z

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v5, v2}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v5

    iput-object v5, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    goto :goto_2

    :cond_2
    sget-boolean v5, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "AutofillManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TrackedViews(trackedIds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mVisibleTrackedIds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mInvisibleTrackedIds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    if-nez v5, :cond_4

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->-wrap6(Landroid/view/autofill/AutofillManager;)V

    :cond_4
    return-void
.end method

.method private addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Landroid/util/ArraySet;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/util/ArraySet;-><init>(I)V

    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private isInSet(Landroid/util/ArraySet;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFromSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method


# virtual methods
.method notifyViewVisibilityChange(Landroid/view/View;Z)V
    .locals 5

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->-wrap0(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager;->-wrap1(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyViewVisibilityChange(): id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->isVisibleForAutofill()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_4

    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v2, v1}, Landroid/view/autofill/AutofillManager$TrackedViews;->isInSet(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v2, v1}, Landroid/view/autofill/AutofillManager$TrackedViews;->removeFromSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v2

    iput-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v2, v1}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v2

    iput-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    if-nez v2, :cond_3

    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No more visible ids. Invisibile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager;->-wrap6(Landroid/view/autofill/AutofillManager;)V

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v2, v1}, Landroid/view/autofill/AutofillManager$TrackedViews;->isInSet(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v2, v1}, Landroid/view/autofill/AutofillManager$TrackedViews;->removeFromSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v2

    iput-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v2, v1}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v2

    iput-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    goto :goto_0
.end method

.method onVisibleForAutofillLocked()V
    .locals 13

    iget-object v10, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v10}, Landroid/view/autofill/AutofillManager;->-wrap1(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-eqz v0, :cond_6

    iget-object v10, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    if-eqz v10, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v10, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v10, v6}, Landroid/view/autofill/AutofillManager;->-wrap3(Landroid/view/autofill/AutofillManager;Ljava/util/List;)[I

    move-result-object v10

    invoke-interface {v0, v10}, Landroid/view/autofill/AutofillManager$AutofillClient;->getViewVisibility([I)[Z

    move-result-object v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    aget-boolean v10, v3, v1

    if-eqz v10, :cond_1

    invoke-direct {p0, v9, v2}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v9

    sget-boolean v10, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "AutofillManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onVisibleForAutofill() "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " became visible"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v8, v2}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v8

    goto :goto_1

    :cond_2
    iget-object v10, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    if-eqz v10, :cond_5

    new-instance v7, Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v10, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v10, v7}, Landroid/view/autofill/AutofillManager;->-wrap3(Landroid/view/autofill/AutofillManager;Ljava/util/List;)[I

    move-result-object v10

    invoke-interface {v0, v10}, Landroid/view/autofill/AutofillManager$AutofillClient;->getViewVisibility([I)[Z

    move-result-object v3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_5

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    aget-boolean v10, v3, v1

    if-eqz v10, :cond_4

    invoke-direct {p0, v9, v2}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v9

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0, v8, v2}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v8

    sget-boolean v10, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "AutofillManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onVisibleForAutofill() "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " became invisible"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    iput-object v8, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    iput-object v9, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    :cond_6
    iget-object v10, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    if-nez v10, :cond_7

    iget-object v10, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v10}, Landroid/view/autofill/AutofillManager;->-wrap6(Landroid/view/autofill/AutofillManager;)V

    :cond_7
    return-void
.end method
