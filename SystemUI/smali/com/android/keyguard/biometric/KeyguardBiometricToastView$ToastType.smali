.class public final enum Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;
.super Ljava/lang/Enum;
.source "KeyguardBiometricToastView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricToastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToastType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

.field public static final enum Authenticating:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

.field public static final enum AuthenticationFail:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

.field public static final enum AuthenticationSuccess:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

.field public static final enum FingerprintAuthenticationFail:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

.field public static final enum FingerprintAuthenticationSuccess:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    const-string/jumbo v1, "Authenticating"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    const-string/jumbo v1, "AuthenticationSuccess"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->AuthenticationSuccess:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    const-string/jumbo v1, "AuthenticationFail"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->AuthenticationFail:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    const-string/jumbo v1, "FingerprintAuthenticationSuccess"

    invoke-direct {v0, v1, v5}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationSuccess:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    const-string/jumbo v1, "FingerprintAuthenticationFail"

    invoke-direct {v0, v1, v6}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationFail:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->AuthenticationSuccess:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->AuthenticationFail:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationSuccess:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationFail:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->$VALUES:[Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;
    .locals 1

    const-class v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;
    .locals 1

    sget-object v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->$VALUES:[Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    return-object v0
.end method
