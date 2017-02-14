.class final enum Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;
.super Ljava/lang/Enum;
.source "OpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ChangeableItems"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

.field public static final enum GRID_X:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

.field public static final enum GRID_Y:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

.field public static final enum ICON_BG_RANGE:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

.field public static final enum ICON_SCALE:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    const-string v1, "GRID_X"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;->GRID_X:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    const-string v1, "GRID_Y"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;->GRID_Y:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    const-string v1, "ICON_BG_RANGE"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;->ICON_BG_RANGE:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    const-string v1, "ICON_SCALE"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;->ICON_SCALE:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;->GRID_X:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;->GRID_Y:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;->ICON_BG_RANGE:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;->ICON_SCALE:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;->$VALUES:[Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;
    .locals 1

    const-class v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;
    .locals 1

    sget-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;->$VALUES:[Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    invoke-virtual {v0}, [Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$ChangeableItems;->value:I

    return v0
.end method
