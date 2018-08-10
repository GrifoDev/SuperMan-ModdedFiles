.class public Landroid/graphics/PorterDuffColorFilter;
.super Landroid/graphics/ColorFilter;
.source "PorterDuffColorFilter.java"


# instance fields
.field private mColor:I

.field private mMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    iput p1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iput-object p2, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private static native native_CreatePorterDuffFilter(II)J
.end method


# virtual methods
.method createNativeInstance()J
    .locals 2

    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iget-object v1, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget v1, v1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/PorterDuffColorFilter;->native_CreatePorterDuffFilter(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/PorterDuffColorFilter;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iget v4, v0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget v3, v3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    iget-object v4, v0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget v4, v4, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    if-ne v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    return v0
.end method

.method public getMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setColor(I)V
    .locals 1

    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    invoke-virtual {p0}, Landroid/graphics/PorterDuffColorFilter;->discardNativeInstance()V

    :cond_0
    return-void
.end method

.method public setMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mode must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/graphics/PorterDuffColorFilter;->discardNativeInstance()V

    return-void
.end method
