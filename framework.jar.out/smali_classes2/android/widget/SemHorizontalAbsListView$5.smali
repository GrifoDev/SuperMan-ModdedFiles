.class Landroid/widget/SemHorizontalAbsListView$5;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$5;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$5;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$5;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$5;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iput-boolean v2, v1, Landroid/widget/SemHorizontalAbsListView;->mCachingActive:Z

    iput-boolean v2, v0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$5;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->-wrap10(Landroid/widget/SemHorizontalAbsListView;Z)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$5;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get22(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$5;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->-wrap9(Landroid/widget/SemHorizontalAbsListView;Z)V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$5;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$5;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_1
    return-void
.end method
