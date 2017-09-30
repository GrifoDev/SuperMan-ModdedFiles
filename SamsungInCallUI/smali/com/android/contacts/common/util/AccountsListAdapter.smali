.class public final Lcom/android/contacts/common/util/AccountsListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/android/contacts/common/model/AccountTypeManager;

.field private final d:Landroid/content/Context;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->e:I

    iput-object p1, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->a(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->c:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-direct {p0, p2}, Lcom/android/contacts/common/util/AccountsListAdapter;->a(Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->b:Ljava/util/List;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-virtual {v0, p3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, v1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method private a(Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->c:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->c:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->c:Lcom/android/contacts/common/model/AccountTypeManager;

    sget-object v0, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->b:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->a(Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->e:I

    return-void
.end method

.method public b(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/util/AccountsListAdapter;->b(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_0

    :goto_0
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1020015

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1020006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v4, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->c:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v5, v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/common/model/AccountTypeManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->d:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/account/AccountType;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->d:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/android/contacts/common/model/account/AccountType;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->a:Landroid/view/LayoutInflater;

    iget v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->e:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/contacts/common/util/AccountsListAdapter;->e:I

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_1
    const v0, 0x7f04001e

    goto :goto_1
.end method
