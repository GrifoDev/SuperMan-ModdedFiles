.class public final Landroid/support/v4/widget/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/p$b;,
        Landroid/support/v4/widget/p$a;,
        Landroid/support/v4/widget/p$e;,
        Landroid/support/v4/widget/p$d;,
        Landroid/support/v4/widget/p$c;,
        Landroid/support/v4/widget/p$f;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/p$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/widget/p$b;

    invoke-direct {v0}, Landroid/support/v4/widget/p$b;-><init>()V

    sput-object v0, Landroid/support/v4/widget/p;->a:Landroid/support/v4/widget/p$f;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/widget/p$a;

    invoke-direct {v0}, Landroid/support/v4/widget/p$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/p;->a:Landroid/support/v4/widget/p$f;

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/widget/p$e;

    invoke-direct {v0}, Landroid/support/v4/widget/p$e;-><init>()V

    sput-object v0, Landroid/support/v4/widget/p;->a:Landroid/support/v4/widget/p$f;

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/widget/p$d;

    invoke-direct {v0}, Landroid/support/v4/widget/p$d;-><init>()V

    sput-object v0, Landroid/support/v4/widget/p;->a:Landroid/support/v4/widget/p$f;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/support/v4/widget/p$c;

    invoke-direct {v0}, Landroid/support/v4/widget/p$c;-><init>()V

    sput-object v0, Landroid/support/v4/widget/p;->a:Landroid/support/v4/widget/p$f;

    goto :goto_0
.end method

.method public static a(Landroid/widget/PopupWindow;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/p;->a:Landroid/support/v4/widget/p$f;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/p$f;->a(Landroid/widget/PopupWindow;I)V

    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 6

    sget-object v0, Landroid/support/v4/widget/p;->a:Landroid/support/v4/widget/p$f;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/p$f;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/p;->a:Landroid/support/v4/widget/p$f;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/p$f;->a(Landroid/widget/PopupWindow;Z)V

    return-void
.end method
