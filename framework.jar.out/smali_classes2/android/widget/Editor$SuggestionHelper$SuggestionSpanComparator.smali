.class Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionSpanComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/text/style/SuggestionSpan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SuggestionHelper;


# direct methods
.method private constructor <init>(Landroid/widget/Editor$SuggestionHelper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionHelper;

    .prologue
    .line 3471
    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$SuggestionHelper;Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionHelper;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionHelper;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I
    .locals 9
    .param p1, "span1"    # Landroid/text/style/SuggestionSpan;
    .param p2, "span2"    # Landroid/text/style/SuggestionSpan;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 3473
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v2

    .line 3474
    .local v2, "flag1":I
    invoke-virtual {p2}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    .line 3475
    .local v3, "flag2":I
    if-eq v2, v3, :cond_9

    .line 3477
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    .line 3478
    .local v0, "easy1":Z
    :goto_0
    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    .line 3479
    .local v1, "easy2":Z
    :goto_1
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    .line 3480
    .local v4, "misspelled1":Z
    :goto_2
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 3481
    .local v5, "misspelled2":Z
    :goto_3
    if-eqz v0, :cond_0

    if-eqz v4, :cond_6

    .line 3482
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v5, :cond_7

    .line 3483
    :cond_1
    if-eqz v4, :cond_8

    return v7

    .line 3477
    .end local v0    # "easy1":Z
    .end local v1    # "easy2":Z
    .end local v4    # "misspelled1":Z
    .end local v5    # "misspelled2":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "easy1":Z
    goto :goto_0

    .line 3478
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "easy2":Z
    goto :goto_1

    .line 3479
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "misspelled1":Z
    goto :goto_2

    .line 3480
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "misspelled2":Z
    goto :goto_3

    .line 3481
    :cond_6
    return v7

    .line 3482
    :cond_7
    return v8

    .line 3484
    :cond_8
    if-eqz v5, :cond_9

    return v8

    .line 3487
    .end local v0    # "easy1":Z
    .end local v1    # "easy2":Z
    .end local v4    # "misspelled1":Z
    .end local v5    # "misspelled2":Z
    :cond_9
    iget-object v6, p0, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionHelper;

    invoke-static {v6}, Landroid/widget/Editor$SuggestionHelper;->-get0(Landroid/widget/Editor$SuggestionHelper;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, p0, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionHelper;

    invoke-static {v6}, Landroid/widget/Editor$SuggestionHelper;->-get0(Landroid/widget/Editor$SuggestionHelper;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, v7, v6

    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "span1"    # Ljava/lang/Object;
    .param p2, "span2"    # Ljava/lang/Object;

    .prologue
    .line 3472
    check-cast p1, Landroid/text/style/SuggestionSpan;

    .end local p1    # "span1":Ljava/lang/Object;
    check-cast p2, Landroid/text/style/SuggestionSpan;

    .end local p2    # "span2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I

    move-result v0

    return v0
.end method
