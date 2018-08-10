.class final synthetic Lcom/android/settings/inputmethod/-$Lambda$IRedf-qYCHCyZT9v-5YML_JAxJ4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/-$Lambda$IRedf-qYCHCyZT9v-5YML_JAxJ4;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/text/Collator;

    check-cast p1, Landroid/support/v7/preference/SecInputMethodPreference;

    check-cast p2, Landroid/support/v7/preference/SecInputMethodPreference;

    invoke-static {v0, p1, p2}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->lambda$-com_android_settings_inputmethod_AvailableVirtualKeyboardFragment_7918(Ljava/text/Collator;Landroid/support/v7/preference/SecInputMethodPreference;Landroid/support/v7/preference/SecInputMethodPreference;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/-$Lambda$IRedf-qYCHCyZT9v-5YML_JAxJ4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/-$Lambda$IRedf-qYCHCyZT9v-5YML_JAxJ4;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
