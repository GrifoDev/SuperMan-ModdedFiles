.class public Landroid/content/UndoManager;
.super Ljava/lang/Object;
.source "UndoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/UndoManager$UndoState;
    }
.end annotation


# static fields
.field public static final MERGE_MODE_ANY:I = 0x2

.field public static final MERGE_MODE_NONE:I = 0x0

.field public static final MERGE_MODE_UNIQUE:I = 0x1


# instance fields
.field private mCommitId:I

.field private mHistorySize:I

.field private mInUndo:Z

.field private mMerged:Z

.field private mNextSavedIdx:I

.field private final mOwners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/UndoOwner;",
            ">;"
        }
    .end annotation
.end field

.field private final mRedos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;"
        }
    .end annotation
.end field

.field private mStateOwners:[Landroid/content/UndoOwner;

.field private mStateSeq:I

.field private final mUndos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateCount:I

.field private mWorking:Landroid/content/UndoManager$UndoState;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    const/16 v0, 0x14

    iput v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    iput v1, p0, Landroid/content/UndoManager;->mCommitId:I

    return-void
.end method

.method private createWorkingState()V
    .locals 3

    new-instance v0, Landroid/content/UndoManager$UndoState;

    iget v1, p0, Landroid/content/UndoManager;->mCommitId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/content/UndoManager;->mCommitId:I

    invoke-direct {v0, p0, v1}, Landroid/content/UndoManager$UndoState;-><init>(Landroid/content/UndoManager;I)V

    iput-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    iget v0, p0, Landroid/content/UndoManager;->mCommitId:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/content/UndoManager;->mCommitId:I

    :cond_0
    return-void
.end method

.method private pushWorkingState()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x1

    invoke-virtual {p0, v3, v1}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->commit()V

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->makeExecuted()V

    :cond_0
    :goto_0
    iput-object v3, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-ltz v1, :cond_1

    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-le v0, v1, :cond_1

    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v3, v1}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->destroy()V

    goto :goto_0
.end method


# virtual methods
.method public addOperation(Landroid/content/UndoOperation;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UndoOperation",
            "<*>;I)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Must be called during an update"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v0

    iget-object v2, v0, Landroid/content/UndoOwner;->mManager:Landroid/content/UndoManager;

    if-eq v2, p0, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Given operation\'s owner is not in this undo manager."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2, p1}, Landroid/content/UndoManager$UndoState;->addOperation(Landroid/content/UndoOperation;)V

    return-void

    :cond_3
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v3}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_4

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->hasMultipleOwners()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->canMerge()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    iput-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    goto :goto_0
.end method

.method public beginUpdate(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/content/UndoManager;->mInUndo:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t being update while performing undo/redo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-gtz v0, :cond_1

    invoke-direct {p0}, Landroid/content/UndoManager;->createWorkingState()V

    iput-boolean v1, p0, Landroid/content/UndoManager;->mMerged:Z

    iput v1, p0, Landroid/content/UndoManager;->mUpdateCount:I

    :cond_1
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->updateLabel(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    return-void
.end method

.method public commitState(Landroid/content/UndoOwner;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2, p1}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2, v4}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result v0

    invoke-direct {p0}, Landroid/content/UndoManager;->pushWorkingState()V

    invoke-direct {p0}, Landroid/content/UndoManager;->createWorkingState()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    return v0

    :cond_1
    invoke-virtual {p0, v3}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v1, v4}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result v2

    return v2

    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method public countRedos([Landroid/content/UndoOwner;)I
    .locals 3

    if-nez p1, :cond_0

    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, v1}, Landroid/content/UndoManager;->findNextState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public countUndos([Landroid/content/UndoOwner;)I
    .locals 3

    if-nez p1, :cond_0

    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, v1}, Landroid/content/UndoManager;->findNextState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public endUpdate()V
    .locals 2

    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called during an update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/content/UndoManager;->pushWorkingState()V

    :cond_1
    return-void
.end method

