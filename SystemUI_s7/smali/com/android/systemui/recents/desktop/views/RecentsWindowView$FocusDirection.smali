.class public final enum Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;
.super Ljava/lang/Enum;
.source "RecentsWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/desktop/views/RecentsWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FocusDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

.field public static final enum DOWN:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

.field public static final enum LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

.field public static final enum NONE:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

.field public static final enum RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

.field public static final enum UP:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    const-string/jumbo v1, "UP"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->UP:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    const-string/jumbo v1, "DOWN"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->DOWN:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->NONE:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->UP:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->DOWN:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->NONE:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->$VALUES:[Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;
    .locals 1

    const-class v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->$VALUES:[Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    return-object v0
.end method
