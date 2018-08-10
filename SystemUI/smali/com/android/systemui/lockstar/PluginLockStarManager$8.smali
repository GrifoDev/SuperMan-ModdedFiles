.class Lcom/android/systemui/lockstar/PluginLockStarManager$8;
.super Ljava/lang/Object;
.source "PluginLockStarManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/lockstar/PluginLockStarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$8;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTagFreshDrawable()I
    .locals 1

    const v0, 0x7f0a0318

    return v0
.end method

.method public getTagIsAppColor()I
    .locals 1

    const v0, 0x7f0a0319

    return v0
.end method

.method public isGrayScale(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$8;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get0(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
