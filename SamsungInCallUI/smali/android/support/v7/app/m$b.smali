.class final Landroid/support/v7/app/m$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/m;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/m;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/m$b;->a:Landroid/support/v7/app/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/m;Landroid/support/v7/app/m$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/app/m$b;-><init>(Landroid/support/v7/app/m;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/h;)V
    .locals 4

    const/16 v3, 0x6c

    iget-object v0, p0, Landroid/support/v7/app/m$b;->a:Landroid/support/v7/app/m;

    invoke-static {v0}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/m$b;->a:Landroid/support/v7/app/m;

    invoke-static {v0}, Landroid/support/v7/app/m;->b(Landroid/support/v7/app/m;)Landroid/support/v7/widget/ab;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/widget/ab;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/m$b;->a:Landroid/support/v7/app/m;

    invoke-static {v0}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/m$b;->a:Landroid/support/v7/app/m;

    invoke-static {v0}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/m$b;->a:Landroid/support/v7/app/m;

    invoke-static {v0}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
