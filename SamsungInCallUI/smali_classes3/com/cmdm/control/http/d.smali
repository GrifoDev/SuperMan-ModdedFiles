.class public Lcom/cmdm/control/http/d;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    .line 16
    const-string v0, "60.217.72.30:8000"

    sput-object v0, Lcom/cmdm/control/http/d;->bO:Ljava/lang/String;

    .line 20
    const-string v0, "218.207.208.46:80"

    sput-object v0, Lcom/cmdm/control/http/d;->bP:Ljava/lang/String;

    .line 27
    const-string v0, "60.217.72.25:8002"

    sput-object v0, Lcom/cmdm/control/http/d;->bQ:Ljava/lang/String;

    .line 32
    const-string v0, "60.217.72.30:18000"

    sput-object v0, Lcom/cmdm/control/http/d;->bR:Ljava/lang/String;

    .line 34
    const-string v0, "60.217.72.25:8888"

    sput-object v0, Lcom/cmdm/control/http/d;->bS:Ljava/lang/String;

    .line 36
    const-string v0, "112.5.196.26:8001"

    sput-object v0, Lcom/cmdm/control/http/d;->bT:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static x(I)Ljava/lang/String;
    .locals 1
    .param p0, "serverAddress"    # I

    .prologue
    .line 47
    const-string v0, ""

    .line 48
    .local v0, "Host":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 68
    sget-object v0, Lcom/cmdm/control/http/d;->bP:Ljava/lang/String;

    .line 72
    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    sget-object v0, Lcom/cmdm/control/http/d;->bR:Ljava/lang/String;

    .line 51
    goto :goto_0

    .line 53
    :pswitch_1
    sget-object v0, Lcom/cmdm/control/http/d;->bQ:Ljava/lang/String;

    .line 54
    goto :goto_0

    .line 56
    :pswitch_2
    sget-object v0, Lcom/cmdm/control/http/d;->bP:Ljava/lang/String;

    .line 57
    goto :goto_0

    .line 59
    :pswitch_3
    sget-object v0, Lcom/cmdm/control/http/d;->bO:Ljava/lang/String;

    .line 60
    goto :goto_0

    .line 62
    :pswitch_4
    sget-object v0, Lcom/cmdm/control/http/d;->bS:Ljava/lang/String;

    .line 63
    goto :goto_0

    .line 65
    :pswitch_5
    sget-object v0, Lcom/cmdm/control/http/d;->bT:Ljava/lang/String;

    .line 66
    goto :goto_0

    .line 48
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
    .param p0, "serverAddress"    # I

    .prologue
    .line 76
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
