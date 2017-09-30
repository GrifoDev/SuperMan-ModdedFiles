.class Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileRow"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/list/ContactTileAdapter;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/list/ContactTileAdapter;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->b:I

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->b:I

    invoke-static {p1, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(Lcom/android/contacts/common/list/ContactTileAdapter;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->c:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setImportantForAccessibility(I)V

    return-void
.end method

.method private a()V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v4

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->b(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->e(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    move v1, v2

    move v3, v0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-static {p0}, Lcom/android/contacts/common/util/ViewUtil;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    sub-int v0, v4, v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v6, v3, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v3, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int v0, v3, v5

    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(I)V
    .locals 9

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v0, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->c:I

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->e(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v2

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->b(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int v2, v3, v0

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v5, v5, Lcom/android/contacts/common/list/ContactTileAdapter;->c:I

    div-int v5, v2, v5

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v2, v2, Lcom/android/contacts/common/list/ContactTileAdapter;->c:I

    mul-int/2addr v2, v5

    sub-int v2, v3, v2

    sub-int v6, v2, v0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v0

    if-ge v2, v6, :cond_1

    const/4 v0, 0x1

    :goto_2
    add-int/2addr v0, v8

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v0, v8}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method private a(Lcom/android/contacts/common/list/ContactEntry;IZ)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v0

    if-gt v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(Lcom/android/contacts/common/list/ContactTileAdapter;)Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->c:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactTileView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(Lcom/android/contacts/common/list/ContactTileAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->b(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->b(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactTileView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->c(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactTileView;->setPhotoManager(Lcom/android/contacts/common/ContactPhotoManager;)V

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->d(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/list/ContactTileView$Listener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactTileView;->setListener(Lcom/android/contacts/common/list/ContactTileView$Listener;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->addView(Landroid/view/View;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactTileView;->a(Lcom/android/contacts/common/list/ContactEntry;)V

    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->b:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactTileView;

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->e(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->e(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v1, v3, v1}, Lcom/android/contacts/common/list/ContactTileView;->setPaddingRelative(IIII)V

    goto :goto_1

    :pswitch_2
    if-eqz p3, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactTileView;->setHorizontalDividerVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;Z)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactEntry;

    :goto_2
    invoke-direct {p0, v0, v2, p2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a(Lcom/android/contacts/common/list/ContactEntry;IZ)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v0, v0, Lcom/android/contacts/common/list/ContactTileAdapter;->c:I

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
