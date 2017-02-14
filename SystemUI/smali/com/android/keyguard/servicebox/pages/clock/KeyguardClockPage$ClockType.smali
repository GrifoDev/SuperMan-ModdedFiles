.class final enum Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;
.super Ljava/lang/Enum;
.source "KeyguardClockPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ClockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

.field public static final enum DefaultDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

.field public static final enum DefaultSingle2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

.field public static final enum ExpandDual:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

.field public static final enum ExpandSingle:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

.field public static final enum ImageDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

.field public static final enum ImageSingle2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

.field public static final enum None:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->None:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    const-string/jumbo v1, "DefaultSingle2016"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->DefaultSingle2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    const-string/jumbo v1, "DefaultDual2016"

    invoke-direct {v0, v1, v5}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->DefaultDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    const-string/jumbo v1, "ImageSingle2016"

    invoke-direct {v0, v1, v6}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ImageSingle2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    const-string/jumbo v1, "ImageDual2016"

    invoke-direct {v0, v1, v7}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ImageDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    const-string/jumbo v1, "ExpandSingle"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ExpandSingle:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    const-string/jumbo v1, "ExpandDual"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ExpandDual:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->None:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->DefaultSingle2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->DefaultDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ImageSingle2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ImageDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ExpandSingle:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ExpandDual:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->$VALUES:[Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;
    .locals 1

    const-class v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;
    .locals 1

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->$VALUES:[Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    return-object v0
.end method
