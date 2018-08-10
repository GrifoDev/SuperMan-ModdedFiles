.class Landroid/app/assist/AssistStructure$ViewNodeBuilder;
.super Landroid/view/ViewStructure;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewNodeBuilder"
.end annotation


# instance fields
.field final mAssist:Landroid/app/assist/AssistStructure;

.field final mAsync:Z

.field final mNode:Landroid/app/assist/AssistStructure$ViewNode;


# direct methods
.method constructor <init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewStructure;-><init>()V

    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    iput-object p2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-boolean p3, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAsync:Z

    return-void
.end method

.method private final getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;
    .locals 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v1, Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-direct {v1}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>()V

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    return-object v0
.end method


# virtual methods
.method public addChildCount(I)I
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v2, v2, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->setChildCount(I)V

    return v3

    :cond_0
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v2, v2, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    array-length v1, v2

    add-int v2, v1, p1

    new-array v0, v2, [Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v2, v2, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v0, v2, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    return v1
.end method

.method public asyncCommit()V
    .locals 4

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAsync:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was not created with ViewStructure.asyncNewChild"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    iget-object v0, v0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already committed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public asyncNewChild(I)Landroid/view/ViewStructure;
    .locals 5

    iget-object v3, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    monitor-enter v3

    :try_start_0
    new-instance v1, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v1}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v2, v2, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aput-object v1, v2, p1

    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v1, v4}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    iget-object v2, v2, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getAutofillId()Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getTempRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    iget-object v0, v0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    :cond_0
    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTextSelectionStart()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public hasExtras()Z
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newChild(I)Landroid/view/ViewStructure;
    .locals 4

    new-instance v0, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aput-object v0, v1, p1

    new-instance v1, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    return-object v1
.end method

.method public newHtmlInfoBuilder(Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;
    .locals 1

    new-instance v0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;

    invoke-direct {v0, p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setAccessibilityFocused(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x1001

    if-eqz p1, :cond_0

    const/16 v0, 0x1000

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActivated(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x2001

    if-eqz p1, :cond_0

    const/16 v0, 0x2000

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return-void
.end method

.method public setAssistBlocked(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x81

    if-eqz p1, :cond_0

    const/16 v0, 0x80

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutofillHints([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    return-void
.end method

.method public setAutofillId(Landroid/view/autofill/AutofillId;)V
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-void
.end method

.method public setAutofillId(Landroid/view/autofill/AutofillId;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v1, Landroid/view/autofill/AutofillId;

    invoke-direct {v1, p1, p2}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;I)V

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-void
.end method

.method public setAutofillOptions([Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setAutofillType(I)V
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    return-void
.end method

.method public setAutofillValue(Landroid/view/autofill/AutofillValue;)V
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    return-void
.end method

.method public setCheckable(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x101

    if-eqz p1, :cond_0

    const/16 v0, 0x100

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x201

    if-eqz p1, :cond_0

    const/16 v0, 0x200

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChildCount(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    new-array v1, p1, [Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    return-void
.end method

.method public setClickable(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x401

    if-eqz p1, :cond_0

    const/16 v0, 0x400

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setContextClickable(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x4001

    if-eqz p1, :cond_0

    const/16 v0, 0x4000

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataIsSensitive(Z)V
    .locals 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    return-void
.end method

.method public setDimens(IIIIII)V
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p3, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p4, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v2, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v2, v0, -0x11

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocused(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v2, v0, -0x21

    if-eqz p1, :cond_0

    const/16 v0, 0x20

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, v1, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    return-void
.end method

.method public setHtmlInfo(Landroid/view/ViewStructure$HtmlInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    return-void
.end method

.method public setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p3, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p4, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    return-void
.end method

.method public setLocaleList(Landroid/os/LocaleList;)V
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x801

    if-eqz p1, :cond_0

    const/16 v0, 0x800

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpaque(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v2, -0x8001

    and-int/2addr v2, v0

    if-eqz p1, :cond_0

    const v0, 0x8000

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v2, v0, -0x41

    if-eqz p1, :cond_0

    const/16 v0, 0x40

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    iput v2, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    iput v2, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;II)V
    .locals 2

    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    iput p2, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    iput p3, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    return-void
.end method

.method public setTextLines([I[I)V
    .locals 1

    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    move-result-object v0

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    iput-object p2, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    return-void
.end method

.method public setTextStyle(FIII)V
    .locals 1

    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    move-result-object v0

    iput p2, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    iput p3, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    iput p4, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    return-void
.end method

.method public setTransformation(Landroid/graphics/Matrix;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, -0xd

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    return-void
.end method

.method public setWebDomain(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    return-void
.end method
