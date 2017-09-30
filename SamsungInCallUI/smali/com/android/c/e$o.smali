.class public Lcom/android/c/e$o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/c/e$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:I

.field private j:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/c/e$o;->i:I

    iput-object p2, p0, Lcom/android/c/e$o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/c/e$o;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/c/e$o;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/c/e$o;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/c/e$o;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/c/e$o;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/c/e$o;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/c/e$o;->h:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/android/c/e$o;->j:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lcom/android/c/e$o;->i:I

    iput-object p1, p0, Lcom/android/c/e$o;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/c/e$o;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/c/e$o;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/c/e$o;->g:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/c/e$o;->j:Z

    iput-object v0, p0, Lcom/android/c/e$o;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/c/e$o;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/c/e$o;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/c/e$o;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/android/c/e$o;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/c/e$o;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/android/c/e$o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/c/e$o;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/android/c/e$o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/c/e$o;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/android/c/e$o;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/c/e$o;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/c/e$o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/c/e$o;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/android/c/e$o;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/c/e$o;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/android/c/e$o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/c/e$o;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/android/c/e$o;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/c/e$o;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/android/c/e$o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/c/e$o;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/android/c/e$o;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/c/e$o;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/android/c/e$o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/c/e$o;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/android/c/e$o;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/c/e$o;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/android/c/e$o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/c/e$o;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/android/c/e$o;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/c/e$o;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/android/c/e$o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/c/e$o;->h:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "data2"

    iget v2, p0, Lcom/android/c/e$o;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    iget-object v1, p0, Lcom/android/c/e$o;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/c/e$o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_0
    iget-object v1, p0, Lcom/android/c/e$o;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "data5"

    iget-object v2, p0, Lcom/android/c/e$o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_1
    iget-object v1, p0, Lcom/android/c/e$o;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "data4"

    iget-object v2, p0, Lcom/android/c/e$o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_2
    iget-object v1, p0, Lcom/android/c/e$o;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "data8"

    iget-object v2, p0, Lcom/android/c/e$o;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_3
    iget-boolean v1, p0, Lcom/android/c/e$o;->j:Z

    if-eqz v1, :cond_4

    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_4
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/c/d;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/c/e$o;->e:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "data6"

    iget-object v2, p0, Lcom/android/c/e$o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_5
    iget-object v1, p0, Lcom/android/c/e$o;->f:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "data7"

    iget-object v2, p0, Lcom/android/c/e$o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_6
    iget-object v1, p0, Lcom/android/c/e$o;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, "data9"

    iget-object v2, p0, Lcom/android/c/e$o;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_7
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/android/c/e$o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/c/e$o;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/c/e$o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/c/e$o;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/android/c/e$g;
    .locals 1

    sget-object v0, Lcom/android/c/e$g;->e:Lcom/android/c/e$g;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/c/e$o;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/c/e$o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/c/e$o;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/android/c/e$o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/android/c/e$o;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/android/c/e$o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/android/c/e$o;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/android/c/e$o;

    iget v2, p0, Lcom/android/c/e$o;->i:I

    iget v3, p1, Lcom/android/c/e$o;->i:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/c/e$o;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/c/e$o;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/c/e$o;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/c/e$o;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/c/e$o;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/c/e$o;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/c/e$o;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/c/e$o;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/c/e$o;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/c/e$o;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/c/e$o;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/c/e$o;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/c/e$o;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/c/e$o;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/c/e$o;->j:Z

    iget-boolean v3, p1, Lcom/android/c/e$o;->j:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/c/e$o;->i:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/c/e$o;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/c/e$o;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/c/e$o;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/c/e$o;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/c/e$o;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/c/e$o;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/c/e$o;->j:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x4cf

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const/16 v0, 0x4d5

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "type: %d, organization: %s, department: %s, title: %s, isPrimary: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/c/e$o;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/c/e$o;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/c/e$o;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/c/e$o;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/android/c/e$o;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
