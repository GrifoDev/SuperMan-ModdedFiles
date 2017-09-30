.class public Landroid/support/v4/app/ac;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ac$a;,
        Landroid/support/v4/app/ac$f;,
        Landroid/support/v4/app/ac$g;,
        Landroid/support/v4/app/ac$c;,
        Landroid/support/v4/app/ac$b;,
        Landroid/support/v4/app/ac$r;,
        Landroid/support/v4/app/ac$d;,
        Landroid/support/v4/app/ac$k;,
        Landroid/support/v4/app/ac$j;,
        Landroid/support/v4/app/ac$i;,
        Landroid/support/v4/app/ac$q;,
        Landroid/support/v4/app/ac$p;,
        Landroid/support/v4/app/ac$o;,
        Landroid/support/v4/app/ac$n;,
        Landroid/support/v4/app/ac$m;,
        Landroid/support/v4/app/ac$l;,
        Landroid/support/v4/app/ac$e;,
        Landroid/support/v4/app/ac$h;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/app/ac$h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/support/v4/os/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/app/ac$k;

    invoke-direct {v0}, Landroid/support/v4/app/ac$k;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ac$h;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/app/ac$j;

    invoke-direct {v0}, Landroid/support/v4/app/ac$j;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ac$h;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/app/ac$i;

    invoke-direct {v0}, Landroid/support/v4/app/ac$i;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ac$h;

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/app/ac$q;

    invoke-direct {v0}, Landroid/support/v4/app/ac$q;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ac$h;

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/app/ac$p;

    invoke-direct {v0}, Landroid/support/v4/app/ac$p;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ac$h;

    goto :goto_0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/support/v4/app/ac$o;

    invoke-direct {v0}, Landroid/support/v4/app/ac$o;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ac$h;

    goto :goto_0

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_6

    new-instance v0, Landroid/support/v4/app/ac$n;

    invoke-direct {v0}, Landroid/support/v4/app/ac$n;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ac$h;

    goto :goto_0

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_7

    new-instance v0, Landroid/support/v4/app/ac$m;

    invoke-direct {v0}, Landroid/support/v4/app/ac$m;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ac$h;

    goto :goto_0

    :cond_7
    new-instance v0, Landroid/support/v4/app/ac$l;

    invoke-direct {v0}, Landroid/support/v4/app/ac$l;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ac$h;

    goto :goto_0
.end method

.method static synthetic a()Landroid/support/v4/app/ac$h;
    .locals 1

    sget-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ac$h;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/app/aa;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/app/ac;->b(Landroid/support/v4/app/aa;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/ab;Landroid/support/v4/app/ac$r;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/app/ac;->c(Landroid/support/v4/app/ab;Landroid/support/v4/app/ac$r;)V

    return-void
.end method

.method private static b(Landroid/support/v4/app/aa;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/aa;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/ac$a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ac$a;

    invoke-interface {p0, v0}, Landroid/support/v4/app/aa;->a(Landroid/support/v4/app/ag$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/support/v4/app/ab;Landroid/support/v4/app/ac$r;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/app/ac;->d(Landroid/support/v4/app/ab;Landroid/support/v4/app/ac$r;)V

    return-void
.end method

.method private static c(Landroid/support/v4/app/ab;Landroid/support/v4/app/ac$r;)V
    .locals 7

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v4/app/ac$c;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/app/ac$c;

    iget-object v0, p1, Landroid/support/v4/app/ac$c;->d:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/ac$c;->f:Z

    iget-object v2, p1, Landroid/support/v4/app/ac$c;->e:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ac$c;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/ak;->a(Landroid/support/v4/app/ab;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/support/v4/app/ac$f;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/support/v4/app/ac$f;

    iget-object v0, p1, Landroid/support/v4/app/ac$f;->d:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/ac$f;->f:Z

    iget-object v2, p1, Landroid/support/v4/app/ac$f;->e:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ac$f;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/ak;->a(Landroid/support/v4/app/ab;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/support/v4/app/ac$b;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/support/v4/app/ac$b;

    iget-object v1, p1, Landroid/support/v4/app/ac$b;->d:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroid/support/v4/app/ac$b;->f:Z

    iget-object v3, p1, Landroid/support/v4/app/ac$b;->e:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ac$b;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroid/support/v4/app/ac$b;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroid/support/v4/app/ac$b;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/app/ak;->a(Landroid/support/v4/app/ab;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Landroid/support/v4/app/ac$g;

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private static d(Landroid/support/v4/app/ab;Landroid/support/v4/app/ac$r;)V
    .locals 10

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/support/v4/app/ac$g;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/support/v4/app/ac$g;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Landroid/support/v4/app/ac$g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ac$g$a;

    invoke-virtual {v0}, Landroid/support/v4/app/ac$g$a;->a()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/support/v4/app/ac$g$a;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/support/v4/app/ac$g$a;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/support/v4/app/ac$g$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/support/v4/app/ac$g$a;->e()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/support/v4/app/ac$g;->a:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/support/v4/app/ac$g;->b:Ljava/lang/CharSequence;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/af;->a(Landroid/support/v4/app/ab;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {p0, p1}, Landroid/support/v4/app/ac;->c(Landroid/support/v4/app/ab;Landroid/support/v4/app/ac$r;)V

    goto :goto_1
.end method
