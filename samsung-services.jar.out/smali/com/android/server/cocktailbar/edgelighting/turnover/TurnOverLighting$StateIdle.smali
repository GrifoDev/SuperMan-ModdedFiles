.class Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;
.super Ljava/lang/Object;
.source "TurnOverLighting.java"

# interfaces
.implements Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateIdle"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;->this$0:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;-><init>(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;)V

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNotification()Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;->this$0:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->-get1(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;)Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;->this$0:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->run(Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;)V

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateNotification;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;->this$0:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;

    invoke-direct {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateNotification;-><init>(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;)V

    return-object v0
.end method

.method public onRinging()Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;->this$0:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->-get1(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;)Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;->this$0:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->run(Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;)V

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;->this$0:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;-><init>(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;I)V

    return-object v0
.end method

.method public onScreenChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
