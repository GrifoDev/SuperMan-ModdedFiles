.class Lcom/a/a/d/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/a/a/d/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/a/a/d/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/b/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/a/d/b/k;->b:Lcom/a/a/d/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 2

    iget-object v0, p0, Lcom/a/a/d/b/k;->a:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/a/a/d/b/k;->b:Lcom/a/a/d/c;

    invoke-interface {v0, p1}, Lcom/a/a/d/c;->a(Ljava/security/MessageDigest;)V

    return-void
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
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/a/a/d/b/k;

    iget-object v2, p0, Lcom/a/a/d/b/k;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/a/a/d/b/k;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/a/a/d/b/k;->b:Lcom/a/a/d/c;

    iget-object v3, p1, Lcom/a/a/d/b/k;->b:Lcom/a/a/d/c;

    invoke-interface {v2, v3}, Lcom/a/a/d/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/a/a/d/b/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/a/d/b/k;->b:Lcom/a/a/d/c;

    invoke-interface {v1}, Lcom/a/a/d/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
