.class Lcom/android/settings/search2/SearchFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search2/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search2/SearchFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/search2/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/SearchFragment$1;->this$0:Lcom/android/settings/search2/SearchFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/settings/search2/SearchFragment$1;->this$0:Lcom/android/settings/search2/SearchFragment;

    invoke-static {v0}, Lcom/android/settings/search2/SearchFragment;->-wrap0(Lcom/android/settings/search2/SearchFragment;)V

    :cond_0
    return-void
.end method
