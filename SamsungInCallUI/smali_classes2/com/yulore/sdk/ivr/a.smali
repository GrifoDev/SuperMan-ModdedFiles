.class public Lcom/yulore/sdk/ivr/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulore/sdk/ivr/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:I

.field private final g:Lcom/yulore/sdk/ivr/b;


# direct methods
.method private constructor <init>(Lcom/yulore/sdk/ivr/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/yulore/sdk/ivr/a$a;->a(Lcom/yulore/sdk/ivr/a$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/yulore/sdk/ivr/a$a;->b(Lcom/yulore/sdk/ivr/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/yulore/sdk/ivr/a$a;->c(Lcom/yulore/sdk/ivr/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/yulore/sdk/ivr/a$a;->d(Lcom/yulore/sdk/ivr/a$a;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a;->d:Ljava/io/File;

    invoke-static {p1}, Lcom/yulore/sdk/ivr/a$a;->e(Lcom/yulore/sdk/ivr/a$a;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a;->e:Ljava/io/File;

    invoke-static {p1}, Lcom/yulore/sdk/ivr/a$a;->f(Lcom/yulore/sdk/ivr/a$a;)I

    move-result v0

    iput v0, p0, Lcom/yulore/sdk/ivr/a;->f:I

    invoke-static {p1}, Lcom/yulore/sdk/ivr/a$a;->g(Lcom/yulore/sdk/ivr/a$a;)Lcom/yulore/sdk/ivr/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a;->g:Lcom/yulore/sdk/ivr/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yulore/sdk/ivr/a$a;Lcom/yulore/sdk/ivr/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yulore/sdk/ivr/a;-><init>(Lcom/yulore/sdk/ivr/a$a;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a;->d:Ljava/io/File;

    return-object v0
.end method

.method public e()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a;->e:Ljava/io/File;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/yulore/sdk/ivr/a;->f:I

    return v0
.end method

.method public g()Lcom/yulore/sdk/ivr/b;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a;->g:Lcom/yulore/sdk/ivr/b;

    return-object v0
.end method
