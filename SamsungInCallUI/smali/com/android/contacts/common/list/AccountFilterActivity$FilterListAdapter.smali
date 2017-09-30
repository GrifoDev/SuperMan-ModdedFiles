.class Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/AccountFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterListAdapter"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lcom/android/contacts/common/model/AccountTypeManager;

.field private final d:Lcom/android/contacts/common/list/ContactListFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->d:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->a(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->c:Lcom/android/contacts/common/model/AccountTypeManager;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->a(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    check-cast p2, Lcom/android/contacts/common/list/ContactListFilterView;

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->setSingleAccount(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p2, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->c:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {p2, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->a(Lcom/android/contacts/common/model/AccountTypeManager;)V

    invoke-virtual {p2, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->d:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->setActivated(Z)V

    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f04003e

    invoke-virtual {v0, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilterView;

    move-object p2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
