.class Lcom/android/systemui/tuner/TunerService$Observer;
.super Landroid/database/ContentObserver;
.source "TunerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/TunerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tuner/TunerService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/tuner/TunerService$Observer;->this$0:Lcom/android/systemui/tuner/TunerService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$Observer;->this$0:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p2}, Lcom/android/systemui/tuner/TunerService;->reloadSetting(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
