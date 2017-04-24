.class public abstract Lcom/yulore/android/common/adapter/XBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "XBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/android/common/adapter/XBaseAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/yulore/android/common/adapter/XBaseAdapter;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/adapter/XBaseAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulore/android/common/adapter/XBaseAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yulore/android/common/adapter/XBaseAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method public abstract getHolder(Landroid/content/Context;)Lcom/yulore/android/common/holder/BaseHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/yulore/android/common/holder/BaseHolder",
            "<TT;>;"
        }
    .end annotation
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/adapter/XBaseAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulore/android/common/adapter/XBaseAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/yulore/android/common/holder/BaseHolder;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/android/common/holder/BaseHolder;

    :goto_0
    iget-object v1, p0, Lcom/yulore/android/common/adapter/XBaseAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yulore/android/common/holder/BaseHolder;->renderView(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/yulore/android/common/holder/BaseHolder;->getView()Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/yulore/android/common/adapter/XBaseAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/yulore/android/common/adapter/XBaseAdapter;->getHolder(Landroid/content/Context;)Lcom/yulore/android/common/holder/BaseHolder;

    move-result-object v0

    goto :goto_0
.end method
