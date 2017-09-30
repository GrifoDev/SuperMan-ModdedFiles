.class public final Lcom/google/android/gms/b/m$b;
.super Lcom/google/android/gms/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/b/d",
        "<",
        "Lcom/google/android/gms/b/m$b;",
        ">;"
    }
.end annotation


# instance fields
.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/d;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/b/m$b;->f()Lcom/google/android/gms/b/m$b;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/b/d;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/b/m$b;->c:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/b/m$b;->c:I

    invoke-static {v1, v2}, Lcom/google/android/gms/b/c;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/b/m$b;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/b/m$b;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/b/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/b/m$b;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/b/m$b;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/b/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public a(Lcom/google/android/gms/b/c;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/b/m$b;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/b/m$b;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/b/c;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/m$b;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/b/m$b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/b/c;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/m$b;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/b/m$b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/b/c;->a(ILjava/lang/String;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/b/d;->a(Lcom/google/android/gms/b/c;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/b/m$b;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/b/m$b;

    iget v2, p0, Lcom/google/android/gms/b/m$b;->c:I

    iget v3, p1, Lcom/google/android/gms/b/m$b;->c:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/m$b;->d:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/android/gms/b/m$b;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/b/m$b;->e:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/b/m$b;->e:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/b/m$b;->a:Lcom/google/android/gms/b/f;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/b/m$b;->a:Lcom/google/android/gms/b/f;

    invoke-virtual {v2}, Lcom/google/android/gms/b/f;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/b/m$b;->a:Lcom/google/android/gms/b/f;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/b/m$b;->a:Lcom/google/android/gms/b/f;

    invoke-virtual {v2}, Lcom/google/android/gms/b/f;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/b/m$b;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/b/m$b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/b/m$b;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/b/m$b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/b/m$b;->a:Lcom/google/android/gms/b/f;

    iget-object v1, p1, Lcom/google/android/gms/b/m$b;->a:Lcom/google/android/gms/b/f;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Lcom/google/android/gms/b/m$b;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/b/m$b;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/b/m$b;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/b/m$b;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/b/m$b;->a:Lcom/google/android/gms/b/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/b/m$b;->b:I

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/b/m$b;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/b/m$b;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/b/m$b;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/b/m$b;->a:Lcom/google/android/gms/b/f;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/m$b;->a:Lcom/google/android/gms/b/f;

    invoke-virtual {v2}, Lcom/google/android/gms/b/f;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/m$b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/m$b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/b/m$b;->a:Lcom/google/android/gms/b/f;

    invoke-virtual {v1}, Lcom/google/android/gms/b/f;->hashCode()I

    move-result v1

    goto :goto_2
.end method
