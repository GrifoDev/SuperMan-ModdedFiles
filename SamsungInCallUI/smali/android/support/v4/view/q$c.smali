.class Landroid/support/v4/view/q$c;
.super Landroid/support/v4/view/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/q$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/s;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/s;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
