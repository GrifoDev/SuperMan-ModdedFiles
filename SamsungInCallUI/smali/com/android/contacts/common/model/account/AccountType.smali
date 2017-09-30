.class public abstract Lcom/android/contacts/common/model/account/AccountType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;,
        Lcom/android/contacts/common/model/account/AccountType$StringInflater;,
        Lcom/android/contacts/common/model/account/AccountType$EditField;,
        Lcom/android/contacts/common/model/account/AccountType$EventEditType;,
        Lcom/android/contacts/common/model/account/AccountType$EditType;,
        Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    }
.end annotation


# static fields
.field private static j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field protected g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/AccountType$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/account/AccountType;->j:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->h:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/a/b/v;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->i:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p3, p2, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p3

    :cond_0
    :goto_0
    return-object p3

    :cond_1
    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 3

    iget-object v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    const-string v1, "null is not a valid mime type"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->i:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mime type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is already registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->i:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->d:Ljava/lang/String;

    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType;->e:I

    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountType;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/android/contacts/common/model/account/AccountType;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/model/account/AccountType;->g:Z

    return v0
.end method

.method public b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget v0, p0, Lcom/android/contacts/common/model/account/AccountType;->e:I

    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType;->f:I

    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountType;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/android/contacts/common/model/account/AccountType;->a(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract d()Z
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountType;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public abstract j()Z
.end method
