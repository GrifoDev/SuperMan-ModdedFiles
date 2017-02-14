.class public final enum Lcom/android/launcher2/IconConfig$TYPE;
.super Ljava/lang/Enum;
.source "IconConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/IconConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/IconConfig$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/IconConfig$TYPE;

.field public static final enum HOME:Lcom/android/launcher2/IconConfig$TYPE;

.field public static final enum HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

.field public static final enum MENU:Lcom/android/launcher2/IconConfig$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/IconConfig$TYPE;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/IconConfig$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    new-instance v0, Lcom/android/launcher2/IconConfig$TYPE;

    const-string v1, "MENU"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/IconConfig$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/IconConfig$TYPE;->MENU:Lcom/android/launcher2/IconConfig$TYPE;

    new-instance v0, Lcom/android/launcher2/IconConfig$TYPE;

    const-string v1, "HOTSEAT"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/IconConfig$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/launcher2/IconConfig$TYPE;

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->MENU:Lcom/android/launcher2/IconConfig$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher2/IconConfig$TYPE;->$VALUES:[Lcom/android/launcher2/IconConfig$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/IconConfig$TYPE;
    .locals 1

    const-class v0, Lcom/android/launcher2/IconConfig$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/IconConfig$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/IconConfig$TYPE;
    .locals 1

    sget-object v0, Lcom/android/launcher2/IconConfig$TYPE;->$VALUES:[Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v0}, [Lcom/android/launcher2/IconConfig$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/IconConfig$TYPE;

    return-object v0
.end method
