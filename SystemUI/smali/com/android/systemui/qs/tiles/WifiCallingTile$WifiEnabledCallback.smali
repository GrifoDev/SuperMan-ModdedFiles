.class final Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;
.super Ljava/lang/Object;
.source "WifiCallingTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiEnabledCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    return-void
.end method


# virtual methods
.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZILjava/lang/String;Z)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;->setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V

    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get9(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v0

    iget-boolean v1, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    iget-boolean v1, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-set4(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get1(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiEnabledCallback.setWifiIndicators() mWifiConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiEnabledCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get9(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
