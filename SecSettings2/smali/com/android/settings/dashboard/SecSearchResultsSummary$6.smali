.class Lcom/android/settings/dashboard/SecSearchResultsSummary$6;
.super Ljava/lang/Object;
.source "SecSearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/SecSearchResultsSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$6;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$6;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get5(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->-get0(Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$6;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-set2(Lcom/android/settings/dashboard/SecSearchResultsSummary;Z)Z

    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$6;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-set1(Lcom/android/settings/dashboard/SecSearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$6;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get4(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SearchResultsSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSearchView is null in onItemClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$6;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v3}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get2(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$6;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get1(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$6;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get1(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$6;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v3}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get2(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$6;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get4(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$6;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get2(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
