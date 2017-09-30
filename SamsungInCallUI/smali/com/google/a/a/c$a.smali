.class public final Lcom/google/a/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/a/c$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/a/a/c$a$a;

.field private c:Lcom/google/a/a/c$a$a;

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/a/a/c$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/a/a/c$a$a;-><init>(Lcom/google/a/a/c$1;)V

    iput-object v0, p0, Lcom/google/a/a/c$a;->b:Lcom/google/a/a/c$a$a;

    iget-object v0, p0, Lcom/google/a/a/c$a;->b:Lcom/google/a/a/c$a$a;

    iput-object v0, p0, Lcom/google/a/a/c$a;->c:Lcom/google/a/a/c$a$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/a/a/c$a;->d:Z

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/a/a/c$a;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/a/a/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/a/a/c$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a()Lcom/google/a/a/c$a$a;
    .locals 2

    new-instance v0, Lcom/google/a/a/c$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/a/a/c$a$a;-><init>(Lcom/google/a/a/c$1;)V

    iget-object v1, p0, Lcom/google/a/a/c$a;->c:Lcom/google/a/a/c$a$a;

    iput-object v0, v1, Lcom/google/a/a/c$a$a;->c:Lcom/google/a/a/c$a$a;

    iput-object v0, p0, Lcom/google/a/a/c$a;->c:Lcom/google/a/a/c$a$a;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/c$a;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/a/a/c$a;->a()Lcom/google/a/a/c$a$a;

    move-result-object v1

    iput-object p2, v1, Lcom/google/a/a/c$a$a;->b:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/a/a/c$a$a;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/google/a/a/c$a;
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/a/a/c$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/c$a;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    const/4 v7, 0x1

    iget-boolean v2, p0, Lcom/google/a/a/c$a;->d:Z

    const-string v1, ""

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lcom/google/a/a/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/google/a/a/c$a;->b:Lcom/google/a/a/c$a$a;

    iget-object v0, v0, Lcom/google/a/a/c$a$a;->c:Lcom/google/a/a/c$a$a;

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_0
    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/google/a/a/c$a$a;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    iget-object v5, v1, Lcom/google/a/a/c$a$a;->a:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/google/a/a/c$a$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_3

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    iget-object v1, v1, Lcom/google/a/a/c$a$a;->c:Lcom/google/a/a/c$a$a;

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
