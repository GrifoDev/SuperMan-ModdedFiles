.class Landroid/widget/AbsListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field private final mListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/AbsListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "sv"    # Landroid/widget/AbsListView;

    .prologue
    .line 10447
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 10448
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/AbsListView$HoverScrollHandler;->mListView:Ljava/lang/ref/WeakReference;

    .line 10447
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 10453
    iget-object v1, p0, Landroid/widget/AbsListView$HoverScrollHandler;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    .line 10454
    .local v0, "sv":Landroid/widget/AbsListView;
    if-eqz v0, :cond_0

    .line 10455
    invoke-static {v0, p1}, Landroid/widget/AbsListView;->-wrap9(Landroid/widget/AbsListView;Landroid/os/Message;)V

    .line 10452
    :cond_0
    return-void
.end method
