.class public Landroid/widget/EditText;
.super Landroid/widget/TextView;
.source "EditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditText$1;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sKnownAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MSG_TYPE_FOCUSED:I

.field private final MSG_TYPE_NOT_FOCUSED:I

.field private mCfmsService:Landroid/os/CustomFrequencyManager;

.field private mFocused:Z

.field private mHandler:Landroid/os/Handler;

.field private mKnownAppSipScenario:Z

.field private mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

.field private mSipTextLen:I

.field private mSipTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static synthetic -get0(Landroid/widget/EditText;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Landroid/widget/EditText;->mSipTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/EditText;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/EditText;->mFocused:Z

    return p1
.end method

.method static synthetic -set1(Landroid/widget/EditText;I)I
    .locals 0

    iput p1, p0, Landroid/widget/EditText;->mSipTextLen:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/EditText;->updateSipFocusStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    .line 318
    sget-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 324
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/EditText;->TAG:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/EditText;->MSG_TYPE_FOCUSED:I

    .line 194
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EditText;->MSG_TYPE_NOT_FOCUSED:I

    .line 293
    iput v1, p0, Landroid/widget/EditText;->mSipTextLen:I

    .line 295
    iput-boolean v1, p0, Landroid/widget/EditText;->mFocused:Z

    .line 297
    new-instance v0, Landroid/widget/EditText$1;

    invoke-direct {v0, p0}, Landroid/widget/EditText$1;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroid/widget/EditText;->mSipTextWatcher:Landroid/text/TextWatcher;

    .line 322
    iput-boolean v1, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    .line 96
    return-void
.end method

.method private updateSipFocusStatus()V
    .locals 4

    .prologue
    .line 327
    iget-boolean v1, p0, Landroid/widget/EditText;->mFocused:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/EditText;->mSipTextLen:I

    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 328
    .local v0, "current":Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    if-eq v1, v0, :cond_1

    .line 329
    iput-boolean v0, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    .line 330
    iget-object v1, p0, Landroid/widget/EditText;->mCfmsService:Landroid/os/CustomFrequencyManager;

    if-nez v1, :cond_0

    .line 331
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CustomFrequencyManager;

    iput-object v1, p0, Landroid/widget/EditText;->mCfmsService:Landroid/os/CustomFrequencyManager;

    .line 333
    :cond_0
    iget-object v2, p0, Landroid/widget/EditText;->mCfmsService:Landroid/os/CustomFrequencyManager;

    const-string/jumbo v3, "KNOWN_APP_SIP"

    iget-boolean v1, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "1"

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_1
    return-void

    .line 327
    .end local v0    # "current":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "current":Z
    goto :goto_0

    .line 333
    :cond_3
    const-string/jumbo v1, "0"

    goto :goto_1
.end method


# virtual methods
.method public dispatchWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchWindowFocusChanged(Z)V

    .line 273
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p0}, Landroid/widget/EditText;->getSecClipboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/EditText;->mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->updateFilter(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V

    goto :goto_0
.end method

.method public extendSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 155
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 180
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getFreezesText()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    .line 222
    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/widget/EditText;->getSecClipboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v2, :cond_3

    .line 232
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 234
    sget-object v2, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    iget-object v2, p0, Landroid/widget/EditText;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 236
    new-instance v2, Landroid/widget/EditText$2;

    invoke-direct {v2, p0}, Landroid/widget/EditText$2;-><init>(Landroid/widget/EditText;)V

    iput-object v2, p0, Landroid/widget/EditText;->mHandler:Landroid/os/Handler;

    .line 252
    :cond_1
    iget-object v2, p0, Landroid/widget/EditText;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 253
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_4

    :goto_1
    iput v1, v0, Landroid/os/Message;->what:I

    .line 254
    iget-object v1, p0, Landroid/widget/EditText;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    return-void

    .line 224
    :cond_3
    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {p0}, Landroid/widget/EditText;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/EditText;->mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->updateFilter(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V

    goto :goto_0

    .line 253
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_4
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 345
    invoke-virtual {p0}, Landroid/widget/EditText;->isHoveringUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    new-instance v0, Landroid/widget/EditText$3;

    invoke-direct {v0, p0}, Landroid/widget/EditText$3;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroid/widget/EditText;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    .line 357
    iget-object v0, p0, Landroid/widget/EditText;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 369
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 358
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 359
    iget-object v0, p0, Landroid/widget/EditText;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Landroid/widget/EditText;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 361
    iput-object v2, p0, Landroid/widget/EditText;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 187
    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_TEXT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 185
    :cond_0
    return-void
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 148
    return-void
.end method

.method public semHideCursorControllers()V
    .locals 0

    .prologue
    .line 290
    invoke-super {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 289
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .param p1, "ellipsis"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 171
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 170
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 141
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 134
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 128
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 127
    return-void
.end method
