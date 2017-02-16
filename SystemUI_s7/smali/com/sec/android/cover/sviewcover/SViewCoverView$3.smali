.class Lcom/sec/android/cover/sviewcover/SViewCoverView$3;
.super Ljava/lang/Object;
.source "SViewCoverView.java"

# interfaces
.implements Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    const-string/jumbo v0, "white_cover_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->-get0(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->changeChargingTextColorIfWhiteWallpaper(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method
