.class Lcom/android/systemui/servicebox/pages/music/MusicController$5;
.super Ljava/lang/Object;
.source "MusicController.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/music/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/music/MusicController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$5;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadsetConnected()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$5;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap6(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    return-void
.end method

.method public onHeadsetDisconnected()V
    .locals 0

    return-void
.end method
