.class public Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IrisPreveiwStyleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final irisPreviewImages:[I

.field mCheckViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/LinearLayout;

.field mStyleNum:I

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mCheckViews:Ljava/util/ArrayList;

    const v0, 0x7f0202bb

    const v1, 0x7f0202bc

    const v2, 0x7f0202bd

    const v3, 0x7f0202be

    const v4, 0x7f0202bf

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->irisPreviewImages:[I

    return-void
.end method

.method private startAnimation()Landroid/view/View;
    .locals 15

    const v14, 0x7f050021

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    const v0, 0x7f040138

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    const v0, 0x7f1103eb

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v0, 0x7f1103ec

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v0, 0x7f1103e8

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v0, 0x7f1103e9

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v0, 0x7f1103ea

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v14}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f050023

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v14}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f050022

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v14}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    new-instance v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;-><init>(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;Landroid/view/animation/Animation;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/animation/Animation;Landroid/widget/ImageView;Landroid/view/animation/Animation;Landroid/widget/ImageView;Landroid/view/animation/Animation;Landroid/widget/ImageView;Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v13
.end method

.method private viewInit()V
    .locals 12

    const v11, 0x7f1103ed

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v6, "IrisPreveiwStyleFragment"

    const-string/jumbo v7, "viewInit"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "iris_preview_style"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mView:Landroid/view/View;

    const v7, 0x7f110402

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mListView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->startAnimation()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    if-nez v6, :cond_0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mCheckViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->irisPreviewImages:[I

    array-length v6, v6

    if-gt v2, v6, :cond_2

    const v6, 0x7f04013f

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f110401

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->irisPreviewImages:[I

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusable(Z)V

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    if-ne v6, v2, :cond_1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mCheckViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mCheckViews:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mCheckViews:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v3, 0x7f1103ed

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "iris_preview_style"

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mCheckViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040140

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->viewInit()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mCheckViews:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v3, 0x7f1103ed

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
