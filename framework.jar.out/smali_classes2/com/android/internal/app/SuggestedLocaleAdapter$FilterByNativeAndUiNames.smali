.class Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;
.super Landroid/widget/Filter;
.source "SuggestedLocaleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SuggestedLocaleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterByNativeAndUiNames"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/SuggestedLocaleAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 13

    new-instance v7, Landroid/widget/Filter$FilterResults;

    invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v10, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v10}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get3(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v12}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get2(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v10, v11}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-set1(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v10}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get3(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    iput-object v9, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v7, Landroid/widget/Filter$FilterResults;->count:I

    :goto_0
    return-object v7

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->wordMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->wordMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iput-object v5, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v7, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-set0(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2, v4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-set3(Lcom/android/internal/app/SuggestedLocaleAdapter;I)I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2, v4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-set2(Lcom/android/internal/app/SuggestedLocaleAdapter;I)I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get2(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get5(Lcom/android/internal/app/SuggestedLocaleAdapter;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-set3(Lcom/android/internal/app/SuggestedLocaleAdapter;I)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get0(Lcom/android/internal/app/SuggestedLocaleAdapter;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get1(Lcom/android/internal/app/SuggestedLocaleAdapter;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get4(Lcom/android/internal/app/SuggestedLocaleAdapter;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-set2(Lcom/android/internal/app/SuggestedLocaleAdapter;I)I

    goto :goto_0

    :cond_2
    iget v2, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    goto :goto_1
.end method

.method wordMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v6

    :cond_0
    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v1, v2

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method
