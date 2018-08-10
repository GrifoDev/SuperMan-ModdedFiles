.class Landroid/support/v17/leanback/app/SearchSupportFragment$1;
.super Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
.source "SearchSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/SearchSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultsChangedCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultsChangedCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
