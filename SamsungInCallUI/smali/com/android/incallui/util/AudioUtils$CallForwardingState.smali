.class public final enum Lcom/android/incallui/util/AudioUtils$CallForwardingState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/AudioUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallForwardingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/util/AudioUtils$CallForwardingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/util/AudioUtils$CallForwardingState;

.field public static final enum INVALID:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

.field public static final enum STARTED:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

.field public static final enum STOPPED:Lcom/android/incallui/util/AudioUtils$CallForwardingState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/util/AudioUtils$CallForwardingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/util/AudioUtils$CallForwardingState;->INVALID:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    new-instance v0, Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/util/AudioUtils$CallForwardingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/util/AudioUtils$CallForwardingState;->STOPPED:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    new-instance v0, Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/util/AudioUtils$CallForwardingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/util/AudioUtils$CallForwardingState;->STARTED:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    sget-object v1, Lcom/android/incallui/util/AudioUtils$CallForwardingState;->INVALID:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/util/AudioUtils$CallForwardingState;->STOPPED:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/util/AudioUtils$CallForwardingState;->STARTED:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/incallui/util/AudioUtils$CallForwardingState;->$VALUES:[Lcom/android/incallui/util/AudioUtils$CallForwardingState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/util/AudioUtils$CallForwardingState;
    .locals 1

    const-class v0, Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/util/AudioUtils$CallForwardingState;
    .locals 1

    sget-object v0, Lcom/android/incallui/util/AudioUtils$CallForwardingState;->$VALUES:[Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    invoke-virtual {v0}, [Lcom/android/incallui/util/AudioUtils$CallForwardingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    return-object v0
.end method
