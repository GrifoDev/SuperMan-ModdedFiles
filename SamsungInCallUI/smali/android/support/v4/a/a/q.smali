.class public final Landroid/support/v4/a/a/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/a/a/q$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/a/a/o;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/a/a/p;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/a/a/p;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/a/a/q$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/a/a/q$a;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