.method findNextState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;[",
            "Landroid/content/UndoOwner;",
            "I)I"
        }
    .end annotation

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gez p3, :cond_0

    const/4 p3, 0x0

    :cond_0
    if-lt p3, v0, :cond_1

    return v3

    :cond_1
    if-nez p2, :cond_3

    return p3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    :cond_3
    if-ge p3, v0, :cond_4

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    invoke-virtual {p0, v1, p2}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v2

    if-eqz v2, :cond_2

    return p3

    :cond_4
    return v3
.end method

.method findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;[",
            "Landroid/content/UndoOwner;",
            "I)I"
        }
    .end annotation

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p3, v3, :cond_0

    add-int/lit8 p3, v0, -0x1

    :cond_0
    if-lt p3, v0, :cond_1

    return v3

    :cond_1
    if-nez p2, :cond_3

    return p3

    :cond_2
    add-int/lit8 p3, p3, -0x1

    :cond_3
    if-ltz p3, :cond_4

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    invoke-virtual {p0, v1, p2}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v2

    if-eqz v2, :cond_2

    return p3

    :cond_4
    return v3
.end method

.method public forgetRedos([Landroid/content/UndoOwner;I)I
    .locals 4

    if-gez p2, :cond_0

    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    if-ge v1, p2, :cond_2

    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoManager$UndoState;

    if-lez p2, :cond_1

    invoke-virtual {p0, v2, p1}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public forgetUndos([Landroid/content/UndoOwner;I)I
    .locals 4

    if-gez p2, :cond_0

    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    if-ge v1, p2, :cond_2

    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoManager$UndoState;

    if-lez p2, :cond_1

    invoke-virtual {p0, v2, p1}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getHistorySize()I
    .locals 1

    iget v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    return v0
.end method

.method public getLastOperation(I)Landroid/content/UndoOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/UndoOperation",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v0

    return-object v0
.end method

.method public getLastOperation(Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UndoOwner;",
            "I)",
            "Landroid/content/UndoOperation",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v0

    return-object v0
.end method

.method public getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/UndoOperation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/UndoOwner;",
            "I)TT;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Must be called during an update"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p3, :cond_1

    iget-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2, p1, p2}, Landroid/content/UndoManager$UndoState;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;)Landroid/content/UndoOperation;

    move-result-object v2

    return-object v2

    :cond_2
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v3}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-eq p3, v2, :cond_3

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->hasMultipleOwners()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->canMerge()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, p2}, Landroid/content/UndoManager$UndoState;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;)Landroid/content/UndoOperation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/UndoOperation;->allowMerge()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    iput-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    return-object v0
.end method

.method public getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;
    .locals 4

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "tag can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "data can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UndoOwner;

    if-eqz v0, :cond_4

    iget-object v1, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    if-eq v1, p2, :cond_3

    iget-object v1, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Owner "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already exists with data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but giving different data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iput-object p2, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    :cond_3
    return-object v0

    :cond_4
    new-instance v0, Landroid/content/UndoOwner;

    invoke-direct {v0, p1, p0}, Landroid/content/UndoOwner;-><init>(Ljava/lang/String;Landroid/content/UndoManager;)V

    iput-object p2, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    iget-object v1, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getRedoLabel([Landroid/content/UndoOwner;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/UndoManager;->getTopRedo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method getTopRedo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, p1, v3}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    :cond_1
    return-object v1
.end method

.method getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, p1, v3}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    :cond_1
    return-object v1
.end method

