.class public Lcom/android/contacts/common/list/ContactListFilterView;
.super Landroid/widget/LinearLayout;
.source "ContactListFilterView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountType:Landroid/widget/TextView;

.field private mAccountUserName:Landroid/widget/TextView;

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mIcon:Landroid/widget/ImageView;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSingleAccount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/list/ContactListFilterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactListFilterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private bindView(II)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const v1, 0x7f10003f

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f1000d4

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    const v1, 0x7f1000d5

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    const v1, 0x7f1000d6

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->isActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    const v2, 0x7f09047d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->generateContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    const v1, 0x7f090510

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_1

    :pswitch_2
    const v1, 0x7f020119

    const v2, 0x7f090511

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_1

    :pswitch_3
    const v1, 0x7f020118

    const v2, 0x7f090512

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_1

    :pswitch_4
    const v1, 0x7f090513

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_1

    :pswitch_5
    const v1, 0x7f090515

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_1

    :pswitch_6
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f0202ec

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method generateContentDescription()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f090435

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    const v1, 0x7f090436

    goto :goto_0
.end method

.method public getContactListFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setActivated(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->generateContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/contacts/common/list/ContactListFilterView;->TAG:Ljava/lang/String;

    const-string v1, "radio-button cannot be activated because it is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-void
.end method

.method public setSingleAccount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mSingleAccount:Z

    return-void
.end method
