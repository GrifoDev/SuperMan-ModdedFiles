.class public final enum Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;
.super Ljava/lang/Enum;
.source "KeyguardConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field public static final enum KEYGUARD_DISMISS_ACTION_ACTIVE:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field public static final enum KEYGUARD_DISMISS_ACTION_SHUTDOWN:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    const-string/jumbo v1, "KEYGUARD_DISMISS_ACTION_ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_ACTIVE:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    new-instance v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    const-string/jumbo v1, "KEYGUARD_DISMISS_ACTION_SHUTDOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_SHUTDOWN:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    sget-object v1, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_ACTIVE:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_SHUTDOWN:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->$VALUES:[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->$VALUES:[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    return-object v0
.end method
