.class final synthetic Lcom/android/settings/inputmethod/-$Lambda$RDCTtis9GGUbLCDFBkCw5F2PGo8$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/inputmethod/-$Lambda$RDCTtis9GGUbLCDFBkCw5F2PGo8$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object v1, p0, Lcom/android/settings/inputmethod/-$Lambda$RDCTtis9GGUbLCDFBkCw5F2PGo8$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;

    iget-object v2, p0, Lcom/android/settings/inputmethod/-$Lambda$RDCTtis9GGUbLCDFBkCw5F2PGo8$1;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v3, p0, Lcom/android/settings/inputmethod/-$Lambda$RDCTtis9GGUbLCDFBkCw5F2PGo8$1;->-$f3:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->lambda$-com_android_settings_inputmethod_PhysicalKeyboardFragment_10655(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/-$Lambda$RDCTtis9GGUbLCDFBkCw5F2PGo8$1;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/inputmethod/-$Lambda$RDCTtis9GGUbLCDFBkCw5F2PGo8$1;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/inputmethod/-$Lambda$RDCTtis9GGUbLCDFBkCw5F2PGo8$1;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/settings/inputmethod/-$Lambda$RDCTtis9GGUbLCDFBkCw5F2PGo8$1;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/-$Lambda$RDCTtis9GGUbLCDFBkCw5F2PGo8$1;->$m$0(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
