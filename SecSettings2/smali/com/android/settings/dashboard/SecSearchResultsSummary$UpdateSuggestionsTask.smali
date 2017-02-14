.class Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;
.super Landroid/os/AsyncTask;
.source "SecSearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SecSearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSuggestionsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;-><init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SecIndex;->getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v2, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap5(Lcom/android/settings/dashboard/SecSearchResultsSummary;Landroid/database/Cursor;)V

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap6(Lcom/android/settings/dashboard/SecSearchResultsSummary;Z)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v1, v0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap1(Lcom/android/settings/dashboard/SecSearchResultsSummary;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSuggestionsTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
