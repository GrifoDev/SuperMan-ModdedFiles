.class final Landroid/view/FocusFinder$UserSpecifiedFocusComparator;
.super Ljava/lang/Object;
.source "FocusFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserSpecifiedFocusComparator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHeadsOfChains:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsConnectedTo:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextFoci:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextFocusGetter:Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;

.field private final mOriginalOrdinal:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFocusGetter:Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;

    return-void
.end method

.method private setHeadOfChain(Landroid/view/View;)V
    .locals 3

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move-object p1, v0

    :cond_1
    iget-object v2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    if-ne p1, p2, :cond_0

    return v6

    :cond_0
    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-ne v0, v2, :cond_4

    if-eqz v0, :cond_4

    if-ne p1, v0, :cond_1

    return v4

    :cond_1
    if-ne p2, v0, :cond_2

    return v5

    :cond_2
    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    return v4

    :cond_3
    return v5

    :cond_4
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    move-object p1, v0

    const/4 v1, 0x1

    :cond_5
    if-eqz v2, :cond_6

    move-object p2, v2

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_8

    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v6, v3, :cond_7

    move v3, v4

    :goto_0
    return v3

    :cond_7
    move v3, v5

    goto :goto_0

    :cond_8
    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mRoot:Landroid/view/View;

    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public setFocusables(Ljava/util/List;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mRoot:Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v4, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFocusGetter:Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;

    iget-object v4, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mRoot:Landroid/view/View;

    invoke-interface {v3, v4, v2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;->get(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_2
    if-ltz v0, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setHeadOfChain(Landroid/view/View;)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method
