.class final enum Lorg/simpleframework/xml/transform/DateType;
.super Ljava/lang/Enum;
.source "DateType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/transform/DateType$DateFormat;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/simpleframework/xml/transform/DateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/simpleframework/xml/transform/DateType;

.field public static final enum FULL:Lorg/simpleframework/xml/transform/DateType;

.field public static final enum LONG:Lorg/simpleframework/xml/transform/DateType;

.field public static final enum NORMAL:Lorg/simpleframework/xml/transform/DateType;

.field public static final enum SHORT:Lorg/simpleframework/xml/transform/DateType;


# instance fields
.field private format:Lorg/simpleframework/xml/transform/DateType$DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/simpleframework/xml/transform/DateType;

    const-string/jumbo v1, "FULL"

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.S z"

    invoke-direct {v0, v1, v3, v2}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    new-instance v0, Lorg/simpleframework/xml/transform/DateType;

    const-string/jumbo v1, "LONG"

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss z"

    invoke-direct {v0, v1, v4, v2}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/xml/transform/DateType;->LONG:Lorg/simpleframework/xml/transform/DateType;

    new-instance v0, Lorg/simpleframework/xml/transform/DateType;

    const-string/jumbo v1, "NORMAL"

    const-string/jumbo v2, "yyyy-MM-dd z"

    invoke-direct {v0, v1, v5, v2}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/xml/transform/DateType;->NORMAL:Lorg/simpleframework/xml/transform/DateType;

    new-instance v0, Lorg/simpleframework/xml/transform/DateType;

    const-string/jumbo v1, "SHORT"

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v0, v1, v6, v2}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/xml/transform/DateType;->SHORT:Lorg/simpleframework/xml/transform/DateType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/simpleframework/xml/transform/DateType;

    sget-object v1, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/simpleframework/xml/transform/DateType;->LONG:Lorg/simpleframework/xml/transform/DateType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/simpleframework/xml/transform/DateType;->NORMAL:Lorg/simpleframework/xml/transform/DateType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/simpleframework/xml/transform/DateType;->SHORT:Lorg/simpleframework/xml/transform/DateType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/simpleframework/xml/transform/DateType;->$VALUES:[Lorg/simpleframework/xml/transform/DateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/simpleframework/xml/transform/DateType$DateFormat;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/transform/DateType$DateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/DateType;->format:Lorg/simpleframework/xml/transform/DateType$DateFormat;

    return-void
.end method

.method public static getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lorg/simpleframework/xml/transform/DateType;->getType(Ljava/lang/String;)Lorg/simpleframework/xml/transform/DateType;

    move-result-object v1

    invoke-direct {v1}, Lorg/simpleframework/xml/transform/DateType;->getFormat()Lorg/simpleframework/xml/transform/DateType$DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/transform/DateType$DateFormat;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method private getFormat()Lorg/simpleframework/xml/transform/DateType$DateFormat;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/transform/DateType;->format:Lorg/simpleframework/xml/transform/DateType$DateFormat;

    return-object v0
.end method

.method public static getText(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v1, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    invoke-direct {v1}, Lorg/simpleframework/xml/transform/DateType;->getFormat()Lorg/simpleframework/xml/transform/DateType$DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/transform/DateType$DateFormat;->getText(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getType(Ljava/lang/String;)Lorg/simpleframework/xml/transform/DateType;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    const/16 v1, 0xb

    if-gt v0, v1, :cond_2

    sget-object v1, Lorg/simpleframework/xml/transform/DateType;->SHORT:Lorg/simpleframework/xml/transform/DateType;

    return-object v1

    :cond_0
    sget-object v1, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    return-object v1

    :cond_1
    sget-object v1, Lorg/simpleframework/xml/transform/DateType;->LONG:Lorg/simpleframework/xml/transform/DateType;

    return-object v1

    :cond_2
    sget-object v1, Lorg/simpleframework/xml/transform/DateType;->NORMAL:Lorg/simpleframework/xml/transform/DateType;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/xml/transform/DateType;
    .locals 1

    const-class v0, Lorg/simpleframework/xml/transform/DateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/transform/DateType;

    return-object v0
.end method

.method public static values()[Lorg/simpleframework/xml/transform/DateType;
    .locals 1

    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->$VALUES:[Lorg/simpleframework/xml/transform/DateType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simpleframework/xml/transform/DateType;

    return-object v0
.end method
