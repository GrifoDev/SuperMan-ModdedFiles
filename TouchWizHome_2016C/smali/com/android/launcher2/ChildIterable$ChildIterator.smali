.class Lcom/android/launcher2/ChildIterable$ChildIterator;
.super Ljava/lang/Object;
.source "ChildIterable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ChildIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mIndex:I

.field final synthetic this$0:Lcom/android/launcher2/ChildIterable;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/ChildIterable;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/ChildIterable$ChildIterator;->this$0:Lcom/android/launcher2/ChildIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/ChildIterable$ChildIterator;->mIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/ChildIterable;Lcom/android/launcher2/ChildIterable$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/ChildIterable$ChildIterator;-><init>(Lcom/android/launcher2/ChildIterable;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher2/ChildIterable$ChildIterator;->mIndex:I

    iget-object v1, p0, Lcom/android/launcher2/ChildIterable$ChildIterator;->this$0:Lcom/android/launcher2/ChildIterable;

    invoke-static {v1}, Lcom/android/launcher2/ChildIterable;->access$100(Lcom/android/launcher2/ChildIterable;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

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
            "()TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher2/ChildIterable$ChildIterator;->this$0:Lcom/android/launcher2/ChildIterable;

    invoke-static {v1}, Lcom/android/launcher2/ChildIterable;->access$100(Lcom/android/launcher2/ChildIterable;)Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/ChildIterable$ChildIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ChildIterable$ChildIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher2/ChildIterable$ChildIterator;->mIndex:I

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
