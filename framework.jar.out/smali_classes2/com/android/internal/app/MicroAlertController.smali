.class public Lcom/android/internal/app/MicroAlertController;
.super Lcom/android/internal/app/AlertController;
.source "MicroAlertController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-void
.end method


# virtual methods
.method protected setupButtons(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected setupContent(Landroid/view/ViewGroup;)V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, -0x1

    iget-object v6, p0, Lcom/android/internal/app/MicroAlertController;->mWindow:Landroid/view/Window;

    const v7, 0x1020451

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/android/internal/app/MicroAlertController;->mScrollView:Landroid/widget/ScrollView;

    const v6, 0x102000b

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/app/MicroAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/app/MicroAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/internal/app/MicroAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/app/MicroAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/app/MicroAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/internal/app/MicroAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/internal/app/MicroAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/internal/app/MicroAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/app/MicroAlertController;->mScrollView:Landroid/widget/ScrollView;

    const v7, 0x102053b

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x30

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/internal/app/MicroAlertController;->mScrollView:Landroid/widget/ScrollView;

    const v7, 0x1020224

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x50

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/internal/app/MicroAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/internal/app/MicroAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v6, p0, Lcom/android/internal/app/MicroAlertController;->mListView:Landroid/widget/ListView;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setupTitle(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
