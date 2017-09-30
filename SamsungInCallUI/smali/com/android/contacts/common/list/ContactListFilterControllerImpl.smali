.class Lcom/android/contacts/common/list/ContactListFilterControllerImpl;
.super Lcom/android/contacts/common/list/ContactListFilterController;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/android/contacts/common/list/ContactListFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterController;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->a(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->c:Lcom/android/contacts/common/list/ContactListFilter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->a(Z)V

    return-void
.end method

.method private a(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->c:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->c:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->c:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/common/list/ContactListFilter;->a(Landroid/content/SharedPreferences;Lcom/android/contacts/common/list/ContactListFilter;)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->c()V

    :cond_1
    return-void
.end method

.method private b()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;

    invoke-interface {v0}, Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 5

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->a(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->c:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->c:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/common/list/ContactListFilter;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->c:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/common/list/ContactListFilter;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->a(Lcom/android/contacts/common/model/account/AccountWithDataSet;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->a(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->a(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    return-void
.end method

.method public a(Lcom/android/contacts/common/list/ContactListFilter;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->a(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->c:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->c:Lcom/android/contacts/common/list/ContactListFilter;

    iget v0, v0, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->a(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->a(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->a(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->a(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method
