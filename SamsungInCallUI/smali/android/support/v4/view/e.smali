.class public final Landroid/support/v4/view/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/e$c;,
        Landroid/support/v4/view/e$b;,
        Landroid/support/v4/view/e$a;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/e$c;

    invoke-direct {v0}, Landroid/support/v4/view/e$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/e;->a:Landroid/support/v4/view/e$a;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/e$b;

    invoke-direct {v0}, Landroid/support/v4/view/e$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/e;->a:Landroid/support/v4/view/e$a;

    goto :goto_0
.end method

.method public static a(II)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/e;->a:Landroid/support/v4/view/e$a;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/e$a;->a(II)I

    move-result v0

    return v0
.end method

.method public static a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 7

    sget-object v0, Landroid/support/v4/view/e;->a:Landroid/support/v4/view/e$a;

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/view/e$a;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method
