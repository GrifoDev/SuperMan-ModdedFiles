.class final enum Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/help/AcceptingAndRejectingCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IncomingCallTutorialStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

.field public static final enum ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

.field public static final enum END_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

.field public static final enum INIT:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

.field public static final enum REJECT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->INIT:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    const-string v1, "ACCEPT_CALL"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    const-string v1, "END_CALL"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    new-instance v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    const-string v1, "REJECT_CALL"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    sget-object v1, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->INIT:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->$VALUES:[Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;
    .locals 1

    const-class v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;
    .locals 1

    sget-object v0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->$VALUES:[Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    invoke-virtual {v0}, [Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/help/AcceptingAndRejectingCalls$IncomingCallTutorialStep;

    return-object v0
.end method
