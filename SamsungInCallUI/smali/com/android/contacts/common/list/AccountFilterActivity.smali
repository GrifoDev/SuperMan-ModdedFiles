.class public Lcom/android/contacts/common/list/AccountFilterActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;,
        Lcom/android/contacts/common/list/AccountFilterActivity$MyLoaderCallbacks;,
        Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Lcom/android/contacts/common/list/ContactListFilter;

.field private d:Lcom/android/contacts/common/list/ContactListFilterView;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/list/AccountFilterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/AccountFilterActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/contacts/common/list/AccountFilterActivity;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->c:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/AccountFilterActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/contacts/common/list/AccountFilterActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->a(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->a(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v1, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    invoke-virtual {v4, v1, v6}, Lcom/android/contacts/common/model/AccountTypeManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/contacts/common/model/account/AccountType;->c()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lcom/android/contacts/common/model/account/AccountType;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    invoke-static {v6, v7, v0, v1}, Lcom/android/contacts/common/list/ContactListFilter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, -0x2

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->a(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v8, :cond_5

    if-le v0, v8, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const/4 v0, -0x3

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->a(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->d:Lcom/android/contacts/common/list/ContactListFilterView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->d:Lcom/android/contacts/common/list/ContactListFilterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->setActivated(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v3, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x3

    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListFilter;->a(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    const-string v2, "contactListFilter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/contacts/common/list/AccountFilterActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04003c

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/AccountFilterActivity;->setContentView(I)V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/AccountFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "currentFilter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->c:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/android/contacts/common/list/AccountFilterActivity$MyLoaderCallbacks;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/common/list/AccountFilterActivity$MyLoaderCallbacks;-><init>(Lcom/android/contacts/common/list/AccountFilterActivity;Lcom/android/contacts/common/list/AccountFilterActivity$1;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p2

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilterView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, v1, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_1

    iput-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->d:Lcom/android/contacts/common/list/ContactListFilterView;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListFilterView;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->e:Z

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/list/CustomContactListFilterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/ContactListFilterView;->setActivated(Z)V

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListFilterView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/AccountFilterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/ContactListFilterView;->setActivated(Z)V

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListFilterView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "contactListFilter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/AccountFilterActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
