.class final enum Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;
.super Ljava/lang/Enum;
.source "CaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Msg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

.field public static final enum IDLE:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

.field public static final enum INCOMING_RINGING:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

.field public static final enum OFF_HOOK:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;


# instance fields
.field private final val:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    const-string/jumbo v1, "IDLE"

    const-string/jumbo v2, "MSG_IDLE"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->IDLE:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    const-string/jumbo v1, "INCOMING_RINGING"

    const-string/jumbo v2, "MSG_INCOMING_RINGING"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->INCOMING_RINGING:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    const-string/jumbo v1, "OFF_HOOK"

    const-string/jumbo v2, "MSG_OFF_HOOK"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->OFF_HOOK:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->IDLE:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->INCOMING_RINGING:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->OFF_HOOK:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->$VALUES:[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->val:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->$VALUES:[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    return-object v0
.end method
