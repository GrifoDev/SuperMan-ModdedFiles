.class Landroid/support/v7/view/g$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/view/g;

.field private b:Landroid/view/Menu;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:I

.field private o:C

.field private p:C

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Landroid/support/v4/view/d;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/g;Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/g$b;->a:Landroid/support/v7/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/view/g$b;->b:Landroid/view/Menu;

    invoke-virtual {p0}, Landroid/support/v7/view/g$b;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/view/g$b;)Landroid/support/v4/view/d;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/g$b;->z:Landroid/support/v4/view/d;

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/view/g$b;->a:Landroid/support/v7/view/g;

    invoke-static {v0}, Landroid/support/v7/view/g;->a(Landroid/support/v7/view/g;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SupportMenuInflater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot instantiate class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/MenuItem;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v7/view/g$b;->r:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroid/support/v7/view/g$b;->s:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroid/support/v7/view/g$b;->t:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Landroid/support/v7/view/g$b;->q:I

    if-lt v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/view/g$b;->m:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Landroid/support/v7/view/g$b;->n:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Landroid/support/v7/view/g$b;->o:C

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Landroid/support/v7/view/g$b;->p:C

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    iget v0, p0, Landroid/support/v7/view/g$b;->u:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/view/g$b;->u:I

    invoke-static {p1, v0}, Landroid/support/v4/view/q;->a(Landroid/view/MenuItem;I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/g$b;->y:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/view/g$b;->a:Landroid/support/v7/view/g;

    invoke-static {v0}, Landroid/support/v7/view/g;->a(Landroid/support/v7/view/g;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v7/view/g$a;

    iget-object v3, p0, Landroid/support/v7/view/g$b;->a:Landroid/support/v7/view/g;

    invoke-static {v3}, Landroid/support/v7/view/g;->c(Landroid/support/v7/view/g;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/view/g$b;->y:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/support/v7/view/g$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_3
    instance-of v0, p1, Landroid/support/v7/view/menu/j;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/j;

    :cond_4
    iget v0, p0, Landroid/support/v7/view/g$b;->q:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_5

    instance-of v0, p1, Landroid/support/v7/view/menu/j;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/j;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/j;->a(Z)V

    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/support/v7/view/g$b;->w:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/view/g$b;->w:Ljava/lang/String;

    invoke-static {}, Landroid/support/v7/view/g;->b()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/view/g$b;->a:Landroid/support/v7/view/g;

    invoke-static {v3}, Landroid/support/v7/view/g;->d(Landroid/support/v7/view/g;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Landroid/support/v7/view/g$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p1, v0}, Landroid/support/v4/view/q;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    :goto_2
    iget v0, p0, Landroid/support/v7/view/g$b;->v:I

    if-lez v0, :cond_6

    if-nez v1, :cond_9

    iget v0, p0, Landroid/support/v7/view/g$b;->v:I

    invoke-static {p1, v0}, Landroid/support/v4/view/q;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    :cond_6
    :goto_3
    iget-object v0, p0, Landroid/support/v7/view/g$b;->z:Landroid/support/v4/view/d;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/view/g$b;->z:Landroid/support/v4/view/d;

    invoke-static {p1, v0}, Landroid/support/v4/view/q;->a(Landroid/view/MenuItem;Landroid/support/v4/view/d;)Landroid/view/MenuItem;

    :cond_7
    return-void

    :cond_8
    instance-of v0, p1, Landroid/support/v7/view/menu/k;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/k;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/k;->a(Z)V

    goto :goto_1

    :cond_9
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/g$b;->c:I

    iput v0, p0, Landroid/support/v7/view/g$b;->d:I

    iput v0, p0, Landroid/support/v7/view/g$b;->e:I

    iput v0, p0, Landroid/support/v7/view/g$b;->f:I

    iput-boolean v1, p0, Landroid/support/v7/view/g$b;->g:Z

    iput-boolean v1, p0, Landroid/support/v7/view/g$b;->h:Z

    return-void
.end method

.method public a(Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/view/g$b;->a:Landroid/support/v7/view/g;

    invoke-static {v0}, Landroid/support/v7/view/g;->a(Landroid/support/v7/view/g;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/a/a$j;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->MenuGroup_android_id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/g$b;->c:I

    sget v1, Landroid/support/v7/a/a$j;->MenuGroup_android_menuCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/g$b;->d:I

    sget v1, Landroid/support/v7/a/a$j;->MenuGroup_android_orderInCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/g$b;->e:I

    sget v1, Landroid/support/v7/a/a$j;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/g$b;->f:I

    sget v1, Landroid/support/v7/a/a$j;->MenuGroup_android_visible:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/view/g$b;->g:Z

    sget v1, Landroid/support/v7/a/a$j;->MenuGroup_android_enabled:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/view/g$b;->h:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public b()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/g$b;->i:Z

    iget-object v0, p0, Landroid/support/v7/view/g$b;->b:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/view/g$b;->c:I

    iget v2, p0, Landroid/support/v7/view/g$b;->j:I

    iget v3, p0, Landroid/support/v7/view/g$b;->k:I

    iget-object v4, p0, Landroid/support/v7/view/g$b;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/g$b;->a(Landroid/view/MenuItem;)V

    return-void
.end method

.method public b(Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/view/g$b;->a:Landroid/support/v7/view/g;

    invoke-static {v0}, Landroid/support/v7/view/g;->a(Landroid/support/v7/view/g;)Landroid/content/Context;

    move-result-object v0

    sget-object v3, Landroid/support/v7/a/a$j;->MenuItem:[I

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_id:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/g$b;->j:I

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_menuCategory:I

    iget v4, p0, Landroid/support/v7/view/g$b;->d:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v4, Landroid/support/v7/a/a$j;->MenuItem_android_orderInCategory:I

    iget v5, p0, Landroid/support/v7/view/g$b;->e:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/high16 v5, -0x10000

    and-int/2addr v0, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    iput v0, p0, Landroid/support/v7/view/g$b;->k:I

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_title:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/g$b;->l:Ljava/lang/CharSequence;

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_titleCondensed:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/g$b;->m:Ljava/lang/CharSequence;

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_icon:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/g$b;->n:I

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_alphabeticShortcut:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/g$b;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/g$b;->o:C

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_numericShortcut:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/g$b;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/g$b;->p:C

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_checkable:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_checkable:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Landroid/support/v7/view/g$b;->q:I

    :goto_1
    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_checked:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/g$b;->r:Z

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_visible:I

    iget-boolean v4, p0, Landroid/support/v7/view/g$b;->g:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/g$b;->s:Z

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_enabled:I

    iget-boolean v4, p0, Landroid/support/v7/view/g$b;->h:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/g$b;->t:Z

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_showAsAction:I

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/g$b;->u:I

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_onClick:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/g$b;->y:Ljava/lang/String;

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_actionLayout:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/g$b;->v:I

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_actionViewClass:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/g$b;->w:Ljava/lang/String;

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_actionProviderClass:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/g$b;->x:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/view/g$b;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_2
    if-eqz v1, :cond_3

    iget v0, p0, Landroid/support/v7/view/g$b;->v:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/view/g$b;->w:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/view/g$b;->x:Ljava/lang/String;

    invoke-static {}, Landroid/support/v7/view/g;->a()[Ljava/lang/Class;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/view/g$b;->a:Landroid/support/v7/view/g;

    invoke-static {v4}, Landroid/support/v7/view/g;->b(Landroid/support/v7/view/g;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Landroid/support/v7/view/g$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/d;

    iput-object v0, p0, Landroid/support/v7/view/g$b;->z:Landroid/support/v4/view/d;

    :goto_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v2, p0, Landroid/support/v7/view/g$b;->i:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v7/view/g$b;->f:I

    iput v0, p0, Landroid/support/v7/view/g$b;->q:I

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/g$b;->z:Landroid/support/v4/view/d;

    goto :goto_3
.end method

.method public c()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/g$b;->i:Z

    iget-object v0, p0, Landroid/support/v7/view/g$b;->b:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/view/g$b;->c:I

    iget v2, p0, Landroid/support/v7/view/g$b;->j:I

    iget v3, p0, Landroid/support/v7/view/g$b;->k:I

    iget-object v4, p0, Landroid/support/v7/view/g$b;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/view/g$b;->a(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/view/g$b;->i:Z

    return v0
.end method
