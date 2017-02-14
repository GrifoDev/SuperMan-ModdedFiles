.class Lcom/android/settings/dashboard/SecSearchResultsSummary$5;
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

    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-gez p3, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v9}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get3(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getItemId(I)J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v9, v12, v14

    if-nez v9, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v9}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get4(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v9

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v9}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get4(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SearchView;->clearFocus()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v9}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get3(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    return-void

    :cond_3
    move-object v11, v10

    check-cast v11, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;

    iget-object v3, v11, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->className:Ljava/lang/String;

    iget-object v6, v11, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->screenTitle:Ljava/lang/String;

    iget-object v8, v11, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->action:Ljava/lang/String;

    iget-object v7, v11, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->targetPkg:Ljava/lang/String;

    iget-object v5, v11, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->targetCls:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v9}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->needToRevertToInitialFragment()V

    iget-object v9, v11, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->extras:Landroid/os/Bundle;

    invoke-static/range {v2 .. v9}, Lcom/android/settings/Utils;->launchBySearch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v9}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v12, "com.android.settings"

    const-string/jumbo v13, "SEAR"

    invoke-static {v9, v12, v13}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v9}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get0(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v9}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get1(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v12}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get1(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100019

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v13}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get0(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v12, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    const-string/jumbo v12, ""

    invoke-static {v9, v12}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-set0(Lcom/android/settings/dashboard/SecSearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    const/4 v12, 0x0

    invoke-static {v9, v12}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-set3(Lcom/android/settings/dashboard/SecSearchResultsSummary;I)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v9}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get1(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v12}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get1(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f10001c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    iget-object v13, v11, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    invoke-static {v9, v12, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$5;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v12, v11, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap0(Lcom/android/settings/dashboard/SecSearchResultsSummary;Ljava/lang/String;)V

    return-void
.end method
