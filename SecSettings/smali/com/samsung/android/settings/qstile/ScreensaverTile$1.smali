.class Lcom/samsung/android/settings/qstile/ScreensaverTile$1;
.super Landroid/database/ContentObserver;
.source "ScreensaverTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/qstile/ScreensaverTile;->registerObserver(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/qstile/ScreensaverTile;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/qstile/ScreensaverTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile$1;->this$0:Lcom/samsung/android/settings/qstile/ScreensaverTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile$1;->this$0:Lcom/samsung/android/settings/qstile/ScreensaverTile;

    invoke-static {v0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->-wrap1(Lcom/samsung/android/settings/qstile/ScreensaverTile;)V

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile$1;->this$0:Lcom/samsung/android/settings/qstile/ScreensaverTile;

    invoke-static {v0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->-wrap0(Lcom/samsung/android/settings/qstile/ScreensaverTile;)V

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile$1;->this$0:Lcom/samsung/android/settings/qstile/ScreensaverTile;

    invoke-virtual {v0}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->semUpdateDetailView()V

    return-void
.end method
