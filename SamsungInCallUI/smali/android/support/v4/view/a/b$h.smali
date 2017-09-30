.class Landroid/support/v4/view/a/b$h;
.super Landroid/support/v4/view/a/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/a/b$g;-><init>()V

    return-void
.end method


# virtual methods
.method public p(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/a/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
