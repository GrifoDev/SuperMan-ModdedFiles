.class Landroid/support/v17/leanback/app/VerticalGridSupportFragment$4;
.super Ljava/lang/Object;
.source "VerticalGridSupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/VerticalGridSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->setEntranceTransitionState(Z)V

    return-void
.end method
