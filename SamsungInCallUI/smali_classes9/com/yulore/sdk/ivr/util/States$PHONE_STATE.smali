.class public Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;
.super Ljava/lang/Object;
.source "States.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/sdk/ivr/util/States;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PHONE_STATE"
.end annotation


# static fields
.field public static CALL_NUM:Ljava/lang/String;

.field public static CLICK_NUM:J

.field public static IVRNUMBER:Z

.field public static IVR_STATUS:Ljava/lang/String;

.field public static OUTGOINGCALL:Z

.field public static SHOW_TIME:J

.field public static SIM_NUM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->CLICK_NUM:J

    .line 31
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->SHOW_TIME:J

    .line 35
    sput-boolean v2, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->IVRNUMBER:Z

    .line 39
    sput-boolean v2, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->OUTGOINGCALL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resetStates()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    const-string v0, ""

    sput-object v0, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->SIM_NUM:Ljava/lang/String;

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->CALL_NUM:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->IVR_STATUS:Ljava/lang/String;

    .line 48
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->CLICK_NUM:J

    .line 49
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->SHOW_TIME:J

    .line 50
    sput-boolean v2, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->IVRNUMBER:Z

    .line 51
    sput-boolean v2, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->OUTGOINGCALL:Z

    .line 52
    return-void
.end method
