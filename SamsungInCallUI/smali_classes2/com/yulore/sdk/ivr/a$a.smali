.class public Lcom/yulore/sdk/ivr/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/sdk/ivr/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;

.field private f:I

.field private g:Lcom/yulore/sdk/ivr/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a$a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/yulore/sdk/ivr/a$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/yulore/sdk/ivr/a$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yulore/sdk/ivr/a$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/yulore/sdk/ivr/a$a;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a$a;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic e(Lcom/yulore/sdk/ivr/a$a;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a$a;->e:Ljava/io/File;

    return-object v0
.end method

.method static synthetic f(Lcom/yulore/sdk/ivr/a$a;)I
    .locals 1

    iget v0, p0, Lcom/yulore/sdk/ivr/a$a;->f:I

    return v0
.end method

.method static synthetic g(Lcom/yulore/sdk/ivr/a$a;)Lcom/yulore/sdk/ivr/b;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a$a;->g:Lcom/yulore/sdk/ivr/b;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/yulore/sdk/ivr/a$a;
    .locals 0

    iput p1, p0, Lcom/yulore/sdk/ivr/a$a;->f:I

    return-object p0
.end method

.method public a(Lcom/yulore/sdk/ivr/b;)Lcom/yulore/sdk/ivr/a$a;
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/a$a;->g:Lcom/yulore/sdk/ivr/b;

    return-object p0
.end method

.method public a(Ljava/io/File;)Lcom/yulore/sdk/ivr/a$a;
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/a$a;->d:Ljava/io/File;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/yulore/sdk/ivr/a$a;
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/a$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/yulore/sdk/ivr/a;
    .locals 2

    new-instance v0, Lcom/yulore/sdk/ivr/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yulore/sdk/ivr/a;-><init>(Lcom/yulore/sdk/ivr/a$a;Lcom/yulore/sdk/ivr/a$1;)V

    return-object v0
.end method

.method public b(Ljava/io/File;)Lcom/yulore/sdk/ivr/a$a;
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/a$a;->e:Ljava/io/File;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/yulore/sdk/ivr/a$a;
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/a$a;->b:Ljava/lang/String;

    return-object p0
.end method
