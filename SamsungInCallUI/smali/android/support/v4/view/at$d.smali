.class Landroid/support/v4/view/at$d;
.super Landroid/support/v4/view/at$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/at$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/ViewConfiguration;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/av;->a(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method
