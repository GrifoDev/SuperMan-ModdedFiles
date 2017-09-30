.class public Lcom/yulore/a/a/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/File;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/yulore/a/a/a/b$a;->d:Z

    iput-boolean v0, p0, Lcom/yulore/a/a/a/b$a;->e:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/yulore/a/a/a/b$a;->f:I

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Lcom/yulore/a/a/a/b$a;
    .locals 0

    iput-object p1, p0, Lcom/yulore/a/a/a/b$a;->b:Ljava/io/File;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/yulore/a/a/a/b$a;
    .locals 0

    iput-object p1, p0, Lcom/yulore/a/a/a/b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/a/a/a/b$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/yulore/a/a/a/b$a;
    .locals 0

    iput-object p1, p0, Lcom/yulore/a/a/a/b$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/yulore/a/a/a/b$a;->b:Ljava/io/File;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/a/a/a/b$a;->c:Ljava/lang/String;

    return-object v0
.end method
