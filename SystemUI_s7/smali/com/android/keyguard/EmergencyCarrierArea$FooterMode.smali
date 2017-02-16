.class final enum Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;
.super Ljava/lang/Enum;
.source "EmergencyCarrierArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/EmergencyCarrierArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FooterMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

.field public static final enum BackupPIN:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

.field public static final enum ForgotLockPattern:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

.field public static final enum Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

.field public static final enum SamsungAccountOnly:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

.field public static final enum VerifyUnlocked:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    const-string/jumbo v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    new-instance v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    const-string/jumbo v1, "ForgotLockPattern"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    new-instance v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    const-string/jumbo v1, "BackupPIN"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->BackupPIN:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    new-instance v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    const-string/jumbo v1, "VerifyUnlocked"

    invoke-direct {v0, v1, v5}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    new-instance v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    const-string/jumbo v1, "SamsungAccountOnly"

    invoke-direct {v0, v1, v6}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->SamsungAccountOnly:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->BackupPIN:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->SamsungAccountOnly:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->$VALUES:[Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;
    .locals 1

    const-class v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;
    .locals 1

    sget-object v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->$VALUES:[Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    return-object v0
.end method
