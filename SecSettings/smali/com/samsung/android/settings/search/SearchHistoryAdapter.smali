.class Lcom/samsung/android/settings/search/SearchHistoryAdapter;
.super Landroid/widget/CursorAdapter;
.source "SearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/search/SearchHistoryAdapter$1;,
        Lcom/samsung/android/settings/search/SearchHistoryAdapter$Listener;
    }
.end annotation


# instance fields
.field private listItemClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/samsung/android/settings/search/SearchHistoryAdapter$Listener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/search/SearchHistoryAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/search/SearchHistoryAdapter;)Lcom/samsung/android/settings/search/SearchHistoryAdapter$Listener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->mListener:Lcom/samsung/android/settings/search/SearchHistoryAdapter$Listener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/search/SearchHistoryAdapter$Listener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    new-instance v0, Lcom/samsung/android/settings/search/SearchHistoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/search/SearchHistoryAdapter$1;-><init>(Lcom/samsung/android/settings/search/SearchHistoryAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->listItemClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->mListener:Lcom/samsung/android/settings/search/SearchHistoryAdapter$Listener;

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private setRecentDeleteAllButton(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 6

    const/4 v5, 0x0

    const v3, 0x7f0a077e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v3, 0x7f0a018a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_button_background"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    const v3, 0x7f080785

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    new-instance v3, Lcom/samsung/android/settings/search/SearchHistoryAdapter$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/search/SearchHistoryAdapter$3;-><init>(Lcom/samsung/android/settings/search/SearchHistoryAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setRecentDeleteButton(Landroid/view/View;J)V
    .locals 2

    const v1, 0x7f0a0227

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    new-instance v1, Lcom/samsung/android/settings/search/SearchHistoryAdapter$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/android/settings/search/SearchHistoryAdapter$2;-><init>(Lcom/samsung/android/settings/search/SearchHistoryAdapter;J)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setRecentItemOnView(Landroid/view/View;Lcom/samsung/android/settings/search/SearchHistoryItem;)V
    .locals 9

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v6, "SearchHistoryAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip setRecentItemOnView"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settingslib/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const v6, 0x7f0a01c7

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0a0463

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0a091e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p2, Lcom/samsung/android/settings/search/SearchHistoryItem;->mRecentSearchString:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v0, v6, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v6}, Lcom/samsung/android/settings/search/SearchHistoryItem;->getDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->listItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p2, Lcom/samsung/android/settings/search/SearchHistoryItem;->mTitleEngString:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v1, "SearchHistoryAdapter"

    const-string/jumbo v2, "skipp bindView"

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/search/SearchHistoryItem;

    invoke-direct {v0, p3}, Lcom/samsung/android/settings/search/SearchHistoryItem;-><init>(Landroid/database/Cursor;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->setRecentItemOnView(Landroid/view/View;Lcom/samsung/android/settings/search/SearchHistoryItem;)V

    iget-wide v2, v0, Lcom/samsung/android/settings/search/SearchHistoryItem;->mId:J

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->setRecentDeleteButton(Landroid/view/View;J)V

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->setRecentDeleteAllButton(Landroid/view/View;Landroid/database/Cursor;)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d02aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
