.class Landroid/support/v7/widget/an$c;
.super Landroid/support/v7/widget/ag;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/an;

.field private final b:[I

.field private c:Landroid/support/v7/app/a$c;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/an;Landroid/content/Context;Landroid/support/v7/app/a$c;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/an$c;->a:Landroid/support/v7/widget/an;

    sget v0, Landroid/support/v7/a/a$a;->actionBarTabStyle:I

    invoke-direct {p0, p2, v3, v0}, Landroid/support/v7/widget/ag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100d4

    aput v1, v0, v2

    iput-object v0, p0, Landroid/support/v7/widget/an$c;->b:[I

    iput-object p3, p0, Landroid/support/v7/widget/an$c;->c:Landroid/support/v7/app/a$c;

    iget-object v0, p0, Landroid/support/v7/widget/an$c;->b:[I

    sget v1, Landroid/support/v7/a/a$a;->actionBarTabStyle:I

    invoke-static {p2, v3, v0, v1, v2}, Landroid/support/v7/widget/au;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/au;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/au;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/au;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/an$c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/au;->a()V

    if-eqz p4, :cond_1

    const v0, 0x800013

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/an$c;->setGravity(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/an$c;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    const/16 v9, 0x10

    const/16 v6, 0x8

    const/4 v8, -0x2

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/an$c;->c:Landroid/support/v7/app/a$c;

    invoke-virtual {v2}, Landroid/support/v7/app/a$c;->c()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/an$c;->addView(Landroid/view/View;)V

    :cond_1
    iput-object v3, p0, Landroid/support/v7/widget/an$c;->f:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/an$c;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/an$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/an$c;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/an$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/an$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/an$c;->f:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/an$c;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/an$c;->removeView(Landroid/view/View;)V

    iput-object v7, p0, Landroid/support/v7/widget/an$c;->f:Landroid/view/View;

    :cond_5
    invoke-virtual {v2}, Landroid/support/v7/app/a$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2}, Landroid/support/v7/app/a$c;->b()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v0, :cond_b

    iget-object v4, p0, Landroid/support/v7/widget/an$c;->e:Landroid/widget/ImageView;

    if-nez v4, :cond_6

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v7/widget/an$c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/support/v7/widget/ag$a;

    invoke-direct {v5, v8, v8}, Landroid/support/v7/widget/ag$a;-><init>(II)V

    iput v9, v5, Landroid/support/v7/widget/ag$a;->h:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4, v1}, Landroid/support/v7/widget/an$c;->addView(Landroid/view/View;I)V

    iput-object v4, p0, Landroid/support/v7/widget/an$c;->e:Landroid/widget/ImageView;

    :cond_6
    iget-object v4, p0, Landroid/support/v7/widget/an$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/an$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_d

    iget-object v4, p0, Landroid/support/v7/widget/an$c;->d:Landroid/widget/TextView;

    if-nez v4, :cond_8

    new-instance v4, Landroid/support/v7/widget/z;

    invoke-virtual {p0}, Landroid/support/v7/widget/an$c;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Landroid/support/v7/a/a$a;->actionBarTabTextStyle:I

    invoke-direct {v4, v5, v7, v6}, Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v5, Landroid/support/v7/widget/ag$a;

    invoke-direct {v5, v8, v8}, Landroid/support/v7/widget/ag$a;-><init>(II)V

    iput v9, v5, Landroid/support/v7/widget/ag$a;->h:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/an$c;->addView(Landroid/view/View;)V

    iput-object v4, p0, Landroid/support/v7/widget/an$c;->d:Landroid/widget/TextView;

    :cond_8
    iget-object v4, p0, Landroid/support/v7/widget/an$c;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/support/v7/widget/an$c;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/an$c;->e:Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/support/v7/widget/an$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/support/v7/app/a$c;->e()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    if-nez v0, :cond_e

    invoke-virtual {v2}, Landroid/support/v7/app/a$c;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p0}, Landroid/support/v7/widget/an$c;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/an$c;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/an$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/an$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_c
    move v0, v1

    goto :goto_2

    :cond_d
    iget-object v3, p0, Landroid/support/v7/widget/an$c;->d:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/an$c;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/widget/an$c;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_e
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/an$c;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/an$c;->setLongClickable(Z)V

    goto/16 :goto_0
.end method

.method public a(Landroid/support/v7/app/a$c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/an$c;->c:Landroid/support/v7/app/a$c;

    invoke-virtual {p0}, Landroid/support/v7/widget/an$c;->a()V

    return-void
.end method

.method public b()Landroid/support/v7/app/a$c;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/an$c;->c:Landroid/support/v7/app/a$c;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/ag;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v7/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/ag;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const-class v0, Landroid/support/v7/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/an$c;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/an$c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/widget/an$c;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/an$c;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Landroid/support/v7/widget/an$c;->c:Landroid/support/v7/app/a$c;

    invoke-virtual {v5}, Landroid/support/v7/app/a$c;->e()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/16 v5, 0x31

    aget v0, v0, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v5, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    return v0
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/ag;->onMeasure(II)V

    iget-object v0, p0, Landroid/support/v7/widget/an$c;->a:Landroid/support/v7/widget/an;

    iget v0, v0, Landroid/support/v7/widget/an;->b:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/an$c;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/an$c;->a:Landroid/support/v7/widget/an;

    iget v1, v1, Landroid/support/v7/widget/an;->b:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/an$c;->a:Landroid/support/v7/widget/an;

    iget v0, v0, Landroid/support/v7/widget/an;->b:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/support/v7/widget/ag;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/an$c;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/ag;->setSelected(Z)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/an$c;->sendAccessibilityEvent(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
