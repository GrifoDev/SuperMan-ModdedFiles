.class final enum Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;
.super Ljava/lang/Enum;
.source "PageIndicatorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PageIndicatorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DISPLAY_ITEM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

.field public static final enum ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

.field public static final enum FESTIVAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

.field public static final enum NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    const-string v1, "ALL_PAGE"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    new-instance v0, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    const-string v1, "FESTIVAL_PAGE"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->FESTIVAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    new-instance v0, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    const-string v1, "NORMAL_PAGE"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    sget-object v1, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->FESTIVAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->$VALUES:[Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;
    .locals 1

    const-class v0, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;
    .locals 1

    sget-object v0, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->$VALUES:[Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v0}, [Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    return-object v0
.end method
