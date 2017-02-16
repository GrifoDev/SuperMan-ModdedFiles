.class public final enum Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;
.super Ljava/lang/Enum;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICC_CARD_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

.field public static final enum INSERTED:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

.field public static final enum REMOVED:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

.field public static final enum UNKNOWN:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->UNKNOWN:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    const-string/jumbo v1, "INSERTED"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->INSERTED:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    const-string/jumbo v1, "REMOVED"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->REMOVED:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->UNKNOWN:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->INSERTED:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->REMOVED:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->$VALUES:[Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->$VALUES:[Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    return-object v0
.end method
