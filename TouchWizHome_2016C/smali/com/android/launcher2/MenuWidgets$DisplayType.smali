.class public final enum Lcom/android/launcher2/MenuWidgets$DisplayType;
.super Ljava/lang/Enum;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/MenuWidgets$DisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/MenuWidgets$DisplayType;

.field public static final enum ALL:Lcom/android/launcher2/MenuWidgets$DisplayType;

.field public static final enum NORMAL:Lcom/android/launcher2/MenuWidgets$DisplayType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/MenuWidgets$DisplayType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuWidgets$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuWidgets$DisplayType;->ALL:Lcom/android/launcher2/MenuWidgets$DisplayType;

    new-instance v0, Lcom/android/launcher2/MenuWidgets$DisplayType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/MenuWidgets$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuWidgets$DisplayType;->NORMAL:Lcom/android/launcher2/MenuWidgets$DisplayType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher2/MenuWidgets$DisplayType;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$DisplayType;->ALL:Lcom/android/launcher2/MenuWidgets$DisplayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/MenuWidgets$DisplayType;->NORMAL:Lcom/android/launcher2/MenuWidgets$DisplayType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/launcher2/MenuWidgets$DisplayType;->$VALUES:[Lcom/android/launcher2/MenuWidgets$DisplayType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuWidgets$DisplayType;
    .locals 1

    const-class v0, Lcom/android/launcher2/MenuWidgets$DisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuWidgets$DisplayType;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/MenuWidgets$DisplayType;
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuWidgets$DisplayType;->$VALUES:[Lcom/android/launcher2/MenuWidgets$DisplayType;

    invoke-virtual {v0}, [Lcom/android/launcher2/MenuWidgets$DisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/MenuWidgets$DisplayType;

    return-object v0
.end method
