.class public Landroid/widget/Editor$UndoInputFilter;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoInputFilter"
.end annotation


# static fields
.field private static final MERGE_EDIT_MODE_FORCE_MERGE:I = 0x0

.field private static final MERGE_EDIT_MODE_NEVER_MERGE:I = 0x1

.field private static final MERGE_EDIT_MODE_NORMAL:I = 0x2


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private mExpanding:Z

.field private mHasComposition:Z

.field private mIsUserEdit:Z

.field private mPreviousOperationWasInSameBatchEdit:Z


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    return-void
.end method

.method private canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get15(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/UndoManager;->isInUndo()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1, p2, p3}, Landroid/widget/Editor;->-wrap10(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p4, p5, p6}, Landroid/widget/Editor;->-wrap10(Ljava/lang/CharSequence;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :cond_2
    return v1

    :cond_3
    if-ne p2, p3, :cond_4

    if-ne p5, p6, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private getLastEdit()Landroid/widget/Editor$EditOperation;
    .locals 4

    iget-object v1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get15(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    const-class v1, Landroid/widget/Editor$EditOperation;

    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get16(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v1

    check-cast v1, Landroid/widget/Editor$EditOperation;

    return-object v1
.end method

.method private handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V
    .locals 7

    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->isInTextWatcher()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, p5, p6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/widget/Editor$EditOperation;

    iget-object v1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean v5, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    move v3, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;Z)V

    iget-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/widget/Editor$EditOperation;->-get0(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/widget/Editor$EditOperation;->-get1(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_1
    if-eqz p7, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, v6}, Landroid/widget/Editor$UndoInputFilter;->recordEdit(Landroid/widget/Editor$EditOperation;I)V

    return-void
.end method

.method private static isComposition(Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v3, 0x0

    instance-of v4, p0, Landroid/text/Spannable;

    if-nez v4, :cond_0

    return v3

    :cond_0
    move-object v2, p0

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    invoke-static {v2}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private isInTextWatcher()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v2, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->getTextWatcherDepth()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private recordEdit(Landroid/widget/Editor$EditOperation;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get15(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v1

    const-string/jumbo v2, "Edit text"

    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p1, v3}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    iput-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    invoke-virtual {v1}, Landroid/content/UndoManager;->endUpdate()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/Editor$EditOperation;->forceMergeWith(Landroid/widget/Editor$EditOperation;)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get16(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    invoke-virtual {v1, p1, v3}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    invoke-static {v0, p1}, Landroid/widget/Editor$EditOperation;->-wrap0(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get16(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    invoke-virtual {v1, p1, v3}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10

    invoke-direct/range {p0 .. p6}, Landroid/widget/Editor$UndoInputFilter;->canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v8, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    invoke-static {p1}, Landroid/widget/Editor$UndoInputFilter;->isComposition(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    iget-boolean v9, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    const/4 v7, 0x0

    sub-int v0, p3, p2

    sub-int v1, p6, p5

    if-eq v0, v1, :cond_1

    sub-int v0, p3, p2

    sub-int v1, p6, p5

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    if-eqz v8, :cond_1

    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    if-eq v0, v9, :cond_1

    const/4 v7, 0x1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/Editor$UndoInputFilter;->handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method freezeLastEdit()V
    .locals 3

    iget-object v1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get15(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v1

    const-string/jumbo v2, "Edit text"

    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/Editor$EditOperation;->-set0(Landroid/widget/Editor$EditOperation;Z)Z

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get15(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/UndoManager;->endUpdate()V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public saveInstanceState(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method
