.class Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$10;
.super Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListenerAdapter;
.source "KeyguardServiceBoxContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$10;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$10;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$10;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-wrap0(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;)V

    return-void
.end method
