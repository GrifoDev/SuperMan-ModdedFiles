.class Lcom/android/settings/fingerprint/FingerprintEntry$5;
.super Ljava/lang/Object;
.source "FingerprintEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$5;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry$5;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    return-void
.end method
