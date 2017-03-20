.class public abstract Lcom/yulore/android/common/holder/BaseHolder;
.super Ljava/lang/Object;
.source "BaseHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    .local p0, "this":Lcom/yulore/android/common/holder/BaseHolder;, "Lcom/yulore/android/common/holder/BaseHolder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/yulore/android/common/holder/BaseHolder;->initView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/android/common/holder/BaseHolder;->mRootView:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/yulore/android/common/holder/BaseHolder;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/yulore/android/common/holder/BaseHolder;, "Lcom/yulore/android/common/holder/BaseHolder<TT;>;"
    iget-object v0, p0, Lcom/yulore/android/common/holder/BaseHolder;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract initView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract renderView(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method
