.class public final Lcom/google/android/gms/b/r$a;
.super Lcom/google/android/gms/b/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/b/u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/u$a",
            "<+",
            "Lcom/google/android/gms/common/api/f;",
            "Lcom/google/android/gms/common/api/a$c;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/b/ag;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/b/r$a;->a:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/ag;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/b/r$a;->c:Lcom/google/android/gms/b/u$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/ag;->a(Lcom/google/android/gms/b/u$a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/r$a;->c:Lcom/google/android/gms/b/u$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/b/u$a;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/r$a;->c:Lcom/google/android/gms/b/u$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/b/u$a;->a(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/r$a;->c:Lcom/google/android/gms/b/u$a;

    invoke-virtual {v0}, Lcom/google/android/gms/b/u$a;->g()Z

    move-result v0

    return v0
.end method
