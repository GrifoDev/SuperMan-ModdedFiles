.class Lcom/android/launcher2/MenuAppsSearch$8;
.super Ljava/lang/Object;
.source "MenuAppsSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsSearch;->enter(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsSearch;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$8;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$8;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->access$500(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$8;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->access$300(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$8;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mRecentGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->access$200(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$8;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mRecentGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->access$200(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    :cond_0
    return-void
.end method
