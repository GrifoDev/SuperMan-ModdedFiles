.class public Lcom/android/contacts/common/model/account/SamsungAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    iput-object p3, p0, Lcom/android/contacts/common/model/account/SamsungAccountType;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/SamsungAccountType;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/common/model/account/SamsungAccountType;->d:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->c(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->d(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->f(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->g(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->h(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->i(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->j(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->k(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->l(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->m(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->n(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->p(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->q(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->r(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/model/account/SamsungAccountType;->g:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KnownExternalAccountType"

    const-string v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.osp.app.signin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/android/contacts/common/model/account/ExternalAccountType;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6

    const v5, 0x7f0902ae

    const/16 v4, 0xe

    const/4 v3, 0x1

    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/relation"

    const/16 v2, 0xa0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$RelationActionInflater;

    invoke-direct {v1}, Lcom/android/contacts/common/model/account/BaseAccountType$RelationActionInflater;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->h:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->j:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->k:Ljava/lang/String;

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    invoke-static {v3}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->e(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    const-string v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->o:Landroid/content/ContentValues;

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->o:Landroid/content/ContentValues;

    const-string v2, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x2061

    invoke-direct {v2, v3, v5, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private r(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 7

    const v6, 0x7f09016e

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/contact_event"

    const/16 v2, 0x96

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;

    invoke-direct {v1}, Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->h:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->j:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->k:Ljava/lang/String;

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    sget-object v1, Lcom/android/contacts/common/util/CommonDateUtils;->a:Ljava/text/SimpleDateFormat;

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->p:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/android/contacts/common/util/CommonDateUtils;->b:Ljava/text/SimpleDateFormat;

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->q:Ljava/text/SimpleDateFormat;

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    invoke-static {v5, v4}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2, v3}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    invoke-static {v3, v3}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    const-string v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->o:Landroid/content/ContentValues;

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->o:Landroid/content/ContentValues;

    const-string v2, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data1"

    invoke-direct {v2, v3, v6, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected g(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6

    const/4 v5, 0x3

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->g(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->k:Ljava/lang/String;

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    invoke-static {v3}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    invoke-static {v5}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/16 v2, 0xe

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    const-string v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f090269

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected h(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->h(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->k:Ljava/lang/String;

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    invoke-static {v3}, Lcom/android/contacts/common/model/account/SamsungAccountType;->b(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->b(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->b(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->b(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    const-string v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f09015f

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected i(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 10

    const v9, 0x7f090278

    const v8, 0x7f090277

    const v7, 0x7f090276

    const/4 v6, 0x1

    const v5, 0x22071

    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->i(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "data2"

    iput-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->k:Ljava/lang/String;

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/contacts/common/model/account/SamsungAccountType;->c(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    invoke-static {v6}, Lcom/android/contacts/common/model/account/SamsungAccountType;->c(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->m:Ljava/util/List;

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/contacts/common/model/account/SamsungAccountType;->c(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data10"

    invoke-direct {v2, v3, v8, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;->a(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data9"

    invoke-direct {v2, v3, v9, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data8"

    const v4, 0x7f090279

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data7"

    invoke-direct {v2, v3, v7, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data4"

    const v4, 0x7f09027a

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data4"

    const v4, 0x7f09027a

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data7"

    invoke-direct {v2, v3, v7, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data8"

    const v4, 0x7f090279

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data9"

    invoke-direct {v2, v3, v9, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data10"

    invoke-direct {v2, v3, v8, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;->a(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
