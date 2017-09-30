.class Landroid/support/v7/app/i;
.super Landroid/support/v7/app/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/i$a;
    }
.end annotation


# static fields
.field private static q:Landroid/support/v7/app/o;


# instance fields
.field private r:I

.field private s:Z

.field private t:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/d;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/h;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/d;)V

    const/16 v0, -0x64

    iput v0, p0, Landroid/support/v7/app/i;->r:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/i;->t:Z

    return-void
.end method

.method private e(I)Z
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v0, 0x30

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 v0, 0x20

    :goto_0
    if-eq v3, v0, :cond_1

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget v2, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    or-int/2addr v0, v2

    iput v0, v3, Landroid/content/res/Configuration;->uiMode:I

    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private q()Landroid/support/v7/app/o;
    .locals 2

    sget-object v0, Landroid/support/v7/app/i;->q:Landroid/support/v7/app/o;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/app/o;

    iget-object v1, p0, Landroid/support/v7/app/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/v7/app/i;->q:Landroid/support/v7/app/o;

    :cond_0
    sget-object v0, Landroid/support/v7/app/i;->q:Landroid/support/v7/app/o;

    return-object v0
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    new-instance v0, Landroid/support/v7/app/i$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/i$a;-><init>(Landroid/support/v7/app/i;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, -0x64

    invoke-super {p0, p1}, Landroid/support/v7/app/h;->a(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/app/i;->r:I

    if-ne v0, v1, :cond_0

    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/i;->r:I

    :cond_0
    return-void
.end method

.method d(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    move v0, p1

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/i;->q()Landroid/support/v7/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, -0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/i;->s:Z

    iget v0, p0, Landroid/support/v7/app/i;->r:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/support/v7/app/i;->e()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/app/i;->d(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v7/app/i;->e(I)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/app/i;->r:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/app/i;->t:Z

    return v0
.end method
