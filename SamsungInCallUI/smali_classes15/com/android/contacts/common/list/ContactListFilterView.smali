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

    .prologue
    .line 38
    const-class v0, Lcom/android/contacts/common/list/ContactListFilterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactListFilterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method private bindView(II)V
    .locals 2
    .param p1, "iconResource"    # I
    .param p2, "textResource"    # I

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 148
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 4
    .param p1, "accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 87
    const v1, 0x7f10003f

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    .line 88
    const v1, 0x7f1000d4

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f1000d5

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f1000d6

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    .line 91
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->isActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    const v2, 0x7f090476

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v1, :pswitch_data_0

    .line 136
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->generateContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :pswitch_1
    const v1, 0x7f090509

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_1

    .line 106
    :pswitch_2
    const v1, 0x7f02010f

    const v2, 0x7f09050a

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_1

    .line 110
    :pswitch_3
    const v1, 0x7f02010e

    const v2, 0x7f09050b

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_1

    .line 114
    :pswitch_4
    const v1, 0x7f09050c

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_1

    .line 118
    :pswitch_5
    const v1, 0x7f09050e

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(II)V

    goto :goto_1

    .line 122
    :pswitch_6
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :goto_2
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    .line 130
    invoke-virtual {p1, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 131
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 127
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f0202da

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 100
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

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 157
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f09042e

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 161
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    const v1, 0x7f09042f

    goto :goto_0
.end method

.method public getContactListFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->generateContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 79
    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/android/contacts/common/list/ContactListFilterView;->TAG:Ljava/lang/String;

    const-string v1, "radio-button cannot be activated because it is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 57
    return-void
.end method

.method public setSingleAccount(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->mSingleAccount:Z

    .line 65
    return-void
.end method
