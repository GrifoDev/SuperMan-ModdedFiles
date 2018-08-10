.class final Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodListBuilder"
.end annotation


# instance fields
.field private final mInputMethodSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public fillAuxiliaryImes(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v4, 0x1

    invoke-static {v2, p2, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->-wrap0(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    return-object p0

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v4, 0x0

    invoke-static {v2, p2, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->-wrap0(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/Locale;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    return v0
.end method
