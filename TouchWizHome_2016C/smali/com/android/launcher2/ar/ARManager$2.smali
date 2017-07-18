.class Lcom/android/launcher2/ar/ARManager$2;
.super Ljava/lang/Object;
.source "ARManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/ar/ARManager;->onConfigurationChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ar/ARManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ar/ARManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ar/ARManager$2;->this$0:Lcom/android/launcher2/ar/ARManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/ar/ARManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currentScene EnterAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
