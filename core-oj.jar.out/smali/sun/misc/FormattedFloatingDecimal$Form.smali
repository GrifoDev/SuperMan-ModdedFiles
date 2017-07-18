.class public final enum Lsun/misc/FormattedFloatingDecimal$Form;
.super Ljava/lang/Enum;
.source "FormattedFloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/FormattedFloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Form"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/misc/FormattedFloatingDecimal$Form;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/misc/FormattedFloatingDecimal$Form;

.field public static final enum COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

.field public static final enum DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

.field public static final enum GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

.field public static final enum SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lsun/misc/FormattedFloatingDecimal$Form;

    const-string/jumbo v1, "SCIENTIFIC"

    invoke-direct {v0, v1, v2}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    new-instance v0, Lsun/misc/FormattedFloatingDecimal$Form;

    const-string/jumbo v1, "COMPATIBLE"

    invoke-direct {v0, v1, v3}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    new-instance v0, Lsun/misc/FormattedFloatingDecimal$Form;

    const-string/jumbo v1, "DECIMAL_FLOAT"

    invoke-direct {v0, v1, v4}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    new-instance v0, Lsun/misc/FormattedFloatingDecimal$Form;

    const-string/jumbo v1, "GENERAL"

    invoke-direct {v0, v1, v5}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    const/4 v0, 0x4

    new-array v0, v0, [Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    aput-object v1, v0, v2

    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    aput-object v1, v0, v3

    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    aput-object v1, v0, v4

    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    aput-object v1, v0, v5

    sput-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->$VALUES:[Lsun/misc/FormattedFloatingDecimal$Form;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/misc/FormattedFloatingDecimal$Form;
    .locals 1

    const-class v0, Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/misc/FormattedFloatingDecimal$Form;

    return-object v0
.end method

.method public static values()[Lsun/misc/FormattedFloatingDecimal$Form;
    .locals 1

    sget-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->$VALUES:[Lsun/misc/FormattedFloatingDecimal$Form;

    return-object v0
.end method
