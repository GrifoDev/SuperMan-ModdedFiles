.class public final Landroid/support/v4/content/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/a/a$d;,
        Landroid/support/v4/content/a/a$c;,
        Landroid/support/v4/content/a/a$b;,
        Landroid/support/v4/content/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/content/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/content/a/a$d;

    invoke-direct {v0, v2}, Landroid/support/v4/content/a/a$d;-><init>(Landroid/support/v4/content/a/a$1;)V

    sput-object v0, Landroid/support/v4/content/a/a;->a:Landroid/support/v4/content/a/a$a;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/content/a/a$c;

    invoke-direct {v0, v2}, Landroid/support/v4/content/a/a$c;-><init>(Landroid/support/v4/content/a/a$1;)V

    sput-object v0, Landroid/support/v4/content/a/a;->a:Landroid/support/v4/content/a/a$a;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/content/a/a$b;

    invoke-direct {v0, v2}, Landroid/support/v4/content/a/a$b;-><init>(Landroid/support/v4/content/a/a$1;)V

    sput-object v0, Landroid/support/v4/content/a/a;->a:Landroid/support/v4/content/a/a$a;

    goto :goto_0
.end method

.method public static a(Landroid/content/res/Resources;)I
    .locals 1

    sget-object v0, Landroid/support/v4/content/a/a;->a:Landroid/support/v4/content/a/a$a;

    invoke-interface {v0, p0}, Landroid/support/v4/content/a/a$a;->a(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/res/Resources;)I
    .locals 1

    sget-object v0, Landroid/support/v4/content/a/a;->a:Landroid/support/v4/content/a/a$a;

    invoke-interface {v0, p0}, Landroid/support/v4/content/a/a$a;->b(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/res/Resources;)I
    .locals 1

    sget-object v0, Landroid/support/v4/content/a/a;->a:Landroid/support/v4/content/a/a$a;

    invoke-interface {v0, p0}, Landroid/support/v4/content/a/a$a;->c(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method
