.class public Lcom/cmdm/control/http/d;
.super Ljava/lang/Object;


# static fields
.field public static bO:Ljava/lang/String; = null

.field public static bP:Ljava/lang/String; = null

.field public static bQ:Ljava/lang/String; = null

.field public static bR:Ljava/lang/String; = null

.field public static bS:Ljava/lang/String; = null

.field public static bT:Ljava/lang/String; = null

.field public static final bU:Ljava/lang/String; = "1065843199"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "60.217.72.30:8000"

    sput-object v0, Lcom/cmdm/control/http/d;->bO:Ljava/lang/String;

    const-string v0, "218.207.208.46:80"

    sput-object v0, Lcom/cmdm/control/http/d;->bP:Ljava/lang/String;

    const-string v0, "60.217.72.25:8002"

    sput-object v0, Lcom/cmdm/control/http/d;->bQ:Ljava/lang/String;

    const-string v0, "60.217.72.30:18000"

    sput-object v0, Lcom/cmdm/control/http/d;->bR:Ljava/lang/String;

    const-string v0, "60.217.72.25:8888"

    sput-object v0, Lcom/cmdm/control/http/d;->bS:Ljava/lang/String;

    const-string v0, "112.5.196.26:8001"

    sput-object v0, Lcom/cmdm/control/http/d;->bT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static x(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/cmdm/control/http/d;->bP:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/cmdm/control/http/d;->bR:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/cmdm/control/http/d;->bQ:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/cmdm/control/http/d;->bP:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/cmdm/control/http/d;->bO:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/cmdm/control/http/d;->bS:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/cmdm/control/http/d;->bT:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final y(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cmdm/control/http/d;->x(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/shanshow_web/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
