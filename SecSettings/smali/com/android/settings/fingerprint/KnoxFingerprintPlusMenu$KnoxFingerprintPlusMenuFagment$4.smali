.class Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$4;
.super Ljava/lang/Object;
.source "KnoxFingerprintPlusMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$4;->this$1:Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$4;->this$1:Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->-set1(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Z)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$4;->this$1:Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->-wrap1(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V

    return-void
.end method
