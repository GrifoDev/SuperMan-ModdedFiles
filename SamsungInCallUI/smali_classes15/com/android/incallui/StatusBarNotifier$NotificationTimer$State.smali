.class public final enum Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;
.super Ljava/lang/Enum;
.source "StatusBarNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/StatusBarNotifier$NotificationTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

.field public static final enum CLEAR:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

.field public static final enum FIRED:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

.field public static final enum SCHEDULED:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    const-string v1, "SCHEDULED"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->SCHEDULED:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    new-instance v0, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    const-string v1, "FIRED"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->FIRED:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    new-instance v0, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    const-string v1, "CLEAR"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->CLEAR:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    sget-object v1, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->SCHEDULED:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->FIRED:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->CLEAR:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->$VALUES:[Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;
    .locals 1

    const-class v0, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;
    .locals 1

    sget-object v0, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->$VALUES:[Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    invoke-virtual {v0}, [Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    return-object v0
.end method
