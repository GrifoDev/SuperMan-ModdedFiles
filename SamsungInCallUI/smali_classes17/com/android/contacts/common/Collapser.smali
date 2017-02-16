.class public final Lcom/android/contacts/common/Collapser;
.super Ljava/lang/Object;
.source "Collapser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/Collapser$Collapsible;
    }
.end annotation


# static fields
.field private static final MAX_LISTSIZE_TO_COLLAPSE:I = 0x14


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static collapseList(Ljava/util/List;Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/contacts/common/Collapser$Collapsible",
            "<TT;>;>(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v7, 0x0

    .line 65
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 67
    .local v5, "listSize":I
    const/16 v6, 0x14

    if-le v5, v6, :cond_1

    .line 98
    :cond_0
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_5

    .line 72
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/Collapser$Collapsible;

    .line 73
    .local v1, "iItem":Lcom/android/contacts/common/Collapser$Collapsible;, "TT;"
    if-eqz v1, :cond_4

    .line 74
    add-int/lit8 v3, v0, 0x1

    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 75
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/Collapser$Collapsible;

    .line 76
    .local v4, "jItem":Lcom/android/contacts/common/Collapser$Collapsible;, "TT;"
    if-eqz v4, :cond_2

    .line 77
    invoke-interface {v1, v4, p1}, Lcom/android/contacts/common/Collapser$Collapsible;->shouldCollapseWith(Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 78
    invoke-interface {v1, v4}, Lcom/android/contacts/common/Collapser$Collapsible;->collapseWith(Ljava/lang/Object;)V

    .line 79
    invoke-interface {p0, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 80
    :cond_3
    invoke-interface {v4, v1, p1}, Lcom/android/contacts/common/Collapser$Collapsible;->shouldCollapseWith(Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 81
    invoke-interface {v4, v1}, Lcom/android/contacts/common/Collapser$Collapsible;->collapseWith(Ljava/lang/Object;)V

    .line 82
    invoke-interface {p0, v0, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 71
    .end local v3    # "j":I
    .end local v4    # "jItem":Lcom/android/contacts/common/Collapser$Collapsible;, "TT;"
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "iItem":Lcom/android/contacts/common/Collapser$Collapsible;, "TT;"
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 92
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2
.end method
