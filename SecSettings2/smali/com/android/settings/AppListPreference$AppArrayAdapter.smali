.class public Lcom/android/settings/AppListPreference$AppArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageDrawables:[Landroid/graphics/drawable/Drawable;

.field private mSelectedIndex:I

.field final synthetic this$0:Lcom/android/settings/AppListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    iput p6, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    iput-object p5, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v8, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference$AppArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v7, 0x7f04003c

    invoke-virtual {v2, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f110154

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference$AppArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v7, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    if-ne p1, v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-static {v7}, Lcom/android/settings/AppListPreference;->-get2(Lcom/android/settings/AppListPreference;)I

    move-result v7

    if-ne p1, v7, :cond_3

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    :goto_0
    const v7, 0x1020006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, p1

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, p1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v7, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-static {v7}, Lcom/android/settings/AppListPreference;->-get1(Lcom/android/settings/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-static {v7}, Lcom/android/settings/AppListPreference;->-get1(Lcom/android/settings/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, p1

    if-nez v7, :cond_6

    :cond_1
    :goto_2
    invoke-virtual {v6, v0}, Landroid/view/View;->setEnabled(Z)V

    if-nez v0, :cond_2

    const v7, 0x1020010

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-static {v7}, Lcom/android/settings/AppListPreference;->-get1(Lcom/android/settings/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, p1

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-object v6

    :cond_3
    iget v7, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    if-ne p1, v7, :cond_4

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-static {v7}, Lcom/android/settings/AppListPreference;->-get0(Lcom/android/settings/AppListPreference;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_0

    iget-object v7, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    const-string/jumbo v9, ""

    invoke-virtual {v7, v9}, Lcom/android/settings/AppListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v7

    if-ne p1, v7, :cond_0

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_5
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    move v0, v8

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-static {v1}, Lcom/android/settings/AppListPreference;->-get1(Lcom/android/settings/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-static {v1}, Lcom/android/settings/AppListPreference;->-get1(Lcom/android/settings/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