.method public getUndoLabel([Landroid/content/UndoOwner;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getUpdateNestingLevel()I
    .locals 1

    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    return v0
.end method

.method public hasOperation(Landroid/content/UndoOwner;)Z
    .locals 2

    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called during an update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v0

    return v0
.end method

.method public isInUndo()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/UndoManager;->mInUndo:Z

    return v0
.end method

.method public isInUpdate()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z
    .locals 3

    const/4 v2, 0x1

    if-nez p2, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Landroid/content/UndoManager$UndoState;->matchOwner(Landroid/content/UndoOwner;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public redo([Landroid/content/UndoOwner;I)I
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Can\'t be called during an update"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/content/UndoManager;->mInUndo:Z

    :goto_0
    if-lez p2, :cond_1

    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, p1, v0}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->redo()V

    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Landroid/content/UndoManager;->mInUndo:Z

    return v1
.end method

.method removeOwner(Landroid/content/UndoOwner;)V
    .locals 0

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget v2, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Can\'t save state while updating"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0, v5, v4}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    invoke-virtual {p0, v5, v4}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/UndoManager;->mHistorySize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v2, v2, [Landroid/content/UndoOwner;

    iput-object v2, p0, Landroid/content/UndoManager;->mStateOwners:[Landroid/content/UndoOwner;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/content/UndoManager$UndoState;

    invoke-direct {v1, p0, p1, p2}, Landroid/content/UndoManager$UndoState;-><init>(Landroid/content/UndoManager;Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method restoreOwner(Landroid/os/Parcel;)Landroid/content/UndoOwner;
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v4, p0, Landroid/content/UndoManager;->mStateOwners:[Landroid/content/UndoOwner;

    aget-object v2, v4, v0

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Landroid/content/UndoOwner;

    invoke-direct {v2, v3, p0}, Landroid/content/UndoOwner;-><init>(Ljava/lang/String;Landroid/content/UndoManager;)V

    iput v1, v2, Landroid/content/UndoOwner;->mOpCount:I

    iget-object v4, p0, Landroid/content/UndoManager;->mStateOwners:[Landroid/content/UndoOwner;

    aput-object v2, v4, v0

    iget-object v4, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2
.end method

.method public saveInstanceState(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    iget v1, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t save state while updating"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Landroid/content/UndoManager;->mStateSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/content/UndoManager;->mStateSeq:I

    iget v1, p0, Landroid/content/UndoManager;->mStateSeq:I

    if-gtz v1, :cond_1

    iput v2, p0, Landroid/content/UndoManager;->mStateSeq:I

    :cond_1
    iput v2, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1, p1}, Landroid/content/UndoManager$UndoState;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-lez v0, :cond_3

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1, p1}, Landroid/content/UndoManager$UndoState;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method saveOwner(Landroid/content/UndoOwner;Landroid/os/Parcel;)V
    .locals 2

    iget v0, p1, Landroid/content/UndoOwner;->mStateSeq:I

    iget v1, p0, Landroid/content/UndoManager;->mStateSeq:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/UndoOwner;->mSavedIdx:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/content/UndoManager;->mStateSeq:I

    iput v0, p1, Landroid/content/UndoOwner;->mStateSeq:I

    iget v0, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    iput v0, p1, Landroid/content/UndoOwner;->mSavedIdx:I

    iget v0, p1, Landroid/content/UndoOwner;->mSavedIdx:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p1, Landroid/content/UndoOwner;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p1, Landroid/content/UndoOwner;->mOpCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    goto :goto_0
.end method

.method public setHistorySize(I)V
    .locals 3

    const/4 v2, 0x0

    iput p1, p0, Landroid/content/UndoManager;->mHistorySize:I

    iget v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-ltz v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v0

    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v0

    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    :cond_0
    return-void
.end method

.method public setUndoLabel(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called during an update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->setLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public suggestUndoLabel(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called during an update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->updateLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public uncommitState(ILandroid/content/UndoOwner;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result v1

    if-ne v1, p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1, p2}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1, v3}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    move-result v1

    return v1

    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result v1

    if-ne v1, p1, :cond_3

    invoke-virtual {v0, v3}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    move-result v1

    return v1

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public undo([Landroid/content/UndoOwner;I)I
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Can\'t be called during an update"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/content/UndoManager;->mInUndo:Z

    invoke-virtual {p0, v6}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/UndoManager$UndoState;->makeExecuted()V

    :cond_1
    :goto_0
    if-lez p2, :cond_2

    iget-object v4, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, p1, v0}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v4, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->undo()V

    iget-object v4, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v5, p0, Landroid/content/UndoManager;->mInUndo:Z

    return v1
.end method
