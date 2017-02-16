.class Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "SemHorizontalAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
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
            "Landroid/widget/SemHorizontalAbsListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 1
    .param p1, "sv"    # Landroid/widget/SemHorizontalAbsListView;

    .prologue
    .line 10500
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 10501
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->mListView:Ljava/lang/ref/WeakReference;

    .line 10500
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 10506
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView;

    .line 10507
    .local v0, "sv":Landroid/widget/SemHorizontalAbsListView;
    if-eqz v0, :cond_0

    .line 10508
    invoke-static {v0, p1}, Landroid/widget/SemHorizontalAbsListView;->-wrap6(Landroid/widget/SemHorizontalAbsListView;Landroid/os/Message;)V

    .line 10505
    :cond_0
    return-void
.end method
