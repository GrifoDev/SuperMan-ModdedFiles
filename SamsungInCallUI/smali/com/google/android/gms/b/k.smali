.class final Lcom/google/android/gms/b/k;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:[B


# virtual methods
.method a()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/b/k;->a:I

    invoke-static {v0}, Lcom/google/android/gms/b/c;->f(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/b/k;->b:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method a(Lcom/google/android/gms/b/c;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/b/k;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/b/c;->e(I)V

    iget-object v0, p0, Lcom/google/android/gms/b/k;->b:[B

    invoke-virtual {p1, v0}, Lcom/google/android/gms/b/c;->d([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/b/k;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/b/k;

    iget v2, p0, Lcom/google/android/gms/b/k;->a:I

    iget v3, p1, Lcom/google/android/gms/b/k;->a:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/b/k;->b:[B

    iget-object v3, p1, Lcom/google/android/gms/b/k;->b:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/b/k;->a:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/b/k;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
