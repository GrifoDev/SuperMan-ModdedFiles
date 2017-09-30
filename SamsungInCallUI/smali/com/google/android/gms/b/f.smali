.class public final Lcom/google/android/gms/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:Lcom/google/android/gms/b/g;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Lcom/google/android/gms/b/g;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/g;

    invoke-direct {v0}, Lcom/google/android/gms/b/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/f;->a:Lcom/google/android/gms/b/g;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/f;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/b/f;->b:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/f;->b(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/b/f;->c:[I

    new-array v0, v0, [Lcom/google/android/gms/b/g;

    iput-object v0, p0, Lcom/google/android/gms/b/f;->d:[Lcom/google/android/gms/b/g;

    iput v2, p0, Lcom/google/android/gms/b/f;->e:I

    return-void
.end method

.method private a([I[II)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    aget v2, p1, v1

    aget v3, p2, v1

    if-eq v2, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private a([Lcom/google/android/gms/b/g;[Lcom/google/android/gms/b/g;I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/b/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private b(I)I
    .locals 1

    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/f;->c(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private c(I)I
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_1

    shl-int v0, v2, v0

    add-int/lit8 p1, v0, -0xc

    :cond_0
    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 8

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/b/f;->e:I

    iget-object v4, p0, Lcom/google/android/gms/b/f;->c:[I

    iget-object v5, p0, Lcom/google/android/gms/b/f;->d:[Lcom/google/android/gms/b/g;

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v6, v5, v1

    sget-object v7, Lcom/google/android/gms/b/f;->a:Lcom/google/android/gms/b/g;

    if-eq v6, v7, :cond_1

    if-eq v1, v0, :cond_0

    aget v7, v4, v1

    aput v7, v4, v0

    aput-object v6, v5, v0

    const/4 v6, 0x0

    aput-object v6, v5, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/b/f;->b:Z

    iput v0, p0, Lcom/google/android/gms/b/f;->e:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/f;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/b/f;->d()V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/b/f;->e:I

    return v0
.end method

.method a(I)Lcom/google/android/gms/b/g;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/f;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/b/f;->d()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/f;->d:[Lcom/google/android/gms/b/g;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/f;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/b/f;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/b/f;->a()I

    move-result v2

    new-instance v3, Lcom/google/android/gms/b/f;

    invoke-direct {v3, v2}, Lcom/google/android/gms/b/f;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/b/f;->c:[I

    iget-object v4, v3, Lcom/google/android/gms/b/f;->c:[I

    invoke-static {v1, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/f;->d:[Lcom/google/android/gms/b/g;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v4, v3, Lcom/google/android/gms/b/f;->d:[Lcom/google/android/gms/b/g;

    iget-object v0, p0, Lcom/google/android/gms/b/f;->d:[Lcom/google/android/gms/b/g;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/gms/b/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/g;

    aput-object v0, v4, v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput v2, v3, Lcom/google/android/gms/b/f;->e:I

    return-object v3
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/f;->c()Lcom/google/android/gms/b/f;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/b/f;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/b/f;

    invoke-virtual {p0}, Lcom/google/android/gms/b/f;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/b/f;->a()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/b/f;->c:[I

    iget-object v3, p1, Lcom/google/android/gms/b/f;->c:[I

    iget v4, p0, Lcom/google/android/gms/b/f;->e:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/b/f;->a([I[II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/b/f;->d:[Lcom/google/android/gms/b/g;

    iget-object v3, p1, Lcom/google/android/gms/b/f;->d:[Lcom/google/android/gms/b/g;

    iget v4, p0, Lcom/google/android/gms/b/f;->e:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/b/f;->a([Lcom/google/android/gms/b/g;[Lcom/google/android/gms/b/g;I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/b/f;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/b/f;->d()V

    :cond_0
    const/16 v1, 0x11

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/b/f;->e:I

    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/b/f;->c:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/b/f;->d:[Lcom/google/android/gms/b/g;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/b/g;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
