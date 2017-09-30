.class public Lcom/yulore/a/a/e/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/a/a/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/a/a/e/e$a;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/yulore/a/a/e/e$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/a/a/e/e$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yulore/a/a/e/e$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/a/a/e/e$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yulore/a/a/e/e$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/yulore/a/a/e/e$a;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/yulore/a/a/e/e$a;)I
    .locals 1

    iget v0, p0, Lcom/yulore/a/a/e/e$a;->b:I

    return v0
.end method

.method private e(Lcom/yulore/a/a/e/e$a;)V
    .locals 1

    iget-object v0, p1, Lcom/yulore/a/a/e/e$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/yulore/a/a/e/e$a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yulore/a/a/e/e$a;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/yulore/a/a/e/e$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#xFF00"

    iput-object v0, p1, Lcom/yulore/a/a/e/e$a;->c:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Lcom/yulore/a/a/e/e$a;
    .locals 0

    iput p1, p0, Lcom/yulore/a/a/e/e$a;->b:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/yulore/a/a/e/e$a;
    .locals 0

    iput-object p1, p0, Lcom/yulore/a/a/e/e$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/yulore/a/a/e/e;
    .locals 2

    invoke-direct {p0, p0}, Lcom/yulore/a/a/e/e$a;->e(Lcom/yulore/a/a/e/e$a;)V

    new-instance v0, Lcom/yulore/a/a/e/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yulore/a/a/e/e;-><init>(Lcom/yulore/a/a/e/e$a;Lcom/yulore/a/a/e/e$1;)V

    return-object v0
.end method
