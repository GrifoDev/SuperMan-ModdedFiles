.class public abstract Lcom/android/internal/view/IInputConnectionWrapper;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "IInputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_CLOSE_CONNECTION:I = 0x96

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_CONTENT:I = 0xa0

.field private static final DO_COMMIT_CORRECTION:I = 0x38

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

.field private static final DO_DELETE_SURROUNDING_TEXT_IN_CODE_POINTS:I = 0x51

.field private static final DO_END_BATCH_EDIT:I = 0x5f

.field private static final DO_FINISH_COMPOSING_TEXT:I = 0x41

.field private static final DO_GET_CURSOR_CAPS_MODE:I = 0x1e

.field private static final DO_GET_EXTRACTED_TEXT:I = 0x28

.field private static final DO_GET_SELECTED_TEXT:I = 0x19

.field private static final DO_GET_TEXT_AFTER_CURSOR:I = 0xa

.field private static final DO_GET_TEXT_BEFORE_CURSOR:I = 0x14

.field private static final DO_PERFORM_CONTEXT_MENU_ACTION:I = 0x3b

.field private static final DO_PERFORM_EDITOR_ACTION:I = 0x3a

.field private static final DO_PERFORM_PRIVATE_COMMAND:I = 0x78

.field private static final DO_REQUEST_UPDATE_CURSOR_ANCHOR_INFO:I = 0x8c

.field private static final DO_SEND_KEY_EVENT:I = 0x46

.field private static final DO_SET_COMPOSING_REGION:I = 0x3f

.field private static final DO_SET_COMPOSING_TEXT:I = 0x3c

.field private static final DO_SET_SELECTION:I = 0x39

.field private static final TAG:Ljava/lang/String; = "IInputConnectionWrapper"


