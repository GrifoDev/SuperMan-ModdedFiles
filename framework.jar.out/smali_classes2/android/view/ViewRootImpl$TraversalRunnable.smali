.class final Landroid/view/ViewRootImpl$TraversalRunnable;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TraversalRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 7024
    iput-object p1, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 7027
    iget-object v0, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doTraversal()V

    .line 7026
    return-void
.end method
