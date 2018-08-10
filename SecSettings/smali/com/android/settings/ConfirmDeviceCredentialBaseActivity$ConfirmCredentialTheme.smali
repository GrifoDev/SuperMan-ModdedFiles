.class final enum Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
.super Ljava/lang/Enum;
.source "ConfirmDeviceCredentialBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConfirmCredentialTheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

.field public static final enum DARK:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

.field public static final enum INTERNAL:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

.field public static final enum WORK:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    const-string/jumbo v1, "INTERNAL"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->INTERNAL:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    new-instance v0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    const-string/jumbo v1, "DARK"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    new-instance v0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    const-string/jumbo v1, "WORK"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->WORK:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    sget-object v1, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->INTERNAL:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->WORK:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->$VALUES:[Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    .locals 1

    const-class v0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    .locals 1

    sget-object v0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->$VALUES:[Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    return-object v0
.end method
