.class public Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
.super Ljava/lang/Object;
.source "PasswordEntryKeyboardHelper.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# static fields
.field public static final KEYBOARD_MODE_ALPHA:I = 0x0

.field public static final KEYBOARD_MODE_NUMERIC:I = 0x1

.field private static final KEYBOARD_STATE_CAPSLOCK:I = 0x2

.field private static final KEYBOARD_STATE_NORMAL:I = 0x0

.field private static final KEYBOARD_STATE_SHIFTED:I = 0x1

.field private static final NUMERIC:I = 0x0

.field private static final QWERTY:I = 0x1

.field private static final QWERTY_SHIFTED:I = 0x2

.field private static final SYMBOLS:I = 0x3

.field private static final SYMBOLS_SHIFTED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PasswordEntryKeyboardHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnableHaptics:Z

.field private mKeyboardMode:I

.field private mKeyboardState:I

.field private final mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field mLayouts:[I

.field private mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private final mTargetView:Landroid/view/View;

.field private mUsingScreenWidth:Z

.field private mVibratePattern:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z[I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z[I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z[I)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    iput v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    iput-boolean v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mEnableHaptics:Z

    const v1, 0x111000d

    const v2, 0x111000f

    const v3, 0x1110010

    const v4, 0x1110011

    const v5, 0x1110012

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    iput-object p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    iput-boolean p4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mUsingScreenWidth:Z

    if-eqz p5, :cond_1

    array-length v1, p5

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Wrong number of layouts"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    aget v2, p5, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->createKeyboards()V

    return-void
.end method

.method private createKeyboardsWithDefaultWidth()V
    .locals 6

    const v5, 0x102052a

    const/4 v4, 0x1

    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    aget v2, v2, v4

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    return-void
.end method

.method private createKeyboardsWithSpecificSize(II)V
    .locals 7

    const v3, 0x102052a

    const/4 v6, 0x1

    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    aget v2, v2, v6

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v4, 0x2

    aget v2, v2, v4

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    return-void
.end method

.method private handleCharacter(I[I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->sendKeyEventsToTarget(I)V

    return-void
.end method

.method private handleClose()V
    .locals 0

    return-void
.end method

.method private handleModeChange()V
    .locals 3

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-ne v0, v2, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-eq v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-ne v0, v2, :cond_1

    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    goto :goto_0
.end method

.method private handleShift()V
    .locals 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-ne v0, v3, :cond_5

    const/4 v1, 0x1

    :goto_0
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-nez v3, :cond_8

    if-eqz v1, :cond_6

    move v3, v4

    :goto_1
    iput v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    :cond_1
    :goto_2
    if-eqz v2, :cond_3

    if-eq v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    :cond_2
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v3, v5, :cond_c

    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShiftLocked(Z)V

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-eqz v5, :cond_d

    :goto_4
    invoke-virtual {v3, v4}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    move v3, v5

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    goto :goto_2

    :cond_8
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v3, v4, :cond_a

    iput v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    goto :goto_2

    :cond_a
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v3, v5, :cond_1

    iput v6, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    goto :goto_2

    :cond_b
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    goto :goto_2

    :cond_c
    move v3, v6

    goto :goto_3

    :cond_d
    move v4, v6

    goto :goto_4
.end method

.method private performHapticFeedback()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/KeyboardView;->performHapticFeedback(II)Z

    :cond_0
    return-void
.end method

.method private sendKeyEventsToTarget(I)V
    .locals 9

    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [C

    int-to-char v7, p1

    const/4 v8, 0x0

    aput-char v7, v6, v8

    invoke-virtual {v5, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v1, v2, v3

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    or-int/lit8 v5, v5, 0x4

    invoke-static {v1, v5}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public createKeyboards()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1}, Landroid/inputmethodservice/KeyboardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mUsingScreenWidth:Z

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->createKeyboardsWithDefaultWidth()V

    :goto_0
    return-void

    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->createKeyboardsWithSpecificSize(II)V

    goto :goto_0
.end method

.method public handleBackspace()V
    .locals 1

    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->sendDownUpKeyEvents(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->performHapticFeedback()V

    return-void
.end method

.method public isAlpha()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onKey(I[I)V
    .locals 2

    const/4 v0, -0x5

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleBackspace()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_0

    :cond_2
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleClose()V

    return-void

    :cond_3
    const/4 v0, -0x2

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleModeChange()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleCharacter(I[I)V

    iget v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_0
.end method

.method public onPress(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->performHapticFeedback()V

    return-void
.end method

.method public onRelease(I)V
    .locals 0

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public setEnableHaptics(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mEnableHaptics:Z

    return-void
.end method

.method public setKeyboardMode(I)V
    .locals 6

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iput p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iput v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_password"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz v1, :cond_0

    :cond_0
    invoke-virtual {v2, v5}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iput v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2, v5}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVibratePattern(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    iput-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    return-void

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    const-string/jumbo v3, "PasswordEntryKeyboardHelper"

    const-string/jumbo v4, "Vibrate pattern missing"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    aget v4, v2, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public swipeDown()V
    .locals 0

    return-void
.end method

.method public swipeLeft()V
    .locals 0

    return-void
.end method

.method public swipeRight()V
    .locals 0

    return-void
.end method

.method public swipeUp()V
    .locals 0

    return-void
.end method
