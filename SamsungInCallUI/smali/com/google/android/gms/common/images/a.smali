.class public abstract Lcom/google/android/gms/common/images/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/a$a;,
        Lcom/google/android/gms/common/images/a$b;
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/common/images/a$a;

.field protected b:I


# direct methods
.method private a(Landroid/content/Context;Lcom/google/android/gms/b/ai;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 3

    invoke-static {p2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p3, v1, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method a(Landroid/content/Context;Lcom/google/android/gms/b/ai;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/images/a;->b:I

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/common/images/a;->b:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/b/ai;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0, p3, v2, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method
