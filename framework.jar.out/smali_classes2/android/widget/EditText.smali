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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    sget-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/EditText;->MSG_TYPE_FOCUSED:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EditText;->MSG_TYPE_NOT_FOCUSED:I

    iput v1, p0, Landroid/widget/EditText;->mSipTextLen:I

    iput-boolean v1, p0, Landroid/widget/EditText;->mFocused:Z

    new-instance v0, Landroid/widget/EditText$1;

    invoke-direct {v0, p0}, Landroid/widget/EditText$1;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroid/widget/EditText;->mSipTextWatcher:Landroid/text/TextWatcher;

    iput-boolean v1, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    return-void
.end method

.method private updateSipFocusStatus()V
    .locals 4

    iget-boolean v1, p0, Landroid/widget/EditText;->mFocused:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/EditText;->mSipTextLen:I

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    iget-object v1, p0, Landroid/widget/EditText;->mCfmsService:Landroid/os/CustomFrequencyManager;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CustomFrequencyManager;

    iput-object v1, p0, Landroid/widget/EditText;->mCfmsService:Landroid/os/CustomFrequencyManager;

    :cond_0
    iget-object v2, p0, Landroid/widget/EditText;->mCfmsService:Landroid/os/CustomFrequencyManager;

    const-string/jumbo v3, "KNOWN_APP_SIP"

    iget-boolean v1, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "1"

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "0"

    goto :goto_1
.end method


# virtual methods
.method public dispatchWindowFocusChanged(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchWindowFocusChanged(Z)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getSecClipboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isFilterRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    iget-object v2, p0, Landroid/widget/EditText;->mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->updateFilter(IILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/EditText;->mClipboardChangeListener:Landroid/widget/TextView$TextViewClipboardChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->registerClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getLatestClip(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setCanPaste(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setCanPaste(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/EditText;->mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->clearFilter(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)Z

    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/EditText;->mClipboardChangeListener:Landroid/widget/TextView$TextViewClipboardChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->unregisterClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V

    goto :goto_0
.end method

.method public extendSelection(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getFreezesText()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/EditText;->getSecClipboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_5

    instance-of v2, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isFilterRequired()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v3

    iget-object v4, p0, Landroid/widget/EditText;->mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->updateFilter(IILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/EditText;->mClipboardChangeListener:Landroid/widget/TextView$TextViewClipboardChangeListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->registerClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getLatestClip(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setCanPaste(Z)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    sget-object v2, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/EditText;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_2

    new-instance v2, Landroid/widget/EditText$2;

    invoke-direct {v2, p0}, Landroid/widget/EditText$2;-><init>(Landroid/widget/EditText;)V

    iput-object v2, p0, Landroid/widget/EditText;->mHandler:Landroid/os/Handler;

    :cond_2
    iget-object v2, p0, Landroid/widget/EditText;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_6

    :goto_1
    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/widget/EditText;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, v5}, Landroid/widget/EditText;->setCanPaste(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/EditText;->mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->clearFilter(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)Z

    invoke-virtual {p0}, Landroid/widget/EditText;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/EditText;->mClipboardChangeListener:Landroid/widget/TextView$TextViewClipboardChangeListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->unregisterClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_TEXT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public selectAll()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    return-void
.end method

.method public semHideCursorControllers()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public setSelection(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method protected supportsAutoSizeText()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
