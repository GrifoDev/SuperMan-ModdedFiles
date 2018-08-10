.class final enum Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;
.super Ljava/lang/Enum;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/rcs/RcsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RcsMpsStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

.field public static final enum DISABLED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

.field public static final enum ENABLED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

.field public static final enum NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    const-string/jumbo v1, "NO_FEATURE_TAG"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    const-string/jumbo v1, "ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->ENABLED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->DISABLED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->ENABLED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->DISABLED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->$VALUES:[Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->$VALUES:[Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v0
.end method
