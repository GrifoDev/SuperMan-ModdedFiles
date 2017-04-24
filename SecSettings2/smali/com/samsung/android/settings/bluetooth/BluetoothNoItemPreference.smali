.class public Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;
.super Landroid/preference/Preference;
.source "BluetoothNoItemPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDividerHeight:I

.field private mIsScanDialog:Z

.field private mMainText:Ljava/lang/String;

.field private mSecondaryText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mIsScanDialog:Z

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mDividerHeight:I

    const v0, 0x7f0401cf

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->setLayoutResource(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mIsScanDialog:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    const/4 v9, 0x0

    if-nez p1, :cond_2

    new-instance v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;

    invoke-direct {v9}, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v10, 0x7f0401cf

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v10, 0x7f110542

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->bodyLayout:Landroid/widget/LinearLayout;

    const v10, 0x7f110543

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->mainTextView:Landroid/widget/TextView;

    const v10, 0x7f110544

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->secondaryTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->secondaryTextView:Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    iget-boolean v10, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mIsScanDialog:Z

    if-eqz v10, :cond_1

    const-string/jumbo v10, "BluetoothNoItemPreference"

    const-string/jumbo v11, "getView :: set scandialog linearlayout params"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a022d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v10, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a022e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v10, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a022f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->secondaryTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v5, v6, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    iget-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v0, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    iget-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->secondaryTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->mainTextView:Landroid/widget/TextView;

    const v11, 0x7f0f01d8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->secondaryTextView:Landroid/widget/TextView;

    const v11, 0x7f0f01d9

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_1
    invoke-virtual {p1, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    if-eqz v9, :cond_5

    iget-object v10, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mMainText:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->mainTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mMainText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->mainTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mSecondaryText:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->secondaryTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mSecondaryText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->secondaryTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v1, v10, :cond_6

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int v10, v3, v10

    iget v11, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mDividerHeight:I

    sub-int v3, v10, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;

    goto :goto_0

    :cond_3
    iget-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->mainTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v10, v9, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference$ViewHolder;->secondaryTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const-string/jumbo v10, "BluetoothNoItemPreference"

    const-string/jumbo v11, "getView :: viewHolder is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string/jumbo v10, "BluetoothNoItemPreference"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getView :: Child Count : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Parent height : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mHeight : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mIsScanDialog : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mIsScanDialog:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v3}, Landroid/view/View;->setMinimumHeight(I)V

    return-object v8
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, -0x1

    const-string/jumbo v2, "BluetoothNoItemPreference"

    const-string/jumbo v3, "onCreateView ::"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, v0}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public setMainText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mMainText:Ljava/lang/String;

    return-void
.end method
