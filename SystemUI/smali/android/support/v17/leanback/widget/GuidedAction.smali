.class public Landroid/support/v17/leanback/widget/GuidedAction;
.super Landroid/support/v17/leanback/widget/Action;
.source "GuidedAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidedAction$Builder;,
        Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
    }
.end annotation


# instance fields
.field mActionFlags:I

.field mCheckSetId:I

.field mDescriptionEditInputType:I

.field mDescriptionInputType:I

.field private mEditDescription:Ljava/lang/CharSequence;

.field mEditInputType:I

.field private mEditTitle:Ljava/lang/CharSequence;

.field mEditable:I

.field mInputType:I

.field mSubActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/Action;-><init>(J)V

    return-void
.end method

.method static final isPasswordVariant(I)Z
    .locals 3

    const/4 v1, 0x1

    and-int/lit16 v0, p0, 0xff0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_0

    const/16 v2, 0x90

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v2, 0xe0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setFlags(II)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    return-void
.end method


# virtual methods
.method public getCheckSetId()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mCheckSetId:I

    return v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getLabel2()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionEditInputType()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mDescriptionEditInputType:I

    return v0
.end method

.method public getDescriptionInputType()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mDescriptionInputType:I

    return v0
.end method

.method public getEditDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEditInputType()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditInputType:I

    return v0
.end method

.method public getEditTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mInputType:I

    return v0
.end method

.method public getSubActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mSubActions:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getLabel1()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasEditableActivatorView()Z
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditable:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMultilineDescription()Z
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubActions()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mSubActions:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextEditable()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditable:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditable:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public infoOnly()Z
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAutoSaveRestoreEnabled()Z
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDescriptionEditable()Z
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditable:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEditable()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditable:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusable()Z
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mActionFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final needAutoSaveDescription()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->isDescriptionEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescriptionEditInputType()I

    move-result v0

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isPasswordVariant(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final needAutoSaveTitle()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditInputType()I

    move-result v0

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isPasswordVariant(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->needAutoSaveTitle()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GuidedAction;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->needAutoSaveDescription()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GuidedAction;->setDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GuidedAction;->setChecked(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->needAutoSaveTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->needAutoSaveDescription()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/GuidedAction;->setFlags(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GuidedAction;->setLabel2(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEditDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setEditTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction;->mEditTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GuidedAction;->setLabel1(Ljava/lang/CharSequence;)V

    return-void
.end method
