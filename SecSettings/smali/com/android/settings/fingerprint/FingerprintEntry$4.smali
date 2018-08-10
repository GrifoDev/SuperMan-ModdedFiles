.class Lcom/android/settings/fingerprint/FingerprintEntry$4;
.super Ljava/lang/Object;
.source "FingerprintEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEntry;->showDatabaseFailureDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEntry;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "showDatabaseFailureDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get0(Lcom/android/settings/fingerprint/FingerprintEntry;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEntry;->-wrap0(Lcom/android/settings/fingerprint/FingerprintEntry;Landroid/content/Context;)V

    return-void
.end method
