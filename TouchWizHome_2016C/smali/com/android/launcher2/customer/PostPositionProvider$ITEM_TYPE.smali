.class public final enum Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;
.super Ljava/lang/Enum;
.source "PostPositionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/customer/PostPositionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ITEM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

.field public static final enum APP:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

.field public static final enum SHORTCUT:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

.field public static final enum WIDGET:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    const-string v1, "APP"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    new-instance v0, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    const-string v1, "WIDGET"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    new-instance v0, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    const-string v1, "SHORTCUT"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->SHORTCUT:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    sget-object v1, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->SHORTCUT:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->$VALUES:[Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;
    .locals 1

    const-class v0, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;
    .locals 1

    sget-object v0, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->$VALUES:[Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v0}, [Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    return-object v0
.end method
