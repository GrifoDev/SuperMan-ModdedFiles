.class public final Landroid/support/v4/view/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/o$c;,
        Landroid/support/v4/view/o$b;,
        Landroid/support/v4/view/o$a;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/o$c;

    invoke-direct {v0}, Landroid/support/v4/view/o$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$a;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/o$b;

    invoke-direct {v0}, Landroid/support/v4/view/o$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$a;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$a;

    invoke-interface {v0, p0}, Landroid/support/v4/view/o$a;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$a;

    invoke-interface {v0, p0}, Landroid/support/v4/view/o$a;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method
