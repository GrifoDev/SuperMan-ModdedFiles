.class Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PaymentDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimListArrayAdapter"
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
.field ViewResourceID:I

.field otherSimIndex:I

.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->ViewResourceID:I

    iput v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->otherSimIndex:I

    invoke-static {p1, p5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-set1(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;I)I

    iput p3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->ViewResourceID:I

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->onUpdateAdapter()V

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const-string/jumbo v7, "nfc_sim_dropdown_list_view_row"

    const-string/jumbo v8, "layout"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const-string/jumbo v6, "nfc_sim_list_view_row_image_view"

    const-string/jumbo v7, "id"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, p1

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, p1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const-string/jumbo v6, "nfc_sim_list_view_radio_text_title"

    const-string/jumbo v7, "id"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-wrap0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getPhonePLMNName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setPLMNName(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getPhonePLMNName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setPLMNName(Ljava/lang/String;I)V

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const-string/jumbo v6, "nfc_sim_list_summary"

    const-string/jumbo v7, "id"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, p1

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-wrap0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Z

    move-result v5

    if-eqz v5, :cond_7

    rem-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get3()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v1, v5, v6

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get1(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)I

    move-result v5

    if-ne p1, v5, :cond_3

    move-object v5, v4

    check-cast v5, Landroid/widget/CheckedTextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    if-eqz v3, :cond_3

    move-object v5, v4

    check-cast v5, Landroid/widget/CheckedTextView;

    invoke-virtual {v5}, Landroid/widget/CheckedTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object v5, v3

    check-cast v5, Landroid/widget/CheckedTextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v5, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->chinaDisabled_offslot(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f1212aa

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_4
    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_5
    return-object v2

    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get3()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v1, v5, v6

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get3()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v1, v5, v6

    goto :goto_0

    :cond_8
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
