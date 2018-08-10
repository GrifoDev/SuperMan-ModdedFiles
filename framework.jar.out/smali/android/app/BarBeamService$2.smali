.class Landroid/app/BarBeamService$2;
.super Ljava/util/TimerTask;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BarBeamService;->blinkLED()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bSwitch:Z

.field final synthetic this$0:Landroid/app/BarBeamService;


# direct methods
.method constructor <init>(Landroid/app/BarBeamService;)V
    .locals 1

    iput-object p1, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/BarBeamService$2;->bSwitch:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    iget-boolean v1, p0, Landroid/app/BarBeamService$2;->bSwitch:Z

    invoke-static {v0, v1}, Landroid/app/BarBeamService;->-wrap0(Landroid/app/BarBeamService;Z)Z

    iget-boolean v0, p0, Landroid/app/BarBeamService$2;->bSwitch:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/app/BarBeamService$2;->bSwitch:Z

    return-void
.end method
