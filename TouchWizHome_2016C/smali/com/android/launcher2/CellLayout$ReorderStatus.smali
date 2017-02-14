.class public final enum Lcom/android/launcher2/CellLayout$ReorderStatus;
.super Ljava/lang/Enum;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReorderStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/CellLayout$ReorderStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/CellLayout$ReorderStatus;

.field public static final enum REORDER_DEFAULT:Lcom/android/launcher2/CellLayout$ReorderStatus;

.field public static final enum REORDER_DELAYING:Lcom/android/launcher2/CellLayout$ReorderStatus;

.field public static final enum REORDER_DELAY_END:Lcom/android/launcher2/CellLayout$ReorderStatus;

.field public static final enum REORDER_NEED_FIND_DROP_POSITION:Lcom/android/launcher2/CellLayout$ReorderStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/CellLayout$ReorderStatus;

    const-string v1, "REORDER_DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellLayout$ReorderStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DEFAULT:Lcom/android/launcher2/CellLayout$ReorderStatus;

    new-instance v0, Lcom/android/launcher2/CellLayout$ReorderStatus;

    const-string v1, "REORDER_DELAYING"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/CellLayout$ReorderStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DELAYING:Lcom/android/launcher2/CellLayout$ReorderStatus;

    new-instance v0, Lcom/android/launcher2/CellLayout$ReorderStatus;

    const-string v1, "REORDER_DELAY_END"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/CellLayout$ReorderStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DELAY_END:Lcom/android/launcher2/CellLayout$ReorderStatus;

    new-instance v0, Lcom/android/launcher2/CellLayout$ReorderStatus;

    const-string v1, "REORDER_NEED_FIND_DROP_POSITION"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/CellLayout$ReorderStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_NEED_FIND_DROP_POSITION:Lcom/android/launcher2/CellLayout$ReorderStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher2/CellLayout$ReorderStatus;

    sget-object v1, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DEFAULT:Lcom/android/launcher2/CellLayout$ReorderStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DELAYING:Lcom/android/launcher2/CellLayout$ReorderStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DELAY_END:Lcom/android/launcher2/CellLayout$ReorderStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_NEED_FIND_DROP_POSITION:Lcom/android/launcher2/CellLayout$ReorderStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/launcher2/CellLayout$ReorderStatus;->$VALUES:[Lcom/android/launcher2/CellLayout$ReorderStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/CellLayout$ReorderStatus;
    .locals 1

    const-class v0, Lcom/android/launcher2/CellLayout$ReorderStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$ReorderStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/CellLayout$ReorderStatus;
    .locals 1

    sget-object v0, Lcom/android/launcher2/CellLayout$ReorderStatus;->$VALUES:[Lcom/android/launcher2/CellLayout$ReorderStatus;

    invoke-virtual {v0}, [Lcom/android/launcher2/CellLayout$ReorderStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/CellLayout$ReorderStatus;

    return-object v0
.end method
