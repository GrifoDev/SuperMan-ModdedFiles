.class final Lcom/android/internal/inputmethod/InputMethodUtils$1;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"

# interfaces
.implements Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor",
        "<",
        "Landroid/view/inputmethod/InputMethodSubtype;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/util/Locale;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Locale;
    .locals 1

    check-cast p1, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$1;->get(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
