.class Lcom/android/systemui/recents/model/RecentsAppListLoader$5$1;
.super Ljava/lang/Object;
.source "RecentsAppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/RecentsAppListLoader$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/model/RecentsAppListLoader$5;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsAppListLoader$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$5$1;->this$1:Lcom/android/systemui/recents/model/RecentsAppListLoader$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$5$1;->this$1:Lcom/android/systemui/recents/model/RecentsAppListLoader$5;

    iget-object v0, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$5;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->preload()V

    return-void
.end method
