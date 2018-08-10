.class Landroid/support/v17/leanback/app/SearchFragment$4;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment$4;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$4;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v17/leanback/app/SearchFragment;->mAutoStartRecognition:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$4;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    return-void
.end method
