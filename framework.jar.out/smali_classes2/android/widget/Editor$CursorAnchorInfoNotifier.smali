.class final Landroid/widget/Editor$CursorAnchorInfoNotifier;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorAnchorInfoNotifier"
.end annotation


# instance fields
.field final mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field final mTmpIntOffset:[I

.field final mViewToScreenMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$CursorAnchorInfoNotifier;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public updatePosition(IIZZ)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    iget-object v0, v2, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    if-nez v16, :cond_2

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodManager;->isCursorAnchorInfoEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    if-nez v20, :cond_5

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    move/from16 v0, v23

    invoke-virtual {v3, v0, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    const/16 v27, 0x0

    aget v8, v8, v27

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v2, v8, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v2

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_7

    move-object/from16 v24, v26

    check-cast v24, Landroid/text/Spannable;

    invoke-static/range {v24 .. v24}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    invoke-static/range {v24 .. v24}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    if-ge v5, v4, :cond_6

    move/from16 v25, v5

    move v5, v4

    move/from16 v4, v25

    :cond_6
    if-ltz v4, :cond_e

    if-ge v4, v5, :cond_e

    const/4 v15, 0x1

    :goto_0
    if-eqz v15, :cond_7

    move-object/from16 v0, v26

    invoke-interface {v0, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v3, v4, v14}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->populateCharacterBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;IIFF)V

    :cond_7
    if-ltz v23, :cond_d

    move/from16 v22, v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    add-float v9, v2, v6

    invoke-virtual/range {v20 .. v21}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    int-to-float v2, v2

    add-float v10, v2, v7

    invoke-virtual/range {v20 .. v21}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    int-to-float v2, v2

    add-float v11, v2, v7

    invoke-virtual/range {v20 .. v21}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    add-float v12, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v9, v12}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v18

    const/4 v13, 0x0

    if-nez v19, :cond_8

    if-eqz v18, :cond_9

    :cond_8
    const/4 v13, 0x1

    :cond_9
    if-eqz v19, :cond_a

    xor-int/lit8 v2, v18, 0x1

    if-eqz v2, :cond_b

    :cond_a
    or-int/lit8 v13, v13, 0x2

    :cond_b
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v2

    if-eqz v2, :cond_c

    or-int/lit8 v13, v13, 0x4

    :cond_c
    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v8}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    return-void

    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_0
.end method
