.class public Landroid/support/v7/app/p;
.super Landroid/support/v7/app/a;

# interfaces
.implements Landroid/support/v7/widget/ActionBarOverlayLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/p$a;
    }
.end annotation


# static fields
.field static final synthetic h:Z

.field private static final i:Landroid/view/animation/Interpolator;

.field private static final j:Landroid/view/animation/Interpolator;

.field private static final k:Z


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Landroid/support/v7/view/h;

.field private I:Z

.field a:Landroid/support/v7/app/p$a;

.field b:Landroid/support/v7/view/b;

.field c:Landroid/support/v7/view/b$a;

.field d:Z

.field final e:Landroid/support/v4/view/bc;

.field final f:Landroid/support/v4/view/bc;

.field final g:Landroid/support/v4/view/be;

.field private l:Landroid/content/Context;

.field private m:Landroid/content/Context;

.field private n:Landroid/app/Activity;

.field private o:Landroid/app/Dialog;

.field private p:Landroid/support/v7/widget/ActionBarOverlayLayout;

.field private q:Landroid/support/v7/widget/ActionBarContainer;

.field private r:Landroid/support/v7/widget/ab;

.field private s:Landroid/support/v7/widget/ActionBarContextView;

.field private t:Landroid/view/View;

.field private u:Landroid/support/v7/widget/an;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Landroid/support/v7/app/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v7/app/p;->h:Z

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/app/p;->i:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/app/p;->j:Landroid/view/animation/Interpolator;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Landroid/support/v7/app/p;->k:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/p;->v:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/p;->w:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/p;->z:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/p;->B:I

    iput-boolean v1, p0, Landroid/support/v7/app/p;->C:Z

    iput-boolean v1, p0, Landroid/support/v7/app/p;->G:Z

    new-instance v0, Landroid/support/v7/app/p$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/p$1;-><init>(Landroid/support/v7/app/p;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->e:Landroid/support/v4/view/bc;

    new-instance v0, Landroid/support/v7/app/p$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/p$2;-><init>(Landroid/support/v7/app/p;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->f:Landroid/support/v4/view/bc;

    new-instance v0, Landroid/support/v7/app/p$3;

    invoke-direct {v0, p0}, Landroid/support/v7/app/p$3;-><init>(Landroid/support/v7/app/p;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->g:Landroid/support/v4/view/be;

    iput-object p1, p0, Landroid/support/v7/app/p;->n:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/p;->a(Landroid/view/View;)V

    if-nez p2, :cond_0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/p;->t:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/p;->v:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/p;->w:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/p;->z:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/p;->B:I

    iput-boolean v1, p0, Landroid/support/v7/app/p;->C:Z

    iput-boolean v1, p0, Landroid/support/v7/app/p;->G:Z

    new-instance v0, Landroid/support/v7/app/p$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/p$1;-><init>(Landroid/support/v7/app/p;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->e:Landroid/support/v4/view/bc;

    new-instance v0, Landroid/support/v7/app/p$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/p$2;-><init>(Landroid/support/v7/app/p;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->f:Landroid/support/v4/view/bc;

    new-instance v0, Landroid/support/v7/app/p$3;

    invoke-direct {v0, p0}, Landroid/support/v7/app/p$3;-><init>(Landroid/support/v7/app/p;)V

    iput-object v0, p0, Landroid/support/v7/app/p;->g:Landroid/support/v4/view/be;

    iput-object p1, p0, Landroid/support/v7/app/p;->o:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/p;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/p;Landroid/support/v7/view/h;)Landroid/support/v7/view/h;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/p;->H:Landroid/support/v7/view/h;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget v0, Landroid/support/v7/a/a$f;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroid/support/v7/widget/ActionBarOverlayLayout$a;)V

    :cond_0
    sget v0, Landroid/support/v7/a/a$f;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/p;->b(Landroid/view/View;)Landroid/support/v7/widget/ab;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    sget v0, Landroid/support/v7/a/a$f;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/p;->s:Landroid/support/v7/widget/ActionBarContextView;

    sget v0, Landroid/support/v7/a/a$f;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/p;->s:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    invoke-interface {v0}, Landroid/support/v7/widget/ab;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/p;->l:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    invoke-interface {v0}, Landroid/support/v7/widget/ab;->o()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iput-boolean v2, p0, Landroid/support/v7/app/p;->x:Z

    :cond_3
    iget-object v3, p0, Landroid/support/v7/app/p;->l:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v7/view/a;->a(Landroid/content/Context;)Landroid/support/v7/view/a;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/view/a;->f()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_8

    :cond_4
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/app/p;->a(Z)V

    invoke-virtual {v3}, Landroid/support/v7/view/a;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/p;->k(Z)V

    iget-object v0, p0, Landroid/support/v7/app/p;->l:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Landroid/support/v7/a/a$j;->ActionBar:[I

    sget v5, Landroid/support/v7/a/a$a;->actionBarStyle:I

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v3, Landroid/support/v7/a/a$j;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Landroid/support/v7/app/p;->b(Z)V

    :cond_5
    sget v2, Landroid/support/v7/a/a$j;->ActionBar_elevation:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-eqz v1, :cond_6

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/p;->a(F)V

    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/app/p;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/app/p;->C:Z

    return v0
.end method

.method static synthetic a(ZZZ)Z
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/support/v7/app/p;->b(ZZZ)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/view/View;)Landroid/support/v7/widget/ab;
    .locals 3

    instance-of v0, p1, Landroid/support/v7/widget/ab;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/ab;

    :goto_0
    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/widget/ab;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "null"

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v7/app/p;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/p;->t:Landroid/view/View;

    return-object v0
.end method

.method private static b(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/app/p;)Landroid/support/v7/widget/ActionBarContainer;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/app/p;)Landroid/support/v7/widget/ActionBarOverlayLayout;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/app/p;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/app/p;->D:Z

    return v0
.end method

.method static synthetic f(Landroid/support/v7/app/p;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/app/p;->E:Z

    return v0
.end method

.method static synthetic g(Landroid/support/v7/app/p;)Landroid/support/v7/widget/ActionBarContextView;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/p;->s:Landroid/support/v7/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/app/p;)Landroid/support/v7/widget/ab;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v7/app/p;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/p;->l:Landroid/content/Context;

    return-object v0
.end method

.method private j()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v7/app/p;->F:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/support/v7/app/p;->F:Z

    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/p;->l(Z)V

    :cond_1
    return-void
.end method

.method private k()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v7/app/p;->F:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroid/support/v7/app/p;->F:Z

    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v7/app/p;->l(Z)V

    :cond_1
    return-void
.end method

.method private k(Z)V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean p1, p0, Landroid/support/v7/app/p;->A:Z

    iget-boolean v0, p0, Landroid/support/v7/app/p;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    invoke-interface {v0, v3}, Landroid/support/v7/widget/ab;->a(Landroid/support/v7/widget/an;)V

    iget-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v3, p0, Landroid/support/v7/app/p;->u:Landroid/support/v7/widget/an;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/an;)V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/app/p;->e()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Landroid/support/v7/app/p;->u:Landroid/support/v7/widget/an;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/app/p;->u:Landroid/support/v7/widget/an;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/an;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v4/view/ah;->n(Landroid/view/View;)V

    :cond_0
    :goto_2
    iget-object v4, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    iget-boolean v3, p0, Landroid/support/v7/app/p;->A:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Landroid/support/v7/widget/ab;->a(Z)V

    iget-object v3, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Landroid/support/v7/app/p;->A:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/an;)V

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    iget-object v3, p0, Landroid/support/v7/app/p;->u:Landroid/support/v7/widget/an;

    invoke-interface {v0, v3}, Landroid/support/v7/widget/ab;->a(Landroid/support/v7/widget/an;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/support/v7/app/p;->u:Landroid/support/v7/widget/an;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/an;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method private l(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/app/p;->D:Z

    iget-boolean v1, p0, Landroid/support/v7/app/p;->E:Z

    iget-boolean v2, p0, Landroid/support/v7/app/p;->F:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/app/p;->b(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/app/p;->G:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/p;->G:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/app/p;->h(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/app/p;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/p;->G:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/app/p;->i(Z)V

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ah;->u(Landroid/view/View;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/p;->m:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroid/support/v7/app/p;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$a;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_1

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/app/p;->l:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/app/p;->m:Landroid/content/Context;

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/p;->m:Landroid/content/Context;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/p;->l:Landroid/content/Context;

    iput-object v0, p0, Landroid/support/v7/app/p;->m:Landroid/content/Context;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/app/p;->a:Landroid/support/v7/app/p$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->a:Landroid/support/v7/app/p$a;

    invoke-virtual {v0}, Landroid/support/v7/app/p$a;->c()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/app/p;->s:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->c()V

    new-instance v0, Landroid/support/v7/app/p$a;

    iget-object v1, p0, Landroid/support/v7/app/p;->s:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v7/app/p$a;-><init>(Landroid/support/v7/app/p;Landroid/content/Context;Landroid/support/v7/view/b$a;)V

    invoke-virtual {v0}, Landroid/support/v7/app/p$a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Landroid/support/v7/app/p;->a:Landroid/support/v7/app/p$a;

    invoke-virtual {v0}, Landroid/support/v7/app/p$a;->d()V

    iget-object v1, p0, Landroid/support/v7/app/p;->s:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionBarContextView;->a(Landroid/support/v7/view/b;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/p;->j(Z)V

    iget-object v1, p0, Landroid/support/v7/app/p;->s:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroid/support/v4/view/ah;->c(Landroid/view/View;F)V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/app/p;->B:I

    return-void
.end method

.method public a(II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    invoke-interface {v0}, Landroid/support/v7/widget/ab;->o()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/p;->x:Z

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ab;->c(I)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ab;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ab;->b(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/app/p;->d:Z

    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/app/p;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/p;->f(Z)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    invoke-interface {v0}, Landroid/support/v7/widget/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    invoke-interface {v0}, Landroid/support/v7/widget/ab;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/p;->c:Landroid/support/v7/view/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->c:Landroid/support/v7/view/b$a;

    iget-object v1, p0, Landroid/support/v7/app/p;->b:Landroid/support/v7/view/b;

    invoke-interface {v0, v1}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;)V

    iput-object v2, p0, Landroid/support/v7/app/p;->b:Landroid/support/v7/view/b;

    iput-object v2, p0, Landroid/support/v7/app/p;->c:Landroid/support/v7/view/b$a;

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/support/v7/app/p;->I:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->H:Landroid/support/v7/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->H:Landroid/support/v7/view/h;

    invoke-virtual {v0}, Landroid/support/v7/view/h;->b()V

    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    invoke-interface {v0}, Landroid/support/v7/widget/ab;->p()I

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/app/p;->y:Z

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/app/p;->y:Z

    iget-object v0, p0, Landroid/support/v7/app/p;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/a$b;

    invoke-interface {v0, p1}, Landroid/support/v7/app/a$b;->a(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/app/p;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/p;->E:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/app/p;->l(Z)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 2

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/p;->a(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v7/app/p;->E:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v7/app/p;->E:Z

    invoke-direct {p0, v1}, Landroid/support/v7/app/p;->l(Z)V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/app/p;->C:Z

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/p;->H:Landroid/support/v7/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->H:Landroid/support/v7/view/h;

    invoke-virtual {v0}, Landroid/support/v7/view/h;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/p;->H:Landroid/support/v7/view/h;

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v7/app/p;->H:Landroid/support/v7/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->H:Landroid/support/v7/view/h;

    invoke-virtual {v0}, Landroid/support/v7/view/h;->b()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Landroid/support/v7/app/p;->B:I

    if-nez v0, :cond_5

    sget-boolean v0, Landroid/support/v7/app/p;->k:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/support/v7/app/p;->I:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_5

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ah;->a(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionBarContainer;->getLocationInWindow([I)V

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v1, v0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;F)V

    new-instance v1, Landroid/support/v7/view/h;

    invoke-direct {v1}, Landroid/support/v7/view/h;-><init>()V

    iget-object v2, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/ah;->k(Landroid/view/View;)Landroid/support/v4/view/ay;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ay;->b(F)Landroid/support/v4/view/ay;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/p;->g:Landroid/support/v4/view/be;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ay;->a(Landroid/support/v4/view/be;)Landroid/support/v4/view/ay;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/h;->a(Landroid/support/v4/view/ay;)Landroid/support/v7/view/h;

    iget-boolean v2, p0, Landroid/support/v7/app/p;->C:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/app/p;->t:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/app/p;->t:Landroid/view/View;

    invoke-static {v2, v0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/app/p;->t:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ah;->k(Landroid/view/View;)Landroid/support/v4/view/ay;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ay;->b(F)Landroid/support/v4/view/ay;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/view/h;->a(Landroid/support/v4/view/ay;)Landroid/support/v7/view/h;

    :cond_3
    sget-object v0, Landroid/support/v7/app/p;->j:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/h;->a(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/h;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/view/h;->a(J)Landroid/support/v7/view/h;

    iget-object v0, p0, Landroid/support/v7/app/p;->f:Landroid/support/v4/view/bc;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/h;->a(Landroid/support/v4/view/bc;)Landroid/support/v7/view/h;

    iput-object v1, p0, Landroid/support/v7/app/p;->H:Landroid/support/v7/view/h;

    invoke-virtual {v1}, Landroid/support/v7/view/h;->a()V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/p;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/ah;->n(Landroid/view/View;)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ah;->a(Landroid/view/View;F)V

    iget-boolean v0, p0, Landroid/support/v7/app/p;->C:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/app/p;->t:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/app/p;->t:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ah;->a(Landroid/view/View;F)V

    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/p;->f:Landroid/support/v4/view/bc;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/bc;->b(Landroid/view/View;)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public i(Z)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/support/v7/app/p;->H:Landroid/support/v7/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p;->H:Landroid/support/v7/view/h;

    invoke-virtual {v0}, Landroid/support/v7/view/h;->b()V

    :cond_0
    iget v0, p0, Landroid/support/v7/app/p;->B:I

    if-nez v0, :cond_4

    sget-boolean v0, Landroid/support/v7/app/p;->k:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/app/p;->I:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v1, Landroid/support/v7/view/h;

    invoke-direct {v1}, Landroid/support/v7/view/h;-><init>()V

    iget-object v0, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iget-object v3, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ActionBarContainer;->getLocationInWindow([I)V

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float/2addr v0, v2

    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/p;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/ah;->k(Landroid/view/View;)Landroid/support/v4/view/ay;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ay;->b(F)Landroid/support/v4/view/ay;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/p;->g:Landroid/support/v4/view/be;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ay;->a(Landroid/support/v4/view/be;)Landroid/support/v4/view/ay;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/h;->a(Landroid/support/v4/view/ay;)Landroid/support/v7/view/h;

    iget-boolean v2, p0, Landroid/support/v7/app/p;->C:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/app/p;->t:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/app/p;->t:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ah;->k(Landroid/view/View;)Landroid/support/v4/view/ay;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ay;->b(F)Landroid/support/v4/view/ay;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/view/h;->a(Landroid/support/v4/view/ay;)Landroid/support/v7/view/h;

    :cond_3
    sget-object v0, Landroid/support/v7/app/p;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/h;->a(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/h;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/view/h;->a(J)Landroid/support/v7/view/h;

    iget-object v0, p0, Landroid/support/v7/app/p;->e:Landroid/support/v4/view/bc;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/h;->a(Landroid/support/v4/view/bc;)Landroid/support/v7/view/h;

    iput-object v1, p0, Landroid/support/v7/app/p;->H:Landroid/support/v7/view/h;

    invoke-virtual {v1}, Landroid/support/v7/view/h;->a()V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/p;->e:Landroid/support/v4/view/bc;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/bc;->b(Landroid/view/View;)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public j(Z)V
    .locals 8

    const-wide/16 v6, 0xc8

    const-wide/16 v4, 0x64

    const/16 v3, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/v7/app/p;->j()V

    :goto_0
    invoke-direct {p0}, Landroid/support/v7/app/p;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    invoke-interface {v0, v1, v4, v5}, Landroid/support/v7/widget/ab;->a(IJ)Landroid/support/v4/view/ay;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/p;->s:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1, v2, v6, v7}, Landroid/support/v7/widget/ActionBarContextView;->a(IJ)Landroid/support/v4/view/ay;

    move-result-object v1

    :goto_1
    new-instance v2, Landroid/support/v7/view/h;

    invoke-direct {v2}, Landroid/support/v7/view/h;-><init>()V

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/view/h;->a(Landroid/support/v4/view/ay;Landroid/support/v4/view/ay;)Landroid/support/v7/view/h;

    invoke-virtual {v2}, Landroid/support/v7/view/h;->a()V

    :goto_2
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/p;->k()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    invoke-interface {v0, v2, v6, v7}, Landroid/support/v7/widget/ab;->a(IJ)Landroid/support/v4/view/ay;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v7/app/p;->s:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v3, v4, v5}, Landroid/support/v7/widget/ActionBarContextView;->a(IJ)Landroid/support/v4/view/ay;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/ab;->d(I)V

    iget-object v0, p0, Landroid/support/v7/app/p;->s:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/p;->r:Landroid/support/v7/widget/ab;

    invoke-interface {v0, v2}, Landroid/support/v7/widget/ab;->d(I)V

    iget-object v0, p0, Landroid/support/v7/app/p;->s:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2
.end method
