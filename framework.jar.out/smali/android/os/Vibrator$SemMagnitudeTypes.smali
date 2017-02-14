.class public final enum Landroid/os/Vibrator$SemMagnitudeTypes;
.super Ljava/lang/Enum;
.source "Vibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Vibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SemMagnitudeTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/os/Vibrator$SemMagnitudeTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/Vibrator$SemMagnitudeTypes;

.field public static final enum TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

.field public static final enum TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

.field public static final enum TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

.field public static final enum TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

.field public static final enum TYPE_MIN:Landroid/os/Vibrator$SemMagnitudeTypes;

.field public static final enum TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

.field public static final enum TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    const-string/jumbo v1, "TYPE_TOUCH"

    invoke-direct {v0, v1, v3}, Landroid/os/Vibrator$SemMagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    const-string/jumbo v1, "TYPE_NOTIFICATION"

    invoke-direct {v0, v1, v4}, Landroid/os/Vibrator$SemMagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    const-string/jumbo v1, "TYPE_CALL"

    invoke-direct {v0, v1, v5}, Landroid/os/Vibrator$SemMagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    const-string/jumbo v1, "TYPE_MAX"

    invoke-direct {v0, v1, v6}, Landroid/os/Vibrator$SemMagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    const-string/jumbo v1, "TYPE_MIN"

    invoke-direct {v0, v1, v7}, Landroid/os/Vibrator$SemMagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MIN:Landroid/os/Vibrator$SemMagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    const-string/jumbo v1, "TYPE_EXTRA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/Vibrator$SemMagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    const-string/jumbo v1, "TYPE_FORCE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/os/Vibrator$SemMagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/os/Vibrator$SemMagnitudeTypes;

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    aput-object v1, v0, v5

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    aput-object v1, v0, v6

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MIN:Landroid/os/Vibrator$SemMagnitudeTypes;

    aput-object v1, v0, v7

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->$VALUES:[Landroid/os/Vibrator$SemMagnitudeTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/Vibrator$SemMagnitudeTypes;
    .locals 1

    const-class v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    return-object v0
.end method

.method public static values()[Landroid/os/Vibrator$SemMagnitudeTypes;
    .locals 1

    sget-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->$VALUES:[Landroid/os/Vibrator$SemMagnitudeTypes;

    return-object v0
.end method