# instance fields
.field private mFinished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mH:Landroid/os/Handler;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    iput-object p2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public clearMetaKeyStates(I)V
    .locals 2

    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public closeConnection()V
    .locals 1

    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    const/16 v0, 0x37

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;ILcom/android/internal/view/IInputContextCallback;)V
    .locals 7

    const/16 v1, 0xa0

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1

    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 1

    const/16 v0, 0x32

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 1

    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteSurroundingTextInCodePoints(II)V
    .locals 1

    const/16 v0, 0x51

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method dispatchMessage(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method executeMessage(Landroid/os/Message;)V
    .locals 14

    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    const-string/jumbo v11, "IInputConnectionWrapper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unhandled message code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1

    :cond_0
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_1
    :try_start_1
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_0
    return-void

    :catch_0
    move-exception v5

    :try_start_2
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setTextAfterCursor"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_3
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_3

    :cond_2
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_3
    :try_start_4
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_1
    return-void

    :catch_1
    move-exception v5

    :try_start_5
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setTextBeforeCursor"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_1

    :catchall_1
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_6
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_5

    :cond_4
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getSelectedText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_5
    :try_start_7
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_2
    return-void

    :catch_2
    move-exception v5

    :try_start_8
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setSelectedText"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_2

    :catchall_2
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_9
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_7

    :cond_6
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_7
    :try_start_a
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_3
    return-void

    :catch_3
    move-exception v5

    :try_start_b
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setCursorCapsMode"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_3

    :catchall_3
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_c
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_9

    :cond_8
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getExtractedText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_9
    :try_start_d
    iget-object v11, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/ExtractedTextRequest;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_4
    return-void

    :catch_4
    move-exception v5

    :try_start_e
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setExtractedText"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_4

    :catchall_4
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_b

    :cond_a
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    return-void

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_d

    :cond_c
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "setSelection on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    return-void

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_f

    :cond_e
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "performEditorAction on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    return-void

    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_11

    :cond_10
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "performContextMenuAction on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    return-void

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_13

    :cond_12
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitCompletion on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    return-void

    :sswitch_a
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_15

    :cond_14
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitCorrection on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/CorrectionInfo;

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    return-void

    :sswitch_b
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_16

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_17

    :cond_16
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "setComposingText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    return-void

    :sswitch_c
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_18

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_19

    :cond_18
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "setComposingRegion on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    return-void

    :sswitch_d
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-nez v7, :cond_1b

    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "finishComposingText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    return-void

    :sswitch_e
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1d

    :cond_1c
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "sendKeyEvent on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/KeyEvent;

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    return-void

    :sswitch_f
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1f

    :cond_1e
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    return-void

    :sswitch_10
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_21

    :cond_20
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    return-void

    :sswitch_11
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_22

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_23

    :cond_22
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "deleteSurroundingTextInCodePoints on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingTextInCodePoints(II)Z

    return-void

    :sswitch_12
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_25

    :cond_24
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "beginBatchEdit on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    return-void

    :sswitch_13
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_26

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_27

    :cond_26
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "endBatchEdit on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return-void

    :sswitch_14
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_f
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_28

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_29

    :cond_28
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "performPrivateCommand on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_29
    :try_start_10
    invoke-interface {v7, v0, v4}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_5
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    :sswitch_15
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_11
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2b

    :cond_2a
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "requestCursorAnchorInfo on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_2b
    :try_start_12
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    move-result v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_5
    return-void

    :catch_5
    move-exception v5

    :try_start_13
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling requestCursorAnchorInfo"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5

    :catchall_6
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    :sswitch_16
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_2c

    return-void

    :cond_2c
    :try_start_14
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    move-result-object v7

    if-nez v7, :cond_2d

    iget-object v12, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v11, 0x0

    :try_start_15
    iput-object v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    monitor-exit v12

    return-void

    :catchall_7
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_2d
    :try_start_16
    invoke-static {v7}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I

    move-result v9

    and-int/lit8 v11, v9, 0x40

    if-nez v11, :cond_2e

    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->closeConnection()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    :cond_2e
    iget-object v12, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v11, 0x0

    :try_start_17
    iput-object v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    monitor-exit v12

    return-void

    :catchall_8
    move-exception v11

    monitor-exit v12

    throw v11

    :catchall_9
    move-exception v11

    iget-object v12, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v13, 0x0

    :try_start_18
    iput-object v13, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    monitor-exit v12

    throw v11

    :catchall_a
    move-exception v11

    monitor-exit v12

    throw v11

    :sswitch_17
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_19
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_2f

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_30

    :cond_2f
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitContent on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_30
    :try_start_1a
    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Landroid/view/inputmethod/InputContentInfo;

    if-eqz v8, :cond_31

    invoke-virtual {v8}, Landroid/view/inputmethod/InputContentInfo;->validate()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_32

    :cond_31
    const-string/jumbo v11, "IInputConnectionWrapper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "commitContent with invalid inputContentInfo="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_32
    :try_start_1b
    iget-object v11, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    invoke-interface {v7, v8, v6, v11}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v10

    invoke-interface {v2, v10, v3}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_6
    return-void

    :catch_6
    move-exception v5

    :try_start_1c
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling commitContent"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_6

    :catchall_b
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x19 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_5
        0x37 -> :sswitch_9
        0x38 -> :sswitch_a
        0x39 -> :sswitch_6
        0x3a -> :sswitch_7
        0x3b -> :sswitch_8
        0x3c -> :sswitch_b
        0x3f -> :sswitch_c
        0x41 -> :sswitch_d
        0x46 -> :sswitch_e
        0x50 -> :sswitch_10
        0x51 -> :sswitch_11
        0x5a -> :sswitch_12
        0x5f -> :sswitch_13
        0x78 -> :sswitch_14
        0x82 -> :sswitch_f
        0x8c -> :sswitch_15
        0x96 -> :sswitch_16
        0xa0 -> :sswitch_17
    .end sparse-switch
.end method

.method public finishComposingText()V
    .locals 1

    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
    .locals 6

    const/16 v1, 0x28

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1

    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6

    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6

    const/16 v1, 0x14

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected abstract isActive()Z
.end method

.method protected isFinished()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method obtainMessage(I)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageII(III)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 2

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method protected abstract onUserAction()V
.end method

.method public performContextMenuAction(I)V
    .locals 2

    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public performEditorAction(I)V
    .locals 2

    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1

    const/16 v0, 0x8c

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setComposingRegion(II)V
    .locals 1

    const/16 v0, 0x3f

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 1

    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setSelection(II)V
    .locals 1

    const/16 v0, 0x39

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
