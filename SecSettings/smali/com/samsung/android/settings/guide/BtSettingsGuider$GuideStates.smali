.class public final enum Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;
.super Ljava/lang/Enum;
.source "BtSettingsGuider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/guide/BtSettingsGuider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GuideStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

.field public static final enum CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

.field public static final enum ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

.field public static final enum FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

.field public static final enum NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

.field public static final enum NOT_FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

.field public static final enum SCAN:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

.field public static final enum SCANNING:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    new-instance v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    const-string/jumbo v1, "SCAN"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    new-instance v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    const-string/jumbo v1, "SCANNING"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    new-instance v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    const-string/jumbo v1, "FOUND"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    new-instance v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    new-instance v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    const-string/jumbo v1, "ENABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    new-instance v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    const-string/jumbo v1, "NOT_FOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NOT_FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NOT_FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->$VALUES:[Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->$VALUES:[Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    return-object v0
.end method
