.class final enum Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;
.super Ljava/lang/Enum;
.source "GuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/guide/GuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GuideModes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

.field public static final enum BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

.field public static final enum BLUETOOTH_SETTING:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

.field public static final enum WIFI:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

.field public static final enum WIFI_SETTINGS:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    const-string/jumbo v1, "WIFI"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->WIFI:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    new-instance v0, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    const-string/jumbo v1, "WIFI_SETTINGS"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    new-instance v0, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    const-string/jumbo v1, "BLUETOOTH"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    new-instance v0, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    const-string/jumbo v1, "BLUETOOTH_SETTING"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->WIFI:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->$VALUES:[Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->$VALUES:[Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    return-object v0
.end method
