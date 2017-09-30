.class public final Landroid/support/v4/app/ac$g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ac$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:J

.field private final c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/String;

.field private e:Landroid/net/Uri;


# direct methods
.method static a(Ljava/util/List;)[Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/ac$g$a;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Landroid/os/Bundle;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ac$g$a;

    invoke-direct {v0}, Landroid/support/v4/app/ac$g$a;->f()Landroid/os/Bundle;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private f()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroid/support/v4/app/ac$g$a;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const-string v1, "text"

    iget-object v2, p0, Landroid/support/v4/app/ac$g$a;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    const-string v1, "time"

    iget-wide v2, p0, Landroid/support/v4/app/ac$g$a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Landroid/support/v4/app/ac$g$a;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    const-string v1, "sender"

    iget-object v2, p0, Landroid/support/v4/app/ac$g$a;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/ac$g$a;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "type"

    iget-object v2, p0, Landroid/support/v4/app/ac$g$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/ac$g$a;->e:Landroid/net/Uri;

    if-eqz v1, :cond_3

    const-string v1, "uri"

    iget-object v2, p0, Landroid/support/v4/app/ac$g$a;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac$g$a;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/app/ac$g$a;->b:J

    return-wide v0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac$g$a;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac$g$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac$g$a;->e:Landroid/net/Uri;

    return-object v0
.end method
