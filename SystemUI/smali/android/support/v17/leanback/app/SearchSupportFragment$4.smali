.class Landroid/support/v17/leanback/app/SearchSupportFragment$4;
.super Ljava/lang/Object;
.source "SearchSupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    return-void
.end method
