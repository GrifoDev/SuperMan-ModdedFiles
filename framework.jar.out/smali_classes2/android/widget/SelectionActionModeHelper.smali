.class final Landroid/widget/SelectionActionModeHelper;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SelectionActionModeHelper$SelectionResult;,
        Landroid/widget/SelectionActionModeHelper$SelectionTracker;,
        Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;,
        Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;
    }
.end annotation


# static fields
.field private static final TIMEOUT_DURATION:I = 0xc8


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private final mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

.field private mTextClassification:Landroid/view/textclassifier/TextClassification;

.field private mTextClassificationAsyncTask:Landroid/os/AsyncTask;

.field private final mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;


# direct methods
.method static synthetic -android_widget_SelectionActionModeHelper-mthref-0(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->suggestSelection()Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -android_widget_SelectionActionModeHelper-mthref-1(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->classifyText()Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -android_widget_SelectionActionModeHelper-mthref-3(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->classifyText()Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Landroid/widget/Editor;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v6

    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;-><init>(Landroid/view/textclassifier/TextClassifier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;-><init>(Landroid/view/textclassifier/TextClassifier;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    return-void
.end method

.method private cancelAsyncTask()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    :cond_0
    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    return-void
.end method

.method private hasSelection()Z
    .locals 3

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 7

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-get0(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    iget-object v6, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v6}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getSelectionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionUpdated(IILjava/lang/String;)V

    iput-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    return-void

    :cond_1
    move-object v2, v3

    goto :goto_0
.end method

.method private resetTextClassificationHelper(Z)V
    .locals 8

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v7

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v6

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->reset(Landroid/view/textclassifier/TextClassifier;Ljava/lang/CharSequence;IIZLandroid/os/LocaleList;)V

    return-void
.end method

.method private skipTextClassification()Z
    .locals 6

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v4

    sget-object v5, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/widget/TextView;->getInputType()I

    move-result v4

    invoke-static {v4}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    :goto_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    :goto_3
    return v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    goto :goto_3
.end method

.method private startActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->setOriginalSelection(II)V

    if-eqz p1, :cond_2

    instance-of v3, v1, Landroid/text/Spannable;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/text/Spannable;

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-get2(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v3

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-get1(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v4

    invoke-static {v1, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-get0(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    :goto_0
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->startSelectionActionModeInternal()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-get2(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v4

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-get1(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v6}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getSelectionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionStarted(IILjava/lang/String;)V

    :cond_1
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Editor;->setRestartActionModeOnNextRefresh(Z)V

    iput-object v7, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    return-void

    :cond_2
    iput-object v7, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    goto :goto_0
.end method


# virtual methods
.method synthetic -android_widget_SelectionActionModeHelper-mthref-2(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->startActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method synthetic -android_widget_SelectionActionModeHelper-mthref-4(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method public getTextClassification()Landroid/view/textclassifier/TextClassification;
    .locals 1

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method public invalidateActionModeAsync()V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->skipTextClassification()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v5}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper(Z)V

    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$3;

    invoke-direct {v3, v2}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$3;-><init>(Ljava/lang/Object;)V

    new-instance v2, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;

    invoke-direct {v2, p0}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;-><init>(Ljava/lang/Object;)V

    const/16 v4, 0xc8

    invoke-direct {v0, v1, v4, v3, v2}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;-><init>(Landroid/widget/TextView;ILjava/util/function/Supplier;Ljava/util/function/Consumer;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onDestroyActionMode()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionDestroyed()V

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    return-void
.end method

.method public onSelectionAction()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getSelectionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionAction(Ljava/lang/String;)V

    return-void
.end method

.method public resetSelection(I)Z
    .locals 3

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v2}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getSelectionTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->resetSelection(ILandroid/widget/Editor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionModeAsync()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeAsync(Z)V
    .locals 5

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->skipTextClassification()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/SelectionActionModeHelper;->startActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper(Z)V

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    if-eqz p1, :cond_1

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$4;

    invoke-direct {v1, v3}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$4;-><init>(Ljava/lang/Object;)V

    :goto_1
    new-instance v3, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$2;

    invoke-direct {v3, p0}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$2;-><init>(Ljava/lang/Object;)V

    const/16 v4, 0xc8

    invoke-direct {v2, v0, v4, v1, v3}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;-><init>(Landroid/widget/TextView;ILjava/util/function/Supplier;Ljava/util/function/Consumer;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$5;

    invoke-direct {v1, v3}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$5;-><init>(Ljava/lang/Object;)V

    goto :goto_1
.end method
