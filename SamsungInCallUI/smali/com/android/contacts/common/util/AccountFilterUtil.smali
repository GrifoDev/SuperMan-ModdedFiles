.class public Lcom/android/contacts/common/util/AccountFilterUtil;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/util/AccountFilterUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/AccountFilterUtil;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Fragment;ILcom/android/contacts/common/list/ContactListFilter;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/list/AccountFilterActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "currentFilter"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/contacts/common/util/AccountFilterUtil;->a:Ljava/lang/String;

    const-string v1, "getActivity() returned null. Ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lcom/android/contacts/common/list/ContactListFilterController;ILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string v0, "contactListFilter"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterController;->a()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListFilterController;->a(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/common/util/AccountFilterUtil;->a(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;ZZ)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;ZZ)Z
    .locals 8

    const v7, 0x7f0905c2

    const/4 v6, -0x2

    const/4 v5, -0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v0, 0x7f100087

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_8

    if-eqz p3, :cond_3

    iget v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    if-ne v4, v6, :cond_0

    if-eqz p2, :cond_9

    const v2, 0x7f0905cd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    if-nez v4, :cond_1

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/contacts/common/list/ContactListFilter;->c:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v3, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    if-ne v3, v5, :cond_2

    const v2, 0x7f0905c3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/contacts/common/util/AccountFilterUtil;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter type \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" isn\'t expected."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_3
    iget v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    if-ne v4, v6, :cond_4

    if-eqz p2, :cond_9

    const v2, 0x7f0905ca

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    move v0, v1

    goto :goto_0

    :cond_4
    iget v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    if-nez v4, :cond_5

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/contacts/common/list/ContactListFilter;->c:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v3, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :cond_5
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    if-ne v3, v5, :cond_6

    const v2, 0x7f0905c3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    move v0, v1

    goto :goto_0

    :cond_6
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    const/4 v4, -0x6

    if-ne v3, v4, :cond_7

    const v2, 0x7f0905c5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    move v0, v1

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/android/contacts/common/util/AccountFilterUtil;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter type \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" isn\'t expected."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/android/contacts/common/util/AccountFilterUtil;->a:Ljava/lang/String;

    const-string v1, "Filter is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v0, v2

    goto/16 :goto_0
.end method
