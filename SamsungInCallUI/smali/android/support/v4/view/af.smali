.class public final Landroid/support/v4/view/af;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/af$b;,
        Landroid/support/v4/view/af$a;,
        Landroid/support/v4/view/af$c;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/af$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/af$b;

    invoke-direct {v0}, Landroid/support/v4/view/af$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/af$c;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/af$a;

    invoke-direct {v0}, Landroid/support/v4/view/af$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/af$c;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/af$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/af$c;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/af$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/af$c;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
