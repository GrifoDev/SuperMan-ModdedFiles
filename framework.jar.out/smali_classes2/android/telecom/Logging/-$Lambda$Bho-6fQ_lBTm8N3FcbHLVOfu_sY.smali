.class final synthetic Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/EventManager;

    check-cast p1, Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-virtual {v0, p1}, Landroid/telecom/Logging/EventManager;->lambda$-android_telecom_Logging_EventManager_11378(Landroid/telecom/Logging/EventManager$EventRecord;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
