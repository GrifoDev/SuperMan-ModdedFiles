.class Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;
.super Landroid/os/AsyncTask;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v0, "ResolverActivity"

    const-string/jumbo v1, "list up doInBackground!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get2(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverListController;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListController;->sort(Ljava/util/List;)V

    aget-object v0, p1, v2

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "ResolverActivity"

    const-string/jumbo v1, "list up process done!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-wrap0(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get8(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    return-void
.end method
