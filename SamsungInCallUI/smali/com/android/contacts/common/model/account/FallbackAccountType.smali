.class public Lcom/android/contacts/common/model/account/FallbackAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->b:Ljava/lang/String;

    const v0, 0x7f0900ab

    iput v0, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->e:I

    const v0, 0x7f030001

    iput v0, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->f:I

    iput-object p2, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->d:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->c(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->d(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->e(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->f(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->g(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->h(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->i(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->j(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->k(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->l(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->m(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->n(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->o(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->p(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->g:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FallbackAccountType"

    const-string v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
