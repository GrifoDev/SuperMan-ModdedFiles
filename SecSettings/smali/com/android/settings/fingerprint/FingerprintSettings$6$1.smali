.class Lcom/android/settings/fingerprint/FingerprintSettings$6$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings$6;->onStateReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintSettings$6;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$6;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const-string/jumbo v1, "FingerprintSettings_register"

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->-wrap3(Lcom/android/settings/fingerprint/FingerprintSettings;Ljava/lang/String;)V

    return-void
.end method
