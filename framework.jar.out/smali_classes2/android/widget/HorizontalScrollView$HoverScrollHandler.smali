.class Landroid/widget/HorizontalScrollView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "HorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field private final mScrollView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/HorizontalScrollView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/HorizontalScrollView;)V
    .locals 1
    .param p1, "sv"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 2433
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2434
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->mScrollView:Ljava/lang/ref/WeakReference;

    .line 2433
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2439
    iget-object v1, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->mScrollView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 2440
    .local v0, "sv":Landroid/widget/HorizontalScrollView;
    if-eqz v0, :cond_0

    .line 2441
    invoke-static {v0, p1}, Landroid/widget/HorizontalScrollView;->-wrap0(Landroid/widget/HorizontalScrollView;Landroid/os/Message;)V

    .line 2438
    :cond_0
    return-void
.end method
