.class Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$1;
.super Ljava/lang/Object;
.source "ServiceBoxMusicPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->-get1(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->-get3(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->-get0(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->-wrap0(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->launchMusicApp(Lcom/android/systemui/servicebox/KeyguardStatusCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->-wrap1(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->-get2(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/media/MediaMetadata;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->-wrap3(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)V

    goto :goto_0
.end method
