.class public final enum Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;
.super Ljava/lang/Enum;
.source "KeyguardClockPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InternalClockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

.field public static final enum DefaultDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

.field public static final enum DefaultSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

.field public static final enum ExpandImageSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

.field public static final enum ExpandSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

.field public static final enum ImageDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

.field public static final enum ImageSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

.field public static final enum None:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->None:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    const-string/jumbo v1, "DefaultSingle2016"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    const-string/jumbo v1, "DefaultDual2016"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    const-string/jumbo v1, "ImageSingle2016"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    const-string/jumbo v1, "ImageDual2016"

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    const-string/jumbo v1, "ExpandSingle"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    const-string/jumbo v1, "ExpandImageSingle"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandImageSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->None:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandImageSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->$VALUES:[Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;
    .locals 1

    const-class v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;
    .locals 1

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->$VALUES:[Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    return-object v0
.end method
