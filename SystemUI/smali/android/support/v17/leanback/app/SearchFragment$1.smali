.class Landroid/support/v17/leanback/app/SearchFragment$1;
.super Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/SearchFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment$1;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$1;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment$1;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchFragment;->mResultsChangedCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$1;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment$1;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchFragment;->mResultsChangedCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
