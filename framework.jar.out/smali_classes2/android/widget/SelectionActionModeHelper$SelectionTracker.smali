.class final Landroid/widget/SelectionActionModeHelper$SelectionTracker;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionTracker"
.end annotation


# static fields
.field private static final LOG_EVENT_MULTI_SELECTION:Ljava/lang/String; = "textClassifier_multiSelection"

.field private static final LOG_EVENT_MULTI_SELECTION_ACTION:Ljava/lang/String; = "textClassifier_multiSelection_action"

.field private static final LOG_EVENT_MULTI_SELECTION_MODIFIED:Ljava/lang/String; = "textClassifier_multiSelection_modified"

.field private static final LOG_EVENT_MULTI_SELECTION_RESET:Ljava/lang/String; = "textClassifier_multiSelection_reset"

.field private static final LOG_EVENT_SINGLE_SELECTION:Ljava/lang/String; = "textClassifier_singleSelection"

.field private static final LOG_EVENT_SINGLE_SELECTION_ACTION:Ljava/lang/String; = "textClassifier_singleSelection_action"

.field private static final LOG_EVENT_SINGLE_SELECTION_MODIFIED:Ljava/lang/String; = "textClassifier_singleSelection_modified"


# instance fields
.field private final mClassifier:Landroid/view/textclassifier/TextClassifier;

.field private mClassifierSelection:Z

.field private mMultiSelection:Z

.field private mOriginalEnd:I

.field private mOriginalStart:I

.field private mSelectionEnd:I

.field private mSelectionStart:I


# direct methods
.method constructor <init>(Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mClassifier:Landroid/view/textclassifier/TextClassifier;

    return-void
.end method

.method private resetSelectionFlags()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mMultiSelection:Z

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mClassifierSelection:Z

    return-void
.end method


# virtual methods
.method public onSelectionAction(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mMultiSelection:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mClassifier:Landroid/view/textclassifier/TextClassifier;

    const-string/jumbo v1, "textClassifier_multiSelection_action"

    invoke-interface {v0, p1, v1}, Landroid/view/textclassifier/TextClassifier;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mClassifierSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mClassifier:Landroid/view/textclassifier/TextClassifier;

    const-string/jumbo v1, "textClassifier_singleSelection_action"

    invoke-interface {v0, p1, v1}, Landroid/view/textclassifier/TextClassifier;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSelectionDestroyed()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->resetSelectionFlags()V

    return-void
.end method

.method public onSelectionStarted(IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mClassifierSelection:Z

    iput p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalStart:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalEnd:I

    if-eq v1, v2, :cond_2

    :cond_0
    :goto_0
    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mMultiSelection:Z

    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mMultiSelection:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mClassifier:Landroid/view/textclassifier/TextClassifier;

    const-string/jumbo v1, "textClassifier_multiSelection"

    invoke-interface {v0, p3, v1}, Landroid/view/textclassifier/TextClassifier;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mClassifierSelection:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mClassifier:Landroid/view/textclassifier/TextClassifier;

    const-string/jumbo v1, "textClassifier_singleSelection"

    invoke-interface {v0, p3, v1}, Landroid/view/textclassifier/TextClassifier;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSelectionUpdated(IILjava/lang/String;)V
    .locals 3

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    if-eq p2, v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mMultiSelection:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mClassifier:Landroid/view/textclassifier/TextClassifier;

    const-string/jumbo v2, "textClassifier_multiSelection_modified"

    invoke-interface {v1, p3, v2}, Landroid/view/textclassifier/TextClassifier;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->resetSelectionFlags()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mClassifierSelection:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mClassifier:Landroid/view/textclassifier/TextClassifier;

    const-string/jumbo v2, "textClassifier_singleSelection_modified"

    invoke-interface {v1, p3, v2}, Landroid/view/textclassifier/TextClassifier;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public resetSelection(ILandroid/widget/Editor;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mMultiSelection:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    if-gt p1, v1, :cond_0

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->resetSelectionFlags()V

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mClassifier:Landroid/view/textclassifier/TextClassifier;

    const-string/jumbo v2, "textClassifier_multiSelection_reset"

    invoke-interface {v1, p3, v2}, Landroid/view/textclassifier/TextClassifier;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setOriginalSelection(II)V
    .locals 0

    iput p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalStart:I

    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalEnd:I

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->resetSelectionFlags()V

    return-void
.end method
