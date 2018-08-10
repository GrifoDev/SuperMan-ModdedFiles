.class public Lcom/android/settings/fingerprint/FingerPrintRenameEditText;
.super Landroid/widget/EditText;
.source "FingerPrintRenameEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerPrintRenameEditText$ActionModeCallbackInterceptor;,
        Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field gestureDetector:Landroid/view/GestureDetector;

.field private isDoubletap:Z


# direct methods
.method static synthetic -set0(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->isDoubletap:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "FpstFingerPrintRenameEditText"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->context:Landroid/content/Context;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->gestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "FpstFingerPrintRenameEditText"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->context:Landroid/content/Context;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->gestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "FpstFingerPrintRenameEditText"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->context:Landroid/content/Context;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText;Lcom/android/settings/fingerprint/FingerPrintRenameEditText$GestureListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->gestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$ActionModeCallbackInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText$ActionModeCallbackInterceptor;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameEditText$ActionModeCallbackInterceptor;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setLongClickable(Z)V

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->isDoubletap:Z

    return-void
.end method

.method private setInsertionDisabled()V
    .locals 7

    :try_start_0
    const-string/jumbo v5, "FpstFingerPrintRenameEditText"

    const-string/jumbo v6, "setInsertionDisabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v5, Landroid/widget/TextView;

    const-string/jumbo v6, "mEditor"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v5, "android.widget.Editor"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v5, "mInsertionControllerEnabled"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method canPaste()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setInsertionDisabled()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->isDoubletap:Z

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "FpstFingerPrintRenameEditText"

    const-string/jumbo v2, "isDoubletap is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->isDoubletap:Z

    goto :goto_0
.end method
