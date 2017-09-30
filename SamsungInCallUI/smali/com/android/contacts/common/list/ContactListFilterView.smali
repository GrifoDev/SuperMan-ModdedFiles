.class public Lcom/android/contacts/common/list/ContactListFilterView;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/RadioButton;

.field private f:Lcom/android/contacts/common/list/ContactListFilter;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/list/ContactListFilterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactListFilterView;->a:Ljava/lang/String;

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

.method private a(II)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f100049

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->b:Landroid/widget/ImageView;

    const v0, 0x7f100107

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->c:Landroid/widget/TextView;

    const v0, 0x7f100108

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->d:Landroid/widget/TextView;

    const v0, 0x7f100109

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->e:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->e:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->f:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->c:Landroid/widget/TextView;

    const v1, 0x7f090533

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->f:Lcom/android/contacts/common/list/ContactListFilter;

    iget v0, v0, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0905ca

    invoke-direct {p0, v2, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->a(II)V

    goto :goto_1

    :pswitch_2
    const v0, 0x7f020182

    const v1, 0x7f0905cb

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->a(II)V

    goto :goto_1

    :pswitch_3
    const v0, 0x7f020181

    const v1, 0x7f0905cc

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListFilterView;->a(II)V

    goto :goto_1

    :pswitch_4
    const v0, 0x7f0905cd

    invoke-direct {p0, v2, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->a(II)V

    goto :goto_1

    :pswitch_5
    const v0, 0x7f0905cf

    invoke-direct {p0, v2, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->a(II)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->f:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListFilter;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->f:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->f:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListFilter;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->f:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterView;->f:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->b:Landroid/widget/ImageView;

    const v1, 0x7f02038b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

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

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method b()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0904e9

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const v0, 0x7f0904ea

    goto :goto_0
.end method

.method public getContactListFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->f:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public setActivated(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->e:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterView;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterView;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/contacts/common/list/ContactListFilterView;->a:Ljava/lang/String;

    const-string v1, "radio-button cannot be activated because it is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->f:Lcom/android/contacts/common/list/ContactListFilter;

    return-void
.end method

.method public setSingleAccount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListFilterView;->g:Z

    return-void
.end method
