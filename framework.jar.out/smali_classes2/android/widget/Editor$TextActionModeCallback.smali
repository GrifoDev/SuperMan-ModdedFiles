.class Landroid/widget/Editor$TextActionModeCallback;
.super Landroid/view/ActionMode$Callback2;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextActionModeCallback"
.end annotation


# instance fields
.field private mHandleHeight:I

.field private final mHasSelection:Z

.field private final mSelectionBounds:Landroid/graphics/RectF;

.field private final mSelectionPath:Landroid/graphics/Path;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Z)V
    .locals 4

    iput-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iput-boolean p2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    iget-boolean v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-get0(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-wrap0(Landroid/widget/Editor$SelectionModifierCursorController;)V

    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-wrap1(Landroid/widget/Editor$SelectionModifierCursorController;)V

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    :cond_0
    invoke-static {p1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-static {p1}, Landroid/widget/Editor;->-get9(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/widget/Editor$InsertionPointCursorController;->-wrap0(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    invoke-static {p1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    goto :goto_0
.end method

.method private getCustomCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method private populateMenuWithItems(Landroid/view/Menu;)V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x10202c0

    const v2, 0x10401d1

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a60

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :goto_0
    const v1, 0x1020020

    const v2, 0x1040003

    invoke-interface {p1, v4, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a63

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x78

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x2

    :goto_1
    const v1, 0x1020021

    const v2, 0x1040001

    invoke-interface {p1, v4, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a62

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x63

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x3

    :goto_2
    const v1, 0x1020022

    const v2, 0x104000b

    invoke-interface {p1, v4, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a68

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x76

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canShare()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_4
    const/4 v0, 0x7

    const v1, 0x1020035

    const v2, 0x1040972

    invoke-interface {p1, v4, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a6c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_5
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canClipboard()Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x102024a

    const/4 v2, 0x6

    const v3, 0x1040a60

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a5f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_6
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canRequestAutofill()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x1020043

    const v2, 0x10400dd

    invoke-interface {p1, v4, v1, v7, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_7
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canPasteAsPlainText()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x4

    :goto_3
    const v1, 0x1020031

    const v2, 0x1040019

    invoke-interface {p1, v4, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a69

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_8
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canWebSearch()Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x1020588

    const v2, 0x1040b15

    invoke-interface {p1, v4, v1, v7, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a6e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_9
    :goto_4
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canAssist()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateAssistMenuItem(Landroid/view/Menu;)V

    :cond_a
    return-void

    :cond_b
    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x5

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x6

    goto/16 :goto_2

    :cond_e
    const/16 v0, 0xb

    goto :goto_3

    :cond_f
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    goto :goto_4
.end method

.method private updateAssistMenuItem(Landroid/view/Menu;)V
    .locals 8

    const v6, 0x1020041

    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    iget-object v5, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    :cond_0
    if-nez v3, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v5, 0x0

    invoke-interface {p1, v6, v6, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v5, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v5

    new-instance v6, Landroid/metrics/LogMaker;

    const/16 v7, 0x3a8

    invoke-direct {v6, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/textclassifier/TextClassification;->getLogType()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_2
    return-void
.end method

.method private updateReplaceItem(Landroid/view/Menu;)V
    .locals 6

    const/4 v3, 0x0

    const v5, 0x1020034

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-wrap14(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    :goto_0
    xor-int/lit8 v0, v2, 0x1

    :goto_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :goto_2
    if-eqz v0, :cond_4

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_4

    const/16 v2, 0x9

    const v4, 0x1040898

    invoke-interface {p1, v3, v5, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_3
.end method

.method private updateSelectAllItem(Landroid/view/Menu;)V
    .locals 6

    const v5, 0x102001f

    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v0

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x5

    :goto_1
    if-eqz v0, :cond_3

    xor-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    const v4, 0x104000d

    invoke-interface {p1, v3, v5, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080a6b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_1

    :cond_3
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    const-string/jumbo v5, "CPMS"

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SelectionActionModeHelper;->onSelectionAction()V

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v4, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performMenuItemAction(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v7

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v7

    :cond_1
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v3

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x1020041

    if-ne v5, v4, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    :goto_0
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification;->getLogType()I

    move-result v5

    const/16 v6, 0x3a9

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->stopTextActionMode()V

    return v7

    :cond_3
    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/view/textclassifier/TextClassification;->createStartActivityOnClickListener(Landroid/content/Context;Landroid/content/Intent;)Landroid/view/View$OnClickListener;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v4

    return v4
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->populateMenuWithItems(Landroid/view/Menu;)V

    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-static {v1, v2}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    return v3

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canProcessText()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v1, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeMenu(Landroid/view/Menu;)V

    :cond_1
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v1

    if-gt v1, v2, :cond_3

    return v3

    :cond_3
    iget-boolean v1, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->hasTransientState()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHasTransientState(Z)V

    :cond_4
    return v2

    :cond_5
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SelectionActionModeHelper;->onDestroyActionMode()V

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1, v2}, Landroid/widget/Editor;->-set7(Landroid/widget/Editor;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-static {v1, v2}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->stopMagniferView()V

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v11

    if-nez v11, :cond_1

    :cond_0
    invoke-super/range {p0 .. p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1050346

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1050339

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    if-eq v11, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    invoke-virtual {v11, v12, v13, v14}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->top:F

    int-to-float v13, v5

    sub-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    add-int/2addr v13, v6

    int-to-float v13, v13

    add-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/RectF;->bottom:F

    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    int-to-float v12, v9

    add-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    int-to-float v13, v10

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    int-to-float v14, v9

    add-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    int-to-float v15, v10

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget v11, v11, Landroid/widget/Editor;->mCursorCount:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    iget v13, v2, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    iget v14, v2, Landroid/graphics/Rect;->right:I

    iget v15, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v14, v14

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    move/from16 v16, v0

    add-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    const/4 v13, 0x0

    invoke-static {v11, v13, v12}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I

    move-result v11

    int-to-float v7, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    sub-int/2addr v12, v5

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    iget v13, v13, Landroid/widget/TextView;->mCursorWidth:I

    int-to-float v13, v13

    add-float/2addr v13, v7

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v3, v14}, Landroid/text/Layout;->getLineTop(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    add-int/2addr v14, v15

    add-int/2addr v14, v6

    int-to-float v14, v14

    invoke-virtual {v11, v7, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canAssist()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateAssistMenuItem(Landroid/view/Menu;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_2
    const/4 v1, 0x1

    return v1
.end method
