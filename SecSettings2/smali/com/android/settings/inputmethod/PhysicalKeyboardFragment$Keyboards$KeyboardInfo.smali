.class public final Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyboardInfo"
.end annotation


# instance fields
.field public final mImSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field public final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field public final mLayout:Landroid/hardware/input/KeyboardLayout;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroid/hardware/input/KeyboardLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iput-object p2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    iput-object p3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mLayout:Landroid/hardware/input/KeyboardLayout;

    return-void
.end method
