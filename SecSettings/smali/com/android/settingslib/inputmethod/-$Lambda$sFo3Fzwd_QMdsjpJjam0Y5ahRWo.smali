.class final synthetic Lcom/android/settingslib/inputmethod/-$Lambda$sFo3Fzwd_QMdsjpJjam0Y5ahRWo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/-$Lambda$sFo3Fzwd_QMdsjpJjam0Y5ahRWo;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;

    check-cast p1, Landroid/support/v7/preference/Preference;

    check-cast p2, Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->lambda$-com_android_settingslib_inputmethod_InputMethodAndSubtypeEnablerManager_7261(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/-$Lambda$sFo3Fzwd_QMdsjpJjam0Y5ahRWo;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/inputmethod/-$Lambda$sFo3Fzwd_QMdsjpJjam0Y5ahRWo;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
