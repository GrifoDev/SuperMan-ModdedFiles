.class Lcom/samsung/android/settings/qstile/SecAccountTiles$1;
.super Ljava/lang/Object;
.source "SecAccountTiles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/qstile/SecAccountTiles;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles$1;->this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles$1;->this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->-wrap0(Lcom/samsung/android/settings/qstile/SecAccountTiles;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
