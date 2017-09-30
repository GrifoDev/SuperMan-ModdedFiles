.class Landroid/support/v4/content/a/a$c;
.super Landroid/support/v4/content/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/content/a/a$b;-><init>(Landroid/support/v4/content/a/a$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/a/a$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/content/a/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/content/a/c;->a(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/res/Resources;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/content/a/c;->b(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public c(Landroid/content/res/Resources;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/content/a/c;->c(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method
