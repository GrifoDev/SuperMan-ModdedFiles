.class public Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RestrictedListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/RestrictedListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestrictedArrayAdapter"
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
.field private final mSelectedIndex:I

.field final synthetic this$0:Lcom/samsung/android/settings/RestrictedListPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/RestrictedListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    const v0, 0x7f04023b

    const v1, 0x7f1105e2

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput p4, p0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->mSelectedIndex:I

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const v6, 0x7f1105e2

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    const v6, 0x7f1105e3

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->this$0:Lcom/samsung/android/settings/RestrictedListPreference;

    invoke-virtual {v6, v0}, Lcom/samsung/android/settings/RestrictedListPreference;->isRestrictedForEntry(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-object v2

    :cond_0
    iget v6, p0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->mSelectedIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->mSelectedIndex:I

    if-ne p1, v6, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_2
    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v5}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
