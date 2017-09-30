.class public Landroid/support/v7/widget/u;
.super Landroid/widget/SeekBar;


# instance fields
.field private a:Landroid/support/v7/widget/v;

.field private b:Landroid/support/v7/widget/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/a/a$a;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Landroid/support/v7/widget/k;->a()Landroid/support/v7/widget/k;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/widget/k;

    new-instance v0, Landroid/support/v7/widget/v;

    iget-object v1, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/widget/k;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/v;-><init>(Landroid/widget/SeekBar;Landroid/support/v7/widget/k;)V

    iput-object v0, p0, Landroid/support/v7/widget/u;->a:Landroid/support/v7/widget/v;

    iget-object v0, p0, Landroid/support/v7/widget/u;->a:Landroid/support/v7/widget/v;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/v;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/SeekBar;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v7/widget/u;->a:Landroid/support/v7/widget/v;

    invoke-virtual {v0}, Landroid/support/v7/widget/v;->c()V

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/SeekBar;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/support/v7/widget/u;->a:Landroid/support/v7/widget/v;

    invoke-virtual {v0}, Landroid/support/v7/widget/v;->b()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/u;->a:Landroid/support/v7/widget/v;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/v;->a(Landroid/graphics/Canvas;)V

    return-void
.end method
