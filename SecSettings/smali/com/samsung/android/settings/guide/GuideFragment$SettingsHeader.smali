.class final enum Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;
.super Ljava/lang/Enum;
.source "GuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/guide/GuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SettingsHeader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

.field public static final enum BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

.field public static final enum NONE:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

.field public static final enum WIFI:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;


# instance fields
.field private final mGuideMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

.field private final mHeaderId:J


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-instance v1, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    const-string/jumbo v2, "NONE"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;-><init>(Ljava/lang/String;IJLcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V

    sput-object v1, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    new-instance v5, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    const-string/jumbo v6, "WIFI"

    const-wide/32 v8, 0x7f0a09d8

    sget-object v10, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;-><init>(Ljava/lang/String;IJLcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V

    sput-object v5, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->WIFI:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    new-instance v9, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    const-string/jumbo v10, "BLUETOOTH"

    const-wide/32 v12, 0x7f0a0107

    sget-object v14, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;-><init>(Ljava/lang/String;IJLcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V

    sput-object v9, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->WIFI:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    aput-object v1, v0, v11

    sput-object v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->$VALUES:[Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJLcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->mHeaderId:J

    iput-object p5, p0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->mGuideMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->$VALUES:[Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    return-object v0
.end method
