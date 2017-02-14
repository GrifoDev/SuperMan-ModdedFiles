.class Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$10;
.super Ljava/lang/Object;
.source "FingerprintSettings_MultiSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprint()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$10;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$10;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-wrap4(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    return-void
.end method
