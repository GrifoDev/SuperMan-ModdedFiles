.class Lcom/android/launcher2/HomeRealPreview$1;
.super Ljava/lang/Object;
.source "HomeRealPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeRealPreview;->captureMainHomeScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeRealPreview;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeRealPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeRealPreview$1;->this$0:Lcom/android/launcher2/HomeRealPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeRealPreview$1;->this$0:Lcom/android/launcher2/HomeRealPreview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeRealPreview;->captureMainHomeScreen(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
