.class final Lcom/android/systemui/qs/tiles/UDSTile$DataCallback;
.super Lcom/android/systemui/statusbar/policy/SignalCallbackAdapter;
.source "UDSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UDSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UDSTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/UDSTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UDSTile$DataCallback;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SignalCallbackAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/UDSTile;Lcom/android/systemui/qs/tiles/UDSTile$DataCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/UDSTile$DataCallback;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;)V

    return-void
.end method


# virtual methods
.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 3

    const-string/jumbo v0, "UDSTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsAirplaneMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile$DataCallback;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/UDSTile;->-set0(Lcom/android/systemui/qs/tiles/UDSTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile$DataCallback;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/UDSTile;->refreshState()V

    return-void
.end method
