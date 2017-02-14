.class public Lcom/android/internal/widget/PasswordEntryKeyboardView;
.super Landroid/inputmethodservice/KeyboardView;
.source "PasswordEntryKeyboardView.java"


# static fields
.field static final KEYCODE_F1:I = -0x67

.field static final KEYCODE_NEXT_LANGUAGE:I = -0x68

.field static final KEYCODE_OPTIONS:I = -0x64

.field static final KEYCODE_SHIFT_LONGPRESS:I = -0x65

.field static final KEYCODE_VOICE:I = -0x66


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public setShifted(Z)Z
    .locals 5

    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard;->getShiftKeyIndices()[I

    move-result-object v1

    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, v1, v3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->invalidateKey(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
