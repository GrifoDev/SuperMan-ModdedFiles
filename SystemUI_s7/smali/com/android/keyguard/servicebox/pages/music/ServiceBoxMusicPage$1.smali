.class Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "ServiceBoxMusicPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-wrap0(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-set0(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;Z)Z

    return-void
.end method
