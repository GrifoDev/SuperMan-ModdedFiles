.class Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SecSearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SecSearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-boolean v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    iget-boolean v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionItem;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionItem;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-boolean v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "this should only be called when the cursor is valid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "couldn\'t move cursor to position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040268

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_0
    const v3, 0x7f1100e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionItem;

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionItem;->query:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_2
    move-object v2, p2

    goto :goto_0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->notifyDataSetChanged()V

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SuggestionsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
