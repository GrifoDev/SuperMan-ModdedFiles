.class final enum Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;
.super Ljava/lang/Enum;
.source "QuickOptionsPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickOptionsPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnchorPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

.field public static final enum CENTER:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

.field public static final enum LEFT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

.field public static final enum RIGHT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->LEFT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    new-instance v0, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->RIGHT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    new-instance v0, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->CENTER:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    sget-object v1, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->LEFT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->RIGHT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->CENTER:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->$VALUES:[Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;
    .locals 1

    const-class v0, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;
    .locals 1

    sget-object v0, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->$VALUES:[Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    invoke-virtual {v0}, [Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    return-object v0
.end method
