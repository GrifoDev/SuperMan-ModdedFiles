.class final synthetic Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I


# direct methods
.method private final synthetic $m$0(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 2

    iget v0, p0, Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg$1;->-$f0:I

    iget v1, p0, Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg$1;->-$f1:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/settingslib/RestrictedLockUtils;->lambda$-com_android_settingslib_RestrictedLockUtils_6716(IILandroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg$1;->-$f0:I

    iput p2, p0, Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg$1;->-$f1:I

    return-void
.end method


# virtual methods
.method public final isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg$1;->$m$0(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method
