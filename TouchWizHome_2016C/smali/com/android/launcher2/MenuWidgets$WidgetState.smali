.class abstract enum Lcom/android/launcher2/MenuWidgets$WidgetState;
.super Ljava/lang/Enum;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "WidgetState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/MenuWidgets$WidgetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/MenuWidgets$WidgetState;

.field public static final enum NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

.field public static final enum SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

.field public static final enum UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/MenuWidgets$WidgetState$1;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuWidgets$WidgetState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    new-instance v0, Lcom/android/launcher2/MenuWidgets$WidgetState$2;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/MenuWidgets$WidgetState$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    new-instance v0, Lcom/android/launcher2/MenuWidgets$WidgetState$3;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/MenuWidgets$WidgetState$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/launcher2/MenuWidgets$WidgetState;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->$VALUES:[Lcom/android/launcher2/MenuWidgets$WidgetState;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/launcher2/MenuWidgets$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets$WidgetState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 1

    const-class v0, Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuWidgets$WidgetState;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->$VALUES:[Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0}, [Lcom/android/launcher2/MenuWidgets$WidgetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/MenuWidgets$WidgetState;

    return-object v0
.end method


# virtual methods
.method protected abstract getName()Ljava/lang/String;
.end method

.method protected abstract getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.end method
