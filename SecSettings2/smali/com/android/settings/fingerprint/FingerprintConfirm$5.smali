.class Lcom/android/settings/fingerprint/FingerprintConfirm$5;
.super Ljava/lang/Object;
.source "FingerprintConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintConfirm;->showDatabaseFailureDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$5;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$5;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    return-void
.end method
