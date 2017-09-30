.class public abstract Lcom/google/android/gms/b/i;
.super Ljava/lang/Object;


# instance fields
.field protected volatile b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/b/i;->b:I

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/android/gms/b/c;)V
    .locals 0

    return-void
.end method

.method public c()Lcom/google/android/gms/b/i;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/i;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/i;->c()Lcom/google/android/gms/b/i;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/b/i;->b:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/b/i;->e()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/b/i;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/i;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/b/i;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/b/j;->a(Lcom/google/android/gms/b/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
