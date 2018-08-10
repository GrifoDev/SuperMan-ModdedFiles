.class Landroid/support/v7/widget/AbsActionBarView$1;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/AbsActionBarView;


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView$1;->this$0:Landroid/support/v7/widget/AbsActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/widget/AbsActionBarView;->showOverflowMenu()Z

    return-void
.end method
